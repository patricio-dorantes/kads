# Knowledge Administration and Documentation Standard (KADS)

KADS is a small set of rules and guides for writing technical documentation and research reports that explain themselves. It is for people and AI agents who write documentation that lives beside a project, and for the people who later have to trust it.

KADS aims to let a reader who arrives with no other context tell what a document is and what it applies to, what kind of statement each claim that matters is and on what basis it stands, and, when the document has been replaced, that it has and by what. The [design rationale](docs/foundations.md#the-objective) states the objective in full.

## The problem

KADS is designed around recurring failure modes such as these:

- A page does not say what it is for, so only people who already know can use it.
- A summary says "all tests passed" while its source says two were never run.
- A guess, repeated twice, becomes a fact.
- "Verified" appears with no trace of what was checked, against what, or when.
- An old page is found by search and followed as if it were current.
- The same thing is described in three places that have drifted apart.
- A later run overwrites the evidence an earlier conclusion rested on.
- The warning that a step destroys data comes after the step.
- Every page carries an identifier and a record, and the records stop being maintained.
- A decision is recorded, and nobody can tell why it was made.
- "We follow KADS" is claimed with no version, corpus, or exceptions, so nobody can check it.

Each of the eight propositions below answers one or more of them, and the rules beneath it make the answer precise. The [design rationale](docs/foundations.md#the-objective) maps each proposition to the failure it guards against.

## What it looks like

Before:

```text
# Backups

Backups are verified and restores work. See the wiki for details.
```

After:

```text
# Restore the database from a backup

For operators of the billing service, version 3 and later.

1. Stop the importer.
2. This step overwrites the live database and cannot be undone.
   Confirm that step 1 completed, then run: restore --from <backup-id>
3. Done when `status` reports "serving".

Verified: steps 1 to 3 executed as written against staging, version 3.2,
on 2026-09-28; `status` reported "serving". Not yet executed against
production.
```

The second version says what it is and who it is for, warns at the step that destroys data, says how to tell it worked, and says exactly what "verified" means: what ran, where, when, and what was observed. Nothing in it needs an identifier, a template, or a tool.

## The ideas

The rules follow eight propositions, from the general to the specific. Each is the heading of a part of the specification, where its reason and its clauses follow it.

1. **Knowledge is written for a reader who arrives with nothing else.** A document explains itself: what it is, what it answers, what it applies to. The answer should come before the background, and history, authorship, and contribution notes should come last.
2. **Each subject has one home.** Each independently maintained subject has one authoritative place within a stated scope; other pages may quote or summarize it with a link, and no second copy is presented as equally authoritative for the same scope. A summary or a generated page is a view of its source and says so.
3. **A claim is no stronger than its support.** Keep what was observed, inferred, assumed, and decided apart where mixing them would mislead; give each material claim an identifiable basis; make its reasoning and method reachable, or say they were not recorded; never restate a claim more firmly than its source does.
4. **Current guidance is kept apart from history.** Superseded content says so where a reader will meet it and points to what replaced it, where something has; a fact that changes over time carries its date when the date matters.
5. **Evidence is kept as it was collected.** Where a corpus keeps evidence, a later run does not overwrite an earlier one, and a change or redaction that affects interpretation is disclosed where the reader of the evidence will meet it.
6. **A procedure can be followed and its result recognized.** A procedure states its material prerequisites, its steps, and how to tell it is complete, and warns at or before the step that destroys something; a figure carries its units, scope, and source; a link leads where it says.
7. **Structure is added only where it pays.** The core applies to every document. Two optional profiles bind only a project that declares them: the tracked-record profile adds identifiers, lifecycle status, and typed relationships for records that are referenced across moves or whose history matters; the research-report profile adds what a report of findings makes discoverable, from question and method to a scoped answer.
8. **A project says what it follows.** Which version of KADS, which documents, which profiles, which departures, and who reviews the claim. KADS numbers its versions so that a project can pin one, and a project changes KADS by sending a proposal, not by editing its copy.

A reader may follow the path **Index → What → Why → How → Sources** from an entry point to an answer and its basis. It is a way of reading, not a required set of files or headings; one page may answer all five. The [design rationale](docs/foundations.md#the-objective) says what the path stands for.

## Where to go

| If you want to | Read |
|---|---|
| Write or update a page | [Authoring guide](docs/authoring-guide.md): a workflow from the reader's question to a reviewed page |
| Understand a rule quickly | [Clause guide](docs/clause-guide.md): every rule in plain words, who acts on it, and examples |
| Adopt KADS in your repository | [Adoption guide](docs/adoption-guide.md): layout, the short declaration a project makes, and instructions for AI agents |
| Review a document | [Review and conformance](docs/conformance.md): the questions a reviewer asks, each tied to a rule |
| Present research or test results | [Research guide](docs/research-guide.md); [evaluation guide](docs/evaluation-guide.md) for requirements and scorecards |
| Record a decision | [Decision guide](docs/decision-guide.md); for decisions that reach other teams or cannot be undone, [recording decisions in proportion to consequence](docs/consequence-guide.md) |
| Start from an outline | [Templates](templates/README.md): optional outlines for common documents |
| Ask for KADS to change | [Proposals](proposals/README.md): how to send a change proposal with its evidence. Rather than altering its copy of KADS, a project records a departure in its own corpus and sends a proposal |
| See finished examples | An [ordinary technical page](examples/technical-documentation/README.md) and an [illustrative research report](examples/research-report/README.md) |

Reference, for when you need it:

| Document | What it is |
|---|---|
| [Specification](docs/specification.md) | The rules themselves, in exact wording: eight propositions, from the general to the specific, each with its reason and the clauses that make it precise. Eleven clauses belong to two optional rule sets, called profiles: one for records with stable identifiers, one for research reports |
| [Knowledge model](docs/knowledge-model.md) | The ideas behind the rules: kinds of statement, when a record needs an identifier, how records relate |
| [Nomenclature](registry/nomenclature.md) and [relationships](registry/relationships.md) | The record types, identifiers, statuses, and link meanings; rules when a project declares the tracked-record profile, reference otherwise |
| [Representation guide](docs/representation-guide.md) | When to use prose, a table, a chart, or a diagram |
| [Artifact guide](docs/artifact-guide.md) | How to refer to code, configuration, datasets, and run outputs that back a claim |
| [Learning and terminology](docs/learning-and-terminology.md) | Teaching aids, and how to pin down terms that drive a score or an action |
| [Sources](docs/sources.md) | The external works KADS draws on, and which passages were actually inspected |

## What is required

Only the specification, the conformance page, and, when a project declares the tracked-record profile, the two registries state rules. Everything else is advice: adopting KADS does not mean filling in every guide or outline.

No linter, schema, generated index, or pipeline is required. The standard is meant to work through reading, writing, and review. An optional [link check](tools/check-links.sh) covers link resolution and reachability from the entry point, and nothing more.

A project that adopts KADS keeps its own documentation, evidence, and adoption note (the short declaration that it follows KADS) in its own corpus; KADS does not say where that corpus lives or in how many places. The examples here are original teaching content and describe no real project. This edition is in English. KADS does not prescribe the language of a project's documentation; a project whose terms, identifiers, or statuses differ from those of KADS records the mapping in its adoption note.

## About this repository

- **Version:** 0.9.0, released as the tag `v0.9.0`. The canonical value is in [`VERSION`](VERSION); a version is published as the tag `v` followed by the version when the maintainer releases it. KADS follows [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html), and so does any document derived from it that declares a version of its own; every derived document pins the KADS version it follows (clause 8.4), and a project keeps the version it declares a released one (clause 8.6).
- **Status:** before 1.0, so requirements can change between minor versions; the [changelog](CHANGELOG.md) marks each breaking change and gives migration steps.
- **License:** [Creative Commons Attribution 4.0 International](LICENSE). You may share and adapt the text for any purpose, including commercially, provided you give credit, link to the license, and indicate changes.
- **How to cite:** Knowledge Administration and Documentation Standard (KADS), version 0.9.0, tag `v0.9.0`. 2026. https://git.ulfratech.com/ulfra/kads-tka. Licensed CC BY 4.0.
- **KADS applied to itself:** the [adoption note](docs/adoption-note.md) of this repository, with its review record.
- **Why the rules are what they are:** the [design rationale](docs/foundations.md) gives the reason for each proposition, and the [decision records](decisions/README.md) hold what was considered, accepted, and rejected for every rule admitted or changed from version 0.6.0 on. For rules older than that, the alternatives considered were not recorded, beyond three early [architecture decision records](docs/adr/README.md); the changelog says what each version added.
- **Changing KADS:** send a [proposal](proposals/README.md), as a merge request or, without Git access, as a document by any practical channel to the maintainer, who enters it into the same process; [Contributing](CONTRIBUTING.md) says how proposals are judged and released.
