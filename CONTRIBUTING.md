# Contributing

This page is for people who want to change KADS: it says how a change is proposed, tested against the standard's own rules, versioned, and released. If you only want to use KADS, you do not need it.

Changes should make technical knowledge easier to find, understand, assess, or maintain. The standard is reviewed through its effect on readers and authors.

## Where changes come from

A change starts as a proposal with its evidence, written with the [change-proposal outline](templates/change-proposal.md) and placed in [`proposals/`](proposals/README.md). This holds for the editors as much as for projects that use KADS, and for people outside any project. A project does not edit its own copy of KADS (clause 8.6): someone working inside one project does not see why a rule exists or who else relies on it.

## Branches, tags, and the path of a change

| Where | What it holds | Who writes to it |
|---|---|---|
| Tag `v<version>` | A released version. It never changes. Projects pin a tag | The maintainer, at release |
| `master` | Released versions only; each commit on it is tagged | The maintainer, by fast-forward from the working branch |
| Working branch, `release/<next version>` | The next version in preparation, and proposals as received | The editors |
| Proposal branch, `proposal/<date>-<short-title>` | One new file under `proposals/`, nothing else | Anyone, from the repository or from a fork |

The path of a change:

1. A proposal file arrives on a proposal branch, either from the proposer or placed there by an editor for a proposal sent by another channel, and is merged into the working branch as received.
2. The editors evaluate it: the admission test below, a challenge by someone other than the proposer, and a check that it fits more than the project that sent it.
3. The editors write the disposition, with its reasons, at the top and the end of the proposal file, commit it, and make any change to the rules in separate commits on the working branch.
4. Once a proposal is accepted or declined, its file is removed from the working tree in a following commit. The changelog entry for the version lists every such proposal with its disposition, the reason in one line, and the hash of the commit that holds the full file. `proposals/` therefore shows only what is still open.
5. A proposer's response to a disposition is added to the file before it is removed; a response that arrives later reopens the file as a new proposal that cites the commit.
6. At release the working branch is fast-forwarded into `master` and tagged. The history of the working branch is never rewritten, squashed, or rebased, because the changelog cites its commits.

A proposer who disagrees with a disposition may say so. The response is kept whatever the outcome.

## KADS follows its own first two principles

Every KADS document explains itself: it opens by saying what it is, what it answers, and for whom (clause 1.1). A reader should never need another KADS document in order to understand what the one in front of them is.

KADS is not its own subject. In every document the subject comes first, and anything about KADS as a project, its history, its versions, how it was reviewed, comes last and stays short. Guides and the specification describe what is true now. What changed and why belongs in the [changelog](CHANGELOG.md) and the [decision records](decisions/README.md), not in the guidance. Do not write "added in version X" or "previously" in a guide.

## Before changing the standard

Find the canonical rule and describe the problem it causes or fails to address. Distinguish a requirement change from clarification or example repair. Prefer the smallest change that solves the problem without adding needless ceremony.

For a requirement change, consider both an ordinary documentation page and a research report. Check whether the rule demands unavailable provenance, forces duplication, confuses certainty with lifecycle, or requires tooling. Challenge counterexamples before settling the wording.

## Admission test for new rules

A proposal to add or strengthen a rule, profile, type, status, or relation answers these questions in writing. They are one test, applied the same way to every proposal.

1. **Failure.** What goes wrong for a reader without the rule? Cite one observed case, or say that the failure is anticipated only.
2. **Property.** Which protected property breaks: current guidance can be found; a statement's scope is known; a material claim has an identifiable basis; nothing is stated more firmly than its support; history is preserved?
3. **Existing text.** Which clause fails to prevent it, and why can that clause not carry the fix with one more sentence? A new clause number or profile is the last resort; a profile also adds a decision to every adoption.
4. **Layer.** What is the lowest layer that fixes it: guidance, a profile, or the common core? A core rule must make sense for a three-page repository and for a legacy one without a triage project.
5. **Detection.** How does a reviewer see a violation: by reading one page, by comparing two, by search, or by script? A rule whose violation can only be found by redoing the work is guidance.
6. **Cost.** What must an existing conformant corpus do on the day it upgrades, and what must the author of a ten-line how-to now write or decide? A SHOULD is not free: the keyword definitions in the specification ask for the reason behind each departure.
7. **Vocabulary.** For a type, status, or relation: which reader question can the existing vocabulary not answer, and in which real document did it arise?

A rule is a MUST only when a reviewer can detect its violation (question 5), its violation breaks one of the protected properties, and either an observed case exists or a reader acting without the rule could be harmed. RFC 2119, section 6, gives the same counsel: "Imperatives of the type defined in this memo must be used with care and sparingly." Otherwise it is a SHOULD or guidance.

Write each new normative sentence with one requirement. Letter the sentences of a new clause that needs more than one, as in clause 4.1, so that each can be cited. Existing clauses that hold several requirements are lettered since 0.9.0.

A proposal that is rejected or deferred is recorded with its reason and the condition that would reopen it. The records of the 2026-10-03 standards evaluation are in [`decisions/standards/`](decisions/standards/README.md).

## What belongs in the specification

Every sentence of the specification answers the question "why is this here?" with at least one of five functions: it determines what a conforming corpus or the editors must or must not do (conformance); removing it could cause a materially wrong reading of a requirement (interpretation); it is needed to apply a requirement correctly (application); it is needed to reach the authoritative rule or definition (navigation); or it preserves a constraint needed to change KADS safely (maintenance). Truth is not sufficient. Rationale, history, examples, provenance, and edge cases go to the knowledge model, the clause guide, a registry, a guide, or a decision record, and the specification links to them.

A permission sentence of the form "X is optional" or "a second Y is not required" stays only where a reviewer could plausibly demand X or Y under the clause; otherwise it goes to the clause guide.

**Borrowed mechanisms.** Where KADS takes a mechanism from another standard or convention, such as the requirement keywords of RFC 2119, Semantic Versioning, or decision records, the specification states which property it adopts and adopts nothing else: the required property, not the surrounding ontology. The sources page records what was inspected. An attribution stays in the specification only when it helps a reader interpret or maintain a rule; otherwise it lives in the decision record that made the choice.

## Keeping the standard small

**Basis.** A rule admitted on an anticipated failure only, with no observed case, is marked so in the record of the evaluation that admitted it, with the condition that will trigger its review. "Observed" means observed in KADS's own history or in a corpus applying KADS. A public incident elsewhere is precedent, not observation. KADS has no "experimental" status for rules: clause 8.3 could give it no meaning, and the basis mark does the same work.

**Review before growth.** Before each minor release that adds or strengthens a rule, review every rule whose reopening condition has occurred and every rule still marked anticipated only, asking: would we add this today? Retiring or simplifying a rule is a valid outcome. The evaluation record for the release names at least one retirement or simplification candidate and says why it was or was not taken. A release that adds a normative requirement names what it retires, or says why nothing could be.

**Accounting.** Each changelog entry carries a table of what the version added and removed: active clauses, lettered requirements, each keyword, defined terms, record types, relations, outlines, guides, and lines of the adoption-note outline. The counts come from these commands, so that anyone can reproduce them:

```text
grep -cE '^\*\*[0-9]+(\.[0-9]+)*\*\*' docs/specification.md      clause identifiers
grep -cE '^\*\*[0-9.]+\*\* Retired' docs/specification.md        of which retired (always 0 from 0.8.0; kept to reproduce earlier counts)
grep -oE '\([a-z]\) [A-Z]' docs/specification.md | wc -l          lettered items, including retired
grep -oE 'MUST NOT|SHOULD NOT|MUST|SHOULD|MAY' docs/specification.md | sort | uniq -c
sed -n '/^## Terms/,/^## About/p' docs/specification.md | grep -c '^- \*\*'   defined terms
grep -c '^| `' registry/relationships.md                         relations
grep -oE '\([a-z]\) Retired' docs/specification.md | wc -l        lettered items retired
grep -oE 'MUST NOT|SHOULD NOT|MUST|SHOULD|MAY' docs/conformance.md | sort | uniq -c
grep -cE '^\| `[A-Z]+` ' registry/nomenclature.md                record types
ls templates/*.md | grep -vc README                              outlines
ls docs/*guide.md | wc -l                                        guides
sed -n '/^Adoption note version/,/^Review record/p' docs/adoption-guide.md | wc -l
```

Keyword counts include the definitional list in the specification's preface and understate load where one keyword governs a list, so the table also counts lettered items. A mature KADS is allowed to become smaller.

## Review a change

1. Read the revised rule in context and check its normative meaning.
2. Check affected registries, guides, templates, and examples for consistency.
3. Follow changed links and confirm the reader can reach the relevant material.
4. Preserve stable IDs and the meaning of historical evidence.
5. Update the changelog with compatibility and migration implications.
6. Describe the review performed and unresolved limitations.

No linter or CI check is required. The optional script `tools/check-links.sh` verifies the mechanical half of clause 6.3 (internal links and anchors resolve) and, with `--orphans`, reports files unreachable from the entry point (clause 2.3), and nothing more; run it before a release if it saves you clicking. Do not add tooling as a substitute for resolving an ambiguous rule. Shared templates should remain useful starting points, with placeholders clearly marked and optional material removable.

## Versioning and releases

KADS follows [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html) as required by specification clause 8.3. The file `VERSION` is the only canonical version; the README, the specification (first sentence and its closing section), and the adoption note quote it and must be updated with it.

| Change | Bump while 0.y.z | Bump from 1.0.0 |
|---|---|---|
| A clause is strengthened or changes meaning; a status or relation changes meaning; a conformant corpus could become nonconformant | Minor, marked **breaking** in the changelog | Major |
| A clause or lettered requirement is retired or relaxed, so that no conformant corpus is affected | Minor | Minor |
| New clause, vocabulary entry, guide, template, or optional aid | Minor | Minor |
| Clarification, correction, link repair, or wording change with no change in normative meaning | Patch | Patch |

Clause numbers follow the structure of the specification, from the general to the specific, and may change between versions (clause 8.3 g). A version that renumbers says so in its changelog and maps every old number to its new one. A removed clause is removed; nothing marks its place, because a citation names the version it refers to.

Release steps:

1. Update `VERSION`, the closing sections of the README and specification, the first sentence of the specification, `docs/adoption-note.md`, the agent snippet in the adoption guide, and any example that names the version. Between releases the closing sections of the specification and the README say that the copy is a draft of its version and not yet released, and the README names the latest release; it stays so until the tag exists, which is what releases it (clause 8.4 b applied to KADS's own documents).
2. Add a changelog entry in the [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) spirit: what changed, which clauses, whether anything is breaking, the disposition of every proposal the version handled, the complexity table described under Keeping the standard small, and migration steps.
3. Update the review record in `docs/adoption-note.md`.
4. Commit, then tag the commit `v<version>` and push the tag with the branch. A pushed tag is treated as permanent (clause 8.3) and is the maintainer's act of release, so check `VERSION` and the changelog before pushing.

Pre-release identifiers such as `-draft` are not used. The 0.y.z range already signals that requirements may change; the README's Status row says "before 1.0" for readers who do not know that convention, and its Version row says whether the copy is released.

## Compatibility

Before 1.0, requirements can change, but incompatible changes are marked breaking in the changelog and bump the minor version. Consuming projects pin a tag and choose when to adopt changes. Local policies belong in those projects; they should not require forks of this standard. This repository is licensed under CC BY 4.0; contributions are accepted under the same license.

## Review route

Propose changes to this repository's maintainer through the hosting project's normal review process. The maintainers review requirements when an adoption exposes ambiguity, an example no longer matches the rules, or a draft revision is prepared.

## Boundary for practical evaluations

Use practical cases to challenge the standard and assess its usefulness. Keep only generalized findings, reasoning, and improvements to KADS. Do not include evaluated projects' documents, artifacts, identities, paths, commit references, or review dossiers. Create independent, clearly labeled fictional examples when teaching needs a concrete case; do not merely rename copied operational material. Scholarly citations supporting a concept remain distinct from project records.
