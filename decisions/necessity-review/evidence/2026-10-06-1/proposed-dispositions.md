# 0.9.0 necessity and placement review: proposed dispositions (DRAFT, to be challenged)

Baseline: KADS 0.8.0, docs/specification.md at tag v0.8.0. Admission functions a content unit must serve to stay in the specification: Conformance, Interpretation, Application, Navigation, Maintenance. Actions: keep / rewrite / move / merge / split / weaken / strengthen / remove.

## Preface

| Unit | Invariant or function | Proposed | Reason |
|---|---|---|---|
| Opening paragraph (what this document is; version) | Navigation (1.1 applied to itself) | keep, trim | Needed to apply 1.1 to KADS itself |
| "How to read this document": structure explanation | Interpretation of numbering | rewrite: state KADS's own semantics only: a deeper number is a more specific statement under the one above; propositions are not themselves requirements; profiles 7.1/7.2 optional | Must be understood without external reading |
| Tractatus attribution, "cited from memory" | None of the five functions | remove from the specification; record in decision J-034 with the verified citation (Ogden footnote: numbers indicate "logical importance" and n.1, n.2 "are comments on proposition n"). KADS adopts only the comment/elaboration relation | Attribution does not aid interpretation; "from memory" is false now |
| Sentence from old 1.1 (what KADS governs; does not prescribe layout, method, platform, tooling) | Interpretation (scope boundary) | keep | Prevents reading rules as tooling or method requirements |
| Sentence from old 3.6.3 (KADS does not replace workflow or grant authority) | Interpretation | keep | Prevents misuse of KADS as authority |
| Clause format example | Application | keep | Shows what a number, name, role, keyword are |
| Keywords paragraph (RFC 2119/8174; only uppercase; reason belongs with a SHOULD departure) | Interpretation | keep; state what is adopted: the five keywords' meanings and the uppercase rule only; KADS adopts nothing else from BCP 14 | "Adopt the property, not the ontology" |
| Roles paragraph | Interpretation | keep | Needed to read "(author)" |
| Which documents are rules | Navigation/Conformance | keep | Determines what is normative |
| Citing a clause (version named; numbers can change; changelog maps) | Interpretation | keep short; the normative part is 8.2/8.3(g) | |

## Proposition headings and "Why" sentences

| Unit | Proposed | Reason |
|---|---|---|
| Eight proposition headings | keep | They are the structure; not requirements |
| "Why" sentences | keep, each one sentence; remove links into the knowledge model from the Why sentences? | Challenge: Why sentences are rationale (explanatory) and the admission test says rationale belongs outside unless it aids interpretation. Proposal: keep them because they set the scope of what the clauses beneath protect (interpretation), but cap at two sentences and move any further explanation to the knowledge model |

## Clauses

| Clause | Invariant protected | Proposed | Detail |
|---|---|---|---|
| 1.1 a-c | A document can be understood on arrival; subject before self-reference; shared scope inherited | keep | (c) stays: without it (a) is over-applied |
| 1.2 | Purpose and scope discoverable; entry point distinguishes current from history | keep | |
| 1.3 | Answer before background; path to basis reachable | rewrite: keep first two sentences; remove "No fixed sequence or number of files is required" (interpretation already covered by the Evidence path term) and move "Learning-oriented content SHOULD expose prerequisites and examples" to the authoring/learning guide | A tutorial without prerequisites is a weaker tutorial, not a nonconformant corpus; SHOULD adds burden without protecting a material property |
| 1.4 | Consequential terms have one discoverable meaning per scope | rewrite: keep MUST, MUST NOT, MAY sentences; remove "A separate glossary is optional" (explanation) | Explanation to clause guide |
| 2.1 | One canonical home per independently maintained subject; copies not presented as authoritative | keep | |
| 2.2 | Derived views faithful: qualifications, no firmer than source, reviewed or dated | keep; consider lettering a-d | Four requirements under one number; letter for citation |
| 2.3 | A table or diagram can be canonical if understandable | keep | |
| 2.4 | Maintained documents reachable from the entry point | keep; the sentence about evidence needing no link is interpretation, keep | |
| 2.5 | Generated views identify their sources; edit boundary clear | split: move the third sentence (historical findings vs current defaults) to proposition 4 as new clause 4.4 "Historical method" | It is about history, not generation |
| 2.6 | Copied volatile figures stay fresh | rewrite: keep the two SHOULDs; remove "This does not make tooling a condition of conformance; a summary that cannot be checked mechanically remains subject to 2.2" (explanation; the preface already says tooling is not required) | Explanation to clause guide |
| 3.1 | Material claims have an identifiable basis; citations precise; uninspected sources flagged | keep; letter a-c | Three requirements |
| 3.2 | Kinds of statement distinguishable; unsupported marked; contradictions disclosed | keep; letter a-c | |
| 3.3 | Nothing invented; unknowns marked | keep; "Editing a document does not establish revalidation" is interpretation supporting 3.4: keep as is or move to 3.4? Proposed: move the sentence into 3.4 | Same subject as 3.4 |
| 3.4 | A verification claim is checkable | keep | |
| 3.5 | Agent-drafted content has an accountable author; automated review named | keep; "Generation does not establish verification" keep (interpretation) | |
| 3.6 | Artifacts behind claims are locatable and bounded; intent not presented as observed state | keep; third sentence (native identities MAY be retained; catalogs not required) is interpretation preventing over-application: keep | |
| 4.1 a-d | Superseded content marked where met; points to replacement; absence proves nothing; legacy handled at entry point | keep | |
| 4.2 | Replaced findings preserve prior meaning and explain | keep; "separate records are not mandatory for every edit" interpretation keep | |
| 4.3 | Dated facts; review route exists | split: keep the dated-facts sentence as 4.3; move the review-route sentence (maintainer) to proposition 8 as part of 8.1's declared items (merge) | Review route is what a project declares (8), not a property of a fact |
| new 4.4 | Historical findings distinguish method and conditions used from current defaults | move from 2.5 | |
| 5.1 | Evidence kept as collected; alterations disclosed; removals leave a gap description | keep | |
| 5.2 | Runs cannot overwrite one another; identifier unique | rewrite: keep first two sentences (MUST, MUST NOT); remove "The identifier scheme SHOULD be chosen before the first run is stored" (means; artifact guide has it) and "A storage label is an identifier, not a timestamp; actual collection times are recorded separately" (interpretation; move to artifact guide) | Outcome, not means |
| 5.3 | Redaction recorded where the reader meets the evidence | keep; the adoption-note SHOULD: keep (observed case) or move to 8.1 list? Proposed: keep | |
| 6.1 | Procedures followable; research claims state limits; quantities carry units/scope/source | split: 6.1 keeps procedures only; quantities become new clause 3.7 "Quantities" under proposition 3; the research-claims sentence is removed as duplicate of 3.2 (limitations disclosed) and 7.2.1 (limitations discoverable) | Three unrelated invariants |
| 6.2 a-b | Irreversible effect stated at the step; recovery given | keep | |
| 6.3 | Links resolve; external references identifiable; restrictions stated | keep | |
| 7.1 heading text | When the profile applies | keep | |
| 7.1.1 | Record fields present once | keep; "Front matter is optional" keep (interpretation) | |
| 7.1.2 | IDs unique, stable, never reassigned; cross-namespace references resolve | keep | |
| 7.1.3 | Relationships have meaning and target | keep; "a second metadata graph is not required" keep | |
| 7.1.4 | Supersession navigable both ways | rewrite: keep the two MUSTs and "On the superseded record this link is the statement required by 4.1"; remove the explanation of inverse reading and "deliberate two-way navigation supports readers" (registry and clause guide have it) | Explanation out |
| 7.1.5 | Status is lifecycle; assessment separate; accepted decision has authority and reasons; acceptance not implementation | rewrite: letter a-e; remove the ADR identifier sentence (nomenclature has it; 7.1.2 permits local mapping) | |
| 7.2 heading text | When the profile applies | keep | |
| 7.2.1 | Report contents discoverable | keep | |
| 7.2.2 | Reproducibility described; barriers stated | keep; last sentence ("source review need not invent an experiment; unavailable source not verified by citation") is interpretation: keep the first half, remove the second half (3.1/3.3 cover) | |
| 7.2.3 | Execution, behavior, assessment distinct; post hoc criteria stated | keep | |
| 7.2.4 | Scorecards show scale, denominator, exclusions; cases distinguished | keep | |
| 7.2.5 | Inherited vs observed distinguished; execution is not satisfaction | keep | |
| 7.2.6 | Negative results scoped; revised with attribution; no-failure scoped | rewrite: keep (a) scoping and the no-failure sentence; the "when a different method later yields a different result ... revised under 4.2" sentence duplicates 4.2 except for "attributed to the method": keep as one short sentence | |
| 8.1 | Conformance claim declares version, corpus, profiles, exceptions (+ review route, merged from 4.3) | rewrite to add review route; "Tools MAY assist later; tool output cannot establish soundness" keep (interpretation) | |
| 8.2 | Local rules identified; citations name version and requirement | keep | |
| 8.3 a-g | KADS versioned under SemVer; breaking defined; what increments what; renumbering mapped | rewrite: remove repository mechanics from (a) and (b) ("canonical version is the content of VERSION", "tagged as v<version>", "described in the changelog") to CONTRIBUTING; keep: SemVer adopted for the version number only; a released version is identifiable and immutable; (c)-(g) | Implementation detail out of the standard |
| 8.4 | Derived documents versioned under SemVer and pinned to a KADS version | UNRESOLVED for the maintainer: keep as the maintainer decided (2026-10-02), or weaken to: MUST pin the KADS version; MUST record a change of pin; MAY carry its own version, and if it does, SemVer. Proposal: present both; default keep | |
| 8.5 | Review of a claim recorded | keep | |
| 8.6 a-c | Copy of KADS not altered; proposals sent; sending is not altering | rewrite (c): replace the `proposals/` path with "the route that KADS names for proposals"; the path goes to CONTRIBUTING/proposals page | Path is an implementation detail |

## Terms

| Term | Proposed |
|---|---|
| Subject | keep the definition and the separability test; move nesting, document-as-subject, and the "whether others must be reviewed" sentence to the clause guide / knowledge model |
| Agent-drafted | keep the test (produced or changed meaning of material content, incl. selection/omission; meaning-preserving transformations exempt; doubt discloses); move the "which tool" sentence and examples to the clause guide |
| Author, Maintainer, Reviewer, Author of record | keep |
| Corpus, Entry point, Scope, Canonical home, Knowledge object, Tracked record, Profile, Adoption note, Namespace, Evidence, Artifact, Derived view, Material claim, Self-explanatory | keep; trim "Material claim" to the definition (the sentence about adjective use stays, it prevents misreading) |
| Evidence path | challenge: used once (1.3). Remove the term and the mention in 1.3? Proposal: keep in 1.3 as plain words ("the path from answer to context, reasoning, method, and sources") and drop the defined term |
| Architecture decision record | keep (used in 7.1.5? after removing the ADR sentence it is unused in the spec) -> remove from Terms; nomenclature/decision guide define it |
| "Canonicality is a maintenance responsibility..." paragraph after terms | move to knowledge model |

## Borrowed mechanisms, stated adoption

- BCP 14: adopts the five keywords and the uppercase rule; not RFC document structure, not "interoperation" scope.
- SemVer 2.0.0 (inspected 2026-10-06): adopts the MAJOR.MINOR.PATCH meaning and the 0.y.z instability rule; KADS defines its own "breaking" (8.3 c) in place of SemVer's "public API"; does not adopt pre-release or build metadata.
- ADR (Nygard): adopts the idea of a decision record kept when superseded; not his section list.
- Decimal numbering (Tractatus, Ogden footnote inspected 2026-10-06): adopts "n.m elaborates n"; does not adopt "logical importance".
- Editorial rule proposed for CONTRIBUTING: "Adopt the required property, not the surrounding ontology; state what is adopted and what is not."

## Owed review (anticipated-only rules)
4.1, 6.2, 3.5 (automated review), 7.1.5 reasons, exception dates: proposal keep all; still no observed case except 3.5 and 2.4 (observed in KADS's own history). ADR-001 to ADR-003: unresolved, maintainer ratification.
