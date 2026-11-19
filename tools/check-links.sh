#!/usr/bin/env bash
# Optional aid for KADS clause 3.5.1 ("Internal links MUST resolve") and,
# with --orphans, clause 3.5.5 (documents reachable from the entry point).
# Non-normative: passing this check does not establish conformance.
# Usage: tools/check-links.sh [root]
#        tools/check-links.sh --orphans [entry-point] [root]
set -u
mode=links
if [ "${1:-}" = "--orphans" ]; then mode=orphans; shift; entry="${1:-README.md}"; [ $# -gt 0 ] && shift; fi
root="${1:-.}"
links_of() { grep -oE '\]\([^)]+\)' -- "$1" | sed -E 's/^\]\(//; s/\)$//' | grep -v '^[a-z]*://'; }
all_md() { find "$root" -name '*.md' -not -path '*/.git/*' -not -path '*/.remember/*' -not -path '*/workbench/*' -print0; }

if [ "$mode" = orphans ]; then
  declare -A seen=()
  queue=("$(realpath -m -- "$root/$entry")")
  while [ ${#queue[@]} -gt 0 ]; do
    f="${queue[0]}"; queue=("${queue[@]:1}")
    [ -n "${seen[$f]:-}" ] && continue
    seen[$f]=1
    [ -f "$f" ] || continue
    case "$f" in *.md) ;; *) continue ;; esac
    dir=$(dirname -- "$f")
    while IFS= read -r link; do
      target="${link%%#*}"
      [ -z "$target" ] && continue
      queue+=("$(realpath -m -- "$dir/$target")")
    done < <(links_of "$f")
  done
  status=0
  while IFS= read -r -d '' f; do
    abs=$(realpath -m -- "$f")
    if [ -z "${seen[$abs]:-}" ]; then echo "ORPHAN  $f"; status=1; fi
  done < <(all_md)
  [ $status -eq 0 ] && echo "Every Markdown file is reachable from $entry."
  exit $status
fi

status=0
while IFS= read -r -d '' f; do
  dir=$(dirname -- "$f")
  while IFS= read -r link; do
    target="${link%%#*}"; anchor="${link#*#}"
    [ "$anchor" = "$link" ] && anchor=""
    if [ -n "$target" ] && [ ! -e "$dir/$target" ]; then
      echo "BROKEN  $f -> $link"; status=1; continue
    fi
    if [ -n "$anchor" ]; then
      page="$f"; [ -n "$target" ] && page="$dir/$target"
      slug=$(grep -E '^#+ ' -- "$page" | sed -E 's/^#+ //; s/[*`]//g' \
        | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9 _-]//g; s/ /-/g')
      if ! printf '%s\n' "$slug" | grep -qx -- "$anchor"; then
        echo "ANCHOR  $f -> $link"; status=1
      fi
    fi
  done < <(links_of "$f")
done < <(all_md)
[ $status -eq 0 ] && echo "All internal links and anchors resolve."
exit $status
