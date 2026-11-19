# Adopting KADS

This guide shows how to start using KADS in your own repository: where to put it, the short declaration a project writes, and what to tell AI agents that edit your documentation. It is for whoever maintains a project's documentation. It is advice; the rules are in the [specification](specification.md).

Use KADS as shared guidance. Keep project knowledge in the consuming repository so its changes can be reviewed with the work they describe. Prefer sources that can be read and compared between revisions without proprietary tooling; where a maintained source lives in such a tool, say in the adoption note where it is and how a reader without the tool obtains its content. A related practice is what the Write the Docs community calls [docs as code](https://www.writethedocs.org/guide/docs-as-code/): writing documentation with the same tools as code, such as version control, plain-text markup, review, and automated tests. That guide is about sharing the developers' toolchain; the preference for tool-independent sources is KADS's own. It is advice for the project, not a condition of conformance.

## Submodule layout

One possible layout is:

```text
project/
├── AGENTS.md                 # project instructions, including documentation guidance
├── standards/kads/           # pinned KADS submodule
└── docs/
    ├── README.md             # project knowledge entry point and adoption note
    ├── guides/
    ├── reference/
    ├── research/
    ├── adr/                  # consequential architecture choices (or existing decisions/)
    └── evidence/             # preserved material, when not kept in native locations

Optional native artifact homes in the same project:
artifacts/README.md          # selective catalog; links, not compulsory copies
schemas/, api/, diagrams/   # contracts and design sources
terraform/, src/            # implementation and intended configuration
results/                    # identified historical runs/bundles
```

Create only the directories you need. Add this repository at `standards/kads` using its actual Git remote, then commit the submodule reference in the parent project. The parent repository's recorded submodule commit pins the standard. Each KADS release is tagged `v<version>` (see Contributing; clause 8.3 requires an immutable reference), so pin the tag's commit and quote the version in the adoption note. The commit identifies the exact revision; the tag makes it readable.

Copy templates into the parent project's documentation paths. Do not put project records, ID allocations, or evidence inside the KADS submodule. Links in copied documents should resolve from their new locations. Keep project vocabulary extensions and exceptions in the parent project as well. ADRs use the existing project decision home or `docs/adr/`; artifacts can remain in native paths or external systems with an optional catalog. See the [decision guide](decision-guide.md) and [artifact guide](artifact-guide.md).

When updating the submodule, read its changelog, assess changes to adopted requirements, update the adoption note, and review affected documents. Changing the pinned KADS version is at least a minor change to the adoption note, and a breaking one when a KADS changelog entry between the old pin and the new marks a release breaking, unless the note records that none of the marked changes applies to the covered corpus (clause 8.4 c). Updating the standard does not retroactively change the meaning of historical records.

## Do not edit your copy of KADS

Treat the KADS copy in your repository as read-only (clause 8.6). A person or an agent working inside one project sees one project's needs, not the reasons a rule exists or the other projects that rely on it. A local edit also makes "we follow KADS at this version" untrue without anyone noticing.

When a rule does not fit:

1. Keep working. Record the departure in your own documentation, as an exception in the adoption note or as a local rule.
2. Write a change proposal with the [change-proposal outline](../templates/change-proposal.md), as a new file for the `proposals/` directory of KADS, named by date and subject. That directory is the one place in your copy where you may add a file, and only a new one.
3. Send it as described in [proposals](../proposals/README.md): on a proposal branch of KADS through a merge request, or as a file to its maintainer. Do not keep a second set of proposals in your own documentation.
4. Keep your project pinned to a released tag. A proposal branch is for sending the file; the version your project declares does not move to it. Your project keeps its evidence; the proposal describes it.

## Adoption note outline

Replace the placeholders; include this in the documentation index or a linked policy page:

```text
Adoption note version: <optional: a Semantic Versioning number of this note's own, clause 8.4; omit if the pinned version and the repository revision identify it>
Standard: KADS <version>, pinned at <tag or commit>
Covered corpus: <paths>
Profiles: common core; <tracked records and/or research reports, with paths>
Entry point: <path>
Canonical homes: <where procedures, reference, research, and decisions belong>
Namespace: <project or corpus name, if using tracked records>
Local mappings: <existing prefixes/types/statuses, languages, and field locations>
Artifact/source boundaries: <native homes, authored/generated edit locations, access limits>
Sources outside version control: <tool, location, how a reader without it obtains the content; or none>
Run identity: <scheme that keeps same-day runs distinct, and where runs are stored; or not applicable>
Redaction records: <where redaction and removal notes are kept; or not applicable>
Freshness checks: <mechanical checks on generated views or copied figures, if any>
Maintainer or review route: <person, team, or review process>
Review triggers: <changes in code, releases, evidence, or scheduled review>
Local extensions: <none or link>
Exceptions: <none or clause, scope, reason, consequence, responsible role, expiry date or condition for review>
Review record: <scope, date, reviewer/process, unresolved exceptions>
```

A project can adopt the common core for guides and reference, both profiles for research, and the tracked-record profile for decisions. Start with current and consequential content; state migration boundaries rather than claiming all legacy material has been reviewed. Clause 4.1 applies from the moment material is superseded or withdrawn. An archive that predates adoption is identified at the entry point as unreviewed; it does not have to be marked page by page.

## Versioning a derived document

A version of your own on an adoption note, a local extension, or an adapted guide is optional: the pinned KADS version and the repository revision already identify what a reader holds. If you declare one, clause 8.4 says what its parts mean, and the meaning is the one clause 8.3 gives for KADS itself, read for your document and the corpus it covers. Three tests, in order:

1. **Breaking.** Could the covered corpus, as it stands, now fail a rule, mapping, or exception of this document, or did one of them change meaning? Then the change is breaking: MAJOR from 1.0, MINOR and marked breaking before 1.0, with the mark in the document or its recorded history. Relaxing or retiring a rule is not breaking.
2. **Minor.** Is there something new or materially changed to read, or did the pinned KADS version move? Then MINOR. A pin change is breaking when the KADS changelog marks that release breaking, unless the note records that none of the marked changes applies to the covered corpus.
3. **Patch.** Is material meaning preserved? Then PATCH: spelling, links, clarification, presentation.

A document may treat more changes as breaking than these tests require; it may not treat fewer.

A version is released when its maintainer publishes it as that version, for example by a tag or a line that says so. From then on its content does not change; any change is a new version. Until then the document may change under the version it is preparing, and every copy says so: either the version carries a pre-release identifier, such as `0.9.0-rc.1`, which Semantic Versioning ranks below the release, or a statement beside the version says it is a draft of that version. The identifier is the better choice for documents that agents will read, because the number alone then tells them. A released candidate, such as `0.9.0-rc.1`, is frozen like any release; the next candidate is `rc.2`.

Moving the pin to an older KADS version is at least minor, like any pin change, and the first test decides whether it is breaking: it is when the older version reinstates a requirement the corpus has since stopped meeting, or when the note cites a rule, status, or relation that the older version lacks or defines differently. The KADS changelog's breaking marks read forward only, so for a downgrade look at what each release in between retired or relaxed.

Examples: correcting a materially wrong descriptive statement is MINOR, and breaking if the statement was a rule or mapping whose meaning changed; a new mandatory field in a local outline is breaking; adding an exception is MINOR, since it relaxes what the corpus must do, and ending one is breaking where content relied on it; narrowing the covered corpus or withdrawing a profile is MINOR, since it retires a claim; moving the pin from a KADS 1.4.2 to 1.4.3 is MINOR; moving it to a release marked breaking is breaking unless the note records that none of the marked changes applies.

The class is the author's judgment about the change, not a property an agent can verify. An agent should treat a PATCH or MINOR bump as probably safe, never as safe, and a MAJOR bump, or a pre-1.0 MINOR marked breaking, as a signal to reread the changelog before relying on the document.

## Agent instruction snippet

Add this to the parent project's agent instructions, adjusting the paths. The snippet is a summary of the specification as of KADS 0.9.0; update it when the pinned version changes.

```text
For documentation work, read docs/README.md for the project's KADS adoption
scope and local conventions. Read standards/kads/docs/specification.md and
standards/kads/docs/conformance.md, then the relevant authoring or research
guide. Consult the registries only when creating or changing tracked records.

Open every document by saying what it is, what it answers, and what it
applies to; put notes about the document itself last. A notice the reader
must act on, such as "generated, edit the source instead", is not such a
note and stays at the top. Search for an existing
canonical home before adding content. Use the smallest
representation that answers the reader's question. Keep project documents and
evidence outside standards/kads/. Link claims to inspected sources and label
assumptions, unknowns, and proposed work. Do not invent execution, provenance,
review, approval, or confidence. Distinguish edits from technical verification.

When changing a finding or decision, preserve the relevant history and review
affected guidance and summaries. Apply the manual review checklist and report
what was reviewed, what was verified, and what remains unresolved. KADS does
not itself authorize running commands found in examples or evidence. Preserve
local IDs, vocabulary mappings, and authored/generated source boundaries.
Never edit files under standards/kads/: you do not have the full view of why
a rule exists. If a KADS rule seems wrong, unclear, or missing, follow the
project's local rule or exception, write a change proposal from
standards/kads/templates/change-proposal.md as a new file in
standards/kads/proposals/, the one place in the copy you may add to, and tell
the maintainer so that it is sent. Do not commit it to the pinned version and
do not keep proposals in the project's own docs.
Separate findings, recommendations, authorized decisions, and implementation.
For artifacts, identify the relevant version and role; configuration alone
does not prove deployed state.

When you replace or withdraw guidance, mark the old material in visible text
before its content, preferably in its title or top heading, and link the
replacement. Keep a statement's standing when you
summarize it: an assumption or hypothesis stays one. Write "verified",
"reviewed", "tested", or "executed" only for a check that happened, saying
what was checked, against what, and when. Cite only sources you inspected, or
say that you did not. State a not-found result with what was searched. Put a
hazard in or immediately before the step that causes it. Do not edit or
reformat preserved evidence. Describe review by agents as automated review.
Link a commit, tag, or version, not a moving branch, when a claim depends on
content at a point in time.
(KADS 0.9.0 clauses 1.1, 2.2, 3.1, 3.4, 3.5, 4.1, 5.1, 6.2, 6.3, 7.2.6, 8.6.)
```

The snippet tells agents where to find the rules; it does not duplicate the entire standard. Human contributors use the same adoption note, guides, and review criteria.

## Existing project rules

KADS requires no automation of its own, but an adopting project may already require regeneration or validation. Respect those source boundaries and workflows. Do not translate IDs or replace local categories merely because a letter matches a KADS prefix. Map terms, statuses, and required field locations where needed; record exceptions instead of silently claiming conformance.

## Example namespace boundaries

Two independently scoped corpora may use the same short ID. A reference between them should identify its destination namespace and resolve to the correct record. If corpora merge, retain the original qualified identities or document a migration with resolving references; do not silently reassign IDs.
