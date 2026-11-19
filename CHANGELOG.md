# Changelog

Notable changes to KADS and their adoption implications. Versions follow [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html) (clause 8.3).

## 0.9.0  -  2026-10-06

Minor bump under clause 8.3. This version is a necessity and placement review of the specification, recorded in [J-034](decisions/necessity-review/README.md): every unit had to answer "why is this here?". No requirement on adopters was strengthened; two were relaxed (7.2.1, 8.4), and the conformance page no longer requires an adoption note to carry a version of its own; none of this is breaking under 8.3 (c). Three things are now explicit for a derived document that declares a version: a released version does not identify changed content (8.4 b, a MUST NOT that Semantic Versioning already required); a copy that carries an unreleased version says so (8.4 b, one new conditional MUST, with an observed case in J-035); and below 1.0 the regime of 8.3 (d) applies in place of Semantic Versioning's 0.y.z rule. One requirement was added on the editors of KADS (8.3 b). Two clauses were renumbered, two merged, and one removed; the map is below.

| | 0.8.0 | 0.9.0 | Added | Removed |
|---|---|---|---|---|
| Active clauses | 42 | 39 | 0 | 3 (2.3 merged into 2.1 c; 2.6 moved to guidance; 5.3 merged into 5.1 b) |
| Lettered requirements | 19 | 80 | 61 (59 existing sentences lettered so that each can be cited; 8.4 c, the pin rule as its own item; 3.1 d) | 0 |
| MUST | 69 | 65 | 3 (8.3 b, immutable reference, on the editors; 4.3 b, the historical-method sentence from 2.5 as its own item; 8.4 b, an unreleased version is marked) | 7 (restatements and duplicates, and 7.2.1's "why the answer matters"; see J-034) |
| MUST NOT | 11 | 12 | 2 (8.3 b, on the editors; 8.4 b, a released version does not identify changed content) | 1 (7.2.5 execution as satisfaction; 7.2.3 a covers it) |
| MUST NOT in conformance | 1 | 1 | 0 | 0 |
| SHOULD | 24 | 18 | 1 (3.1 d, restored from 0.8.0's 1.3) | 7 (1.3 evidence path, restored as 3.1 d, and learning content; 2.6 both; 5.2 scheme chosen first; 5.3 adoption-note location; 6.3 historical citations) |
| SHOULD NOT | 2 | 2 | 0 | 0 |
| MAY | 13 | 9 | 0 | 4 (1.4 translations; 3.6 native identities; 7.1.5 ADR identifier; 8.1 tools may assist) |
| MUST in conformance | 6 | 6 | 0 | 0 |
| Defined terms | 22 | 18 | 0 | 4 (knowledge object, evidence path, architecture decision record, self-explanatory) |
| Record types | 6 | 6 | 0 | 0 |
| Relations | 11 | 11 | 0 | 0 |
| Outlines | 11 | 11 | 0 | 0 |
| Guides | 9 | 9 | 0 | 0 |
| Adoption-note outline lines | 18 | 18 | 0 | 0 |
| Specification words | 4807 | 4083 | | |

### Restored

- Clause 3.1 (d): where a material claim rests on reasoning or a method the document does not contain, the document SHOULD say where it is recorded, or that it is not. 0.8.0 carried this in clause 1.3 as the evidence-path sentence; the necessity review removed it as a duplicate, and a foundational review found conforming corpora in which a reader could not reach the reasoning or method behind a material answer. Restoration of a lost guarantee at its previous strength; not breaking. Recorded in [J-036](decisions/foundation-review/README.md).
- The design rationale states KADS's objective, the two concerns the rules serve, and a table from each proposition to the failure it guards against. The README is reconciled to its sources: six statements that read stronger than their clauses now read as the clauses do, and the README names the latest release instead of a tag that does not exist.

### Renumbered

| 0.8.0 | 0.9.0 |
|---|---|
| 2.3 Canonical tables and diagrams | 2.1 (c) |
| 2.4 Reachability | 2.3 |
| 2.5 Generated views | 2.4; its historical-method sentence is now in 4.3 |
| 2.6 Freshness of copied figures | removed; advice in the artifact guide |
| 4.3 Dated facts and a review route | 4.3 Dated facts; the review route is now 8.1 (e) |
| 5.3 Where a redaction is recorded | 5.1 (b) |
| 8.6 (c) | merged into 8.6 (a) |
| all others | unchanged number; most are now lettered |

### Changed

- The preface explains KADS's numbering in its own words. The attribution to the Tractatus left the specification; the inspected citation and what KADS adopts from it are in J-034 and on the sources page.
- The keywords paragraph says what KADS adopts from RFC 2119 and RFC 8174 and that it adopts nothing else. Clause 8.3 (a) says the same for Semantic Versioning.
- Clause 8.3 states the property, that a released version is identifiable by an immutable reference and never changes, in place of the tag and VERSION file mechanics, which are in Contributing.
- Clause 8.4 keeps Semantic Versioning for derived documents that declare a version and the pin to a KADS version; the requirement to state what counts as breaking for their readers is removed. The version classes now have a defined meaning: 8.4 (b) reads the classes of 8.3 (c) to (f) for the document and its covered corpus, a released version does not identify changed content, and a copy carrying an unreleased version says so; 8.4 (c) makes a pin change breaking at least when the KADS release is marked breaking, unless the note records that none of the marked changes applies. Recorded in [J-035](decisions/version-semantics/README.md), with twenty classified cases. The adoption guide has the three tests and examples.
- Conformance no longer requires an adoption note to carry a version of its own; a derived document is not required to declare a version merely because it exists, and if it declares one, 8.4 (b) applies. A relaxation.
- Clause 8.6 names "the route KADS names" instead of the `proposals/` path.
- Explanations inside clauses moved to the clause guide, the knowledge model, the registries, and the guides: no fixed sequence of files; learning content exposes prerequisites; a glossary is optional; front matter is optional; a second metadata graph is not required; native artifact identities may be retained; inverse reading of supersession; the ADR identifier mapping; when a profile pays.
- Contributing: "What belongs in the specification", the five functions a unit must serve, the criterion for permission sentences, and the rule to adopt a borrowed property and not its surrounding ontology.
- The clause guide was rebuilt for the new numbering and the lettered items.
- The README was checked against the specification for semantic fidelity: the opening says what KADS aims to let a reader tell; the proposition summaries keep their material qualifications; proposition 7 distinguishes the core from the two profiles; the registries are rules when the tracked-record profile is declared; an adopting corpus is not assumed to live in one repository; the language sentence no longer implies a core requirement about identifiers.
- A proposal can be sent as a document by any practical channel; an editor places it on a proposal branch, and it follows the same path as a merge request. Git access is not a condition of proposing.
- An epistemic release check, recorded in [J-036](decisions/foundation-review/README.md#the-epistemic-release-check), found no conforming corpus that makes a claim look more established than its stated basis, and one gap in the core: clause 3.4 binds statements that documentation content was tested, not that a system was, so a core-only claim of a passing test need not say what ran or against which criterion. The specification is unchanged; the guidance was corrected. The knowledge model now says what each kind of basis establishes and separates a source's assertion from a direct observation; the authoring guide gains the lead-ins "Reported by" and "Assessed against" and no longer reads 3.4 wider than it is; the README example says what was observed.

### Migration from 0.8.0

Required: nothing is newly required of a corpus. Update clause references in adoption notes and exceptions with the map above.

Recommended: nothing.

## 0.8.0  -  2026-10-03

Minor bump under clause 8.3. This version follows the maintainer's reading of 0.7.0, recorded in [J-033](decisions/self-explanation/README.md). No existing requirement was strengthened. The specification was restructured and every clause renumbered, so references to clauses in adoption notes and exceptions need updating; the map is below.

What the version adds and removes, counted with the commands in CONTRIBUTING:

| | 0.7.0 | 0.8.0 | Added | Removed |
|---|---|---|---|---|
| Active clauses | 47 | 42 | 3 (1.1 self-explanatory documents; 8.2 local rules and citations; 8.6 changing KADS) | 8 (old 3.3.6 merged into 3.1; old 1.1, 1.2, 3.6.3, 4.1, 5.1 became prose in the preface or profile headings; old 1.3 and 1.4 merged into 8.2) |
| Active lettered requirements | 6 | 19 | 13 (1.1 a to c; 8.6 a to c; 8.3 a to g, existing text now lettered plus g) | 0 |
| MUST | 68 | 69 | 1 (8.3 g) | 0 |
| MUST NOT | 11 | 11 | 0 | 0 |
| SHOULD | 20 | 24 | 4 (1.1 a, b; 8.6 b; 8.2, the version in a citation) | 0 |
| SHOULD NOT | 1 | 2 | 1 (8.6 a) | 0 |
| MAY | 11 | 13 | 2 (1.1 c; 8.3 g) | 0 |
| MUST in conformance | 6 | 6 | 0 | 0 |
| MUST NOT in conformance | 1 | 1 | 0 | 0 |
| Defined terms | 15 | 22 | 7 (author, maintainer, reviewer, entry point, self-explanatory, subject, agent-drafted) | 0 |
| Record types | 6 | 6 | 0 | 0 |
| Relations | 11 | 11 | 0 | 0 |
| Outlines | 10 | 11 | 1 (change proposal) | 0 |
| Guides | 8 | 9 | 1 (clause guide, renamed from clause examples) | 0 |
| Adoption-note outline lines | 18 | 18 | 0 | 0 |

### Restructured

The specification is now arranged from the general to the specific, in the manner of the Tractatus: eight numbered propositions, each followed by its reason and by the clauses that make it precise. Deeper numbers mean more specific statements. The two optional profiles are the subtrees 7.1 and 7.2. What a reader needs first, the keywords, the roles, and how to cite a clause, is an unnumbered preface; the terms are at the end. Clause numbers are no longer permanent identifiers: a citation names the KADS version, and a version that renumbers maps old to new, as this one does. Retired clauses are no longer kept as placeholders.

| 0.7.0 | 0.8.0 | Name |
|---|---|---|
| 1.1 | preface | What KADS governs |
| 1.2 | preface | Requirement keywords |
| 1.3 | 8.2 and preface | Which documents are rules; local rules |
| 1.4 | 8.2 and 8.3 (g) | Clause identifiers; citing a clause |
| new | 1.1 | Self-explanatory documents |
| 3.1.1 | 1.2 | Purpose and scope |
| 3.1.2 | 1.3 | Answer first |
| 3.1.3 | 1.4 | Consequential terms |
| 3.1.4 | 4.1 | Superseded content |
| 3.2.1 | 2.1 | One canonical home |
| 3.2.2 | 2.2 | Summaries and derived views |
| 3.2.3 | 2.3 | Canonical tables and diagrams |
| 3.3.1 | 3.1 | A basis for every material claim; now includes old 3.3.6 |
| 3.3.2 | 3.2 | Kinds of statement stay distinct |
| 3.3.3 | 3.3 | Nothing invented |
| 3.3.4 | 3.5 | Agent-drafted content and automated review |
| 3.3.5 | 3.4 | Verification claims |
| 3.3.6 | 3.1, last sentence | Uninspected sources |
| 3.4.1 | 4.2 | Corrections and replaced findings |
| 3.4.2 | 5.1 | Evidence kept as collected |
| 3.4.3 | 4.3 | Dated facts and a review route |
| 3.4.4 | 5.2 | Run identity |
| 3.4.5 | 5.3 | Where a redaction is recorded |
| 3.5.1 | 6.3 | Links and references |
| 3.5.2 | 6.1 | Procedures, research claims, and quantities |
| 3.5.3 | removed | Simplest representation; advice in the representation guide |
| 3.5.4 | 6.2 | Irreversible steps; old (c) removed, see 3.4 |
| 3.5.5 | 2.4 | Reachability |
| 3.6.1 | 3.6 | Artifacts behind claims |
| 3.6.2 | 2.5 | Generated views |
| 3.6.3 | preface | What KADS does not do |
| 3.6.4 | 2.6 | Freshness of copied figures |
| 4.1 | 7.1, heading | When to use the tracked-record profile |
| 4.2 to 4.6 | 7.1.1 to 7.1.5 | Record fields; identifiers; relationships; supersession; status and decisions |
| 5.1 | 7.2, heading | When to use the research-report profile |
| 5.2 to 5.7 | 7.2.1 to 7.2.6 | What a report contains; reproducibility; test reports; scorecards; inherited and observed values; negative results |
| 6.1 | 8.1 | Claiming conformance |
| 6.2 | 8.3 | Versioning of KADS; gains (g) on renumbering |
| 6.3 | 8.4 | Versioning of derived documents |
| 6.4 | 8.5 | Review record |
| new | 8.6 | Changing KADS |

The unreleased 0.8.0 draft on the working branch also had a clause 1.5, Who acts, now the Roles paragraph of the preface, and a clause 6.5, Changing KADS, now 8.6.

### Proposals

Each proposal handled in this version, with its disposition. A proposal file leaves the working tree once it is decided. Its full text, with the reasons for the disposition, is kept in the history at the commit given here.

| Proposal | Disposition | Reason in one line | Decided by |
|---|---|---|---|
| Proposals are written for the KADS proposals directory. `proposals/2026-10-05-proposals-live-in-kads.md` | Accepted with changes | Two instructions named different places; a guard keeps the project on a released version | Maintainer |
| A provenance line may open a generated view. `proposals/2026-10-05-provenance-line-first.md` | Accepted with changes | A notice the reader must act on is not the document's story; adopted for any such notice, not one format | Maintainer |
| The storing tool should assign the run identifier. `proposals/2026-10-05-tool-assigned-run-identity.md` | Declined as a rule; advice added | Clause 5.2 already forbids a layout that depends on the operator; a SHOULD about tools would weaken it | Maintainer |

All three are at commit `42c27925c3b02e27dcfda1cccdd6f4c8ef359a18`. To read one:

```text
git show 42c27925c3b0:proposals/2026-10-05-provenance-line-first.md
```

The evaluations were drafted by an automated agent (automated review, clause 3.5). No dissent was recorded.

### Added

- Clause 1.1, self-explanatory documents: (a) a document SHOULD open by saying what it is, what question it answers, and what it applies to; (b) content about the document itself SHOULD follow the content the reader came for, while a notice that changes what a reader may safely do belongs in the opening; (c) a document MAY rely on its corpus for scope it shares with every other document there.
- Clause 8.6, changing KADS: (a) a project SHOULD NOT alter its copy of KADS, and records a local departure as an exception or a local rule; (b) a project SHOULD send a change proposal with its evidence when a rule appears wrong, unclear, or missing; (c) a proposal is a new file for the `proposals/` directory, and adding it does not alter the copy as long as the project stays on a released version.
- `templates/change-proposal.md`, a drop-in outline for such a proposal, and `proposals/`, the directory that receives them. The proposals page says how a proposal is sent, by a proposal branch or as a file, and how it is decided: evidence first, a challenge by someone other than the proposer, a disposition with reasons, and disagreement kept on the record. The adoption guide and the agent instruction snippet tell people and agents not to edit the copy.
- CONTRIBUTING, "Branches, tags, and the path of a change": tags are releases, `master` holds released versions only, the next version is prepared on a working branch, and a proposal arrives on its own branch.
- Artifact guide: fix a run's identifier once, at its start, and let the storing tool allocate it.
- Terms "subject" and "agent-drafted", with the tests that make clauses 2.1 and 3.5 decidable. Clause 3.5 now says "an agent-drafted document or record" in place of "substantially drafted by an automated agent"; no change of strength. The clause guide has a table of cases for each.
- Clause 8.2, local rules and citations: project extensions MUST be identified as local rules (from old 1.3); a reference to a clause SHOULD name the KADS version and, where the clause holds several requirements, SHOULD identify the one concerned (the second part from old 1.4; naming the version is new).
- Every clause carries a short name and the role that acts on it. The roles author, maintainer, and reviewer are defined under Terms, as are "entry point" and "self-explanatory". Each of the eight propositions carries a one-sentence reason and links to the knowledge model.
- `docs/clause-guide.md`, replacing `docs/clause-examples.md`: how to read a clause, what each role has to care about, every clause in plain words, and examples. Six examples were added.
- `docs/adoption-note.md`: the adoption note of this repository, moved out of the README.
- `decisions/README.md`: an index of the decision records.
- Authoring guide: how to open a document, how scope is inherited, and where a document's own story goes.
- CONTRIBUTING: KADS's documents explain themselves, and KADS is not their subject.

### Changed

- The README is rewritten around the problems KADS prevents, one before-and-after example, and paths by task. Everything about the repository itself is at the end.
- The specification opens by saying what it is and how to read a rule; the keywords, the roles, and how to cite come first, the terms and the version, status, and license last.
- Every guide and both registries open by saying what they are and whom they are for.
- Default record identifiers are the first letters of the type: `CON`, `DEC`, `INV`, `TST`, `EVD`, `QST`. The single letters `C`, `D`, `J`, `T`, `E`, `Q` remain valid short forms, and existing identifiers are never renamed. A project MAY reserve number ranges or use dated numbers to avoid collisions between branches.
- Clause 8.3 is lettered, states that retiring or relaxing a requirement is not a breaking change, and in (g) that clause numbers may change between versions with a map in the changelog.
- Wording, with no change of requirement: "material" is no longer used as a noun in the specification; it is likewise replaced by "content" or "source" in conformance and the registries; the preface defines the word "clause"; a lowercase "must" in conformance was reworded as a reference to clauses 3.2 and 3.3. In clauses 4.3 and 7.1.5 a vague trailing condition ("when it matters", "when relevant") is replaced by a stated one; this is a clarification under clause 8.3 (f), judged not to change what a conformant corpus must do.
- Guides and the specification no longer narrate KADS's own versions and evaluations. That history is in this changelog and under `decisions/`.

### Removed

- Clause 3.3.6 of 0.7.0 as a separate clause. Its requirement is the last sentence of clause 3.1, unchanged in strength.
- Statements in guides that KADS's own guidance had not been executed or used. A guide describes what to do; whether KADS itself has been tried is not its subject.
- The section "Philosophical lens and its limit" of the learning guide, and its entry on the sources page. It did not help a reader apply the guide.

### Migration from 0.7.0

Required: nothing changes in what a corpus must contain. References to KADS clauses in adoption notes, exceptions, and local rules are updated with the map above, because a citation names the version it refers to.

Recommended:

1. Give each document an opening that says what it is, what it answers, and what it applies to. Start with the entry point and the pages most often reached from outside.
2. Move notes about a document itself, such as history and how to contribute, to its end.
3. Replace references to clauses with the numbers in the map above, and links to the clause examples with the clause guide.
4. If your copy of KADS was edited locally, restore it to the tagged version, record the departure as an exception or a local rule, and send the reason as a change proposal. Replace the agent instruction snippet with the current one.

Optional:

1. Use the three-letter prefixes for new records. Do not rename existing ones.

## 0.7.0  -  2026-10-03

Minor bump under clause 6.2. This version results from the [evaluation of decision and readiness assurance](decisions/assurance/README.md): a proposal, seven independent challenges, and a synthesis. A proposed optional profile was deferred. Two items are **breaking**. This is the first version that retires rules.

What the version adds and removes, counted with the commands in CONTRIBUTING:

| | 0.6.0 | 0.7.0 | Added | Removed |
|---|---|---|---|---|
| Active clauses | 48 | 47 | 0 | 1 (3.5.3) |
| Active lettered requirements | 7 | 6 | 0 | 1 (3.5.4 c) |
| MUST | 68 | 68 | 0 | 0 |
| MUST NOT | 11 | 11 | 0 | 0 |
| SHOULD | 21 | 20 | 1 (4.6) | 2 (3.5.3, 3.5.4 c) |
| SHOULD NOT | 1 | 1 | 0 | 0 |
| MAY | 10 | 11 | 1 (4.2) | 0 |
| MUST in conformance | 5 | 6 | 1 (exception lists) | 0 |
| MUST NOT in conformance | 1 | 1 | 0 | 0 |
| Defined terms | 15 | 15 | 0 | 0 |
| Record types | 6 | 6 | 0 | 0 |
| Relations | 11 | 11 | 0 | 0 |
| Outlines | 11 | 10 | 0 | 1 (ADR) |
| Guides | 7 | 8 | 1 (consequence guide) | 0 |
| Adoption-note outline lines | 18 | 18 | 0 | 0 |

### Added

- Clause 4.6: an accepted decision SHOULD state the reasons for the choice, link to them, or state that they are not recorded. A recommendation; not breaking.
- Clause 5.7: a statement that no failure was observed is a negative result, scoped to what was observed, for how long, and how a failure would have been detected. The sentence has no keyword of its own and binds through the first MUST of the clause. **Breaking** for corpora under the research-report profile whose no-failure statements omit the period or exposure or the means of detection.
- Clause 4.2 and the nomenclature registry: version history MAY supply the `updated` date. A relaxation.
- Conformance: a list or summary of exceptions MUST show each exception's expiry date or condition for review. **Breaking** for corpora whose exception lists omit it. An exception may now give an expiry date in place of a review condition, and a lapsed exception is defined: lapse establishes neither that the departure ended nor that it is still accepted.
- `docs/consequence-guide.md`, informative: two questions that decide how much to record; a decision to proceed as a conclusion and a choice; exceptions; disagreement; incident lessons; six worked examples.
- CONTRIBUTING, "Keeping the standard small": rules admitted without an observed case are marked; each minor release that adds a rule reviews existing ones and names a retirement candidate; each changelog entry accounts for additions and removals.
- `docs/sources.md`: seven sources behind the guide, each with the passage inspected.
- Clause examples for 4.6, 5.7, and exception lists.

### Removed

- Clause 3.5.3 (simplest representation), retired. A reviewer could not detect a violation, and the representation guide carries the advice. The number is not reused.
- Clause 3.5.4 (c) (an unexecuted procedure SHOULD say so), retired one version after it was added. Clause 3.3.5 governs statements that a procedure was executed, and the absence of a statement established nothing.
- `templates/adr.md`, merged into `templates/decision.md`. An architecture decision record is a decision under its existing identity.

### Changed

- The exception field list has one spelling, in conformance; the adoption-note outline uses it.
- Outline placeholders are now escaped. Unescaped, a placeholder such as an identifier between angle brackets is treated as an HTML tag by common Markdown renderers and disappears from the rendered page.
- The decision outline carries prompts for assumptions, what the evidence does not cover, undoing, remaining risk, and disagreement.
- CONTRIBUTING no longer calls the retirement or relaxation of a requirement breaking. Clause 6.2 also calls a change of meaning of an existing clause breaking; this version reads a retirement or relaxation as leaving the meaning of what remains unchanged. A reader who takes the stricter reading should treat the changes to 3.5.3, 3.5.4 (c), 4.2, and the exception fields as breaking with no migration step. Settling the wording of 6.2 is left to the next release.
- README: the optional script is described accurately.

### Considered and not adopted

An optional "Assurance profile" of five clauses, three named assurance levels with a stored label, a readiness record, separate exception and incident outlines, nine new relations, lifecycle states for KADS rules, and a list of ten adoption signals. The [record](decisions/assurance/README.md) gives each disposition, the objections accepted and rejected, the dissent preserved, and the condition that reopens the profile.

### Migration from 0.6.0

Required:

1. Where the corpus lists or summarizes exceptions to KADS clauses, show each one's expiry date or condition for review.
2. Under the research-report profile, give each statement that no failure was observed its period or exposure and how a failure would have been detected.

Recommended:

1. Add reasons, a link to them, or "Reasons not recorded." to accepted decision records.
2. Use the conformance words for the exception fields in the adoption note.
3. Point links to the retired ADR outline at the decision outline. If you copied outlines earlier, check that their placeholders render.

Optional:

1. Read the consequence guide and try its two questions on the next change that reaches another team.

A corpus that followed clause 3.5.3 or 3.5.4 (c) needs no change.

## 0.6.0  -  2026-10-03

Minor bump under the pre-1.0 rule of clause 6.2. This version results from the [standards evaluation of 2026-10-03](decisions/standards/README.md), which examined 31 candidate principles from external standards. Items marked **breaking** can make a corpus that conformed to 0.5.0 nonconformant until the required migration steps are applied. No clause was renumbered or removed. No new profile was created.

Keyword counts in the specification, including the definitional list in clause 1.2:

| | 0.5.0 | 0.6.0 |
|---|---|---|
| Clauses | 43 | 48 |
| MUST | 64 | 68 |
| MUST NOT | 9 | 11 |
| SHOULD | 15 | 21 |
| SHOULD NOT | 1 | 1 |

### Accepted into the common core

- Clause 3.1.4, new: superseded or withdrawn material says so where a reader who opens it directly will meet it, and points to current guidance. **Breaking** from the moment material is next superseded; older archives are identified at the entry point.
- Clause 3.3.5, new: a statement that documentation content was verified, reviewed, tested, or executed says, or links to, what was checked, against what, and when, or states what is not recorded. **Breaking** for corpora with unqualified statements of that kind.
- Clause 3.3.6, new: a source cited without having been inspected SHOULD be identified as such. A recommendation; not breaking.
- Clause 3.5.4, new: (a) an effect that cannot be undone is stated in or immediately before its step. **Breaking** for procedures that warn elsewhere. (b) The statement SHOULD give the way to avoid or recover. (c) An unexecuted procedure SHOULD say so.
- Clause 3.5.5, new: maintained documents SHOULD be reachable by links from the entry point. A recommendation; not breaking.

### Modified principles

- Clause 3.1.3: a consequential term MUST NOT carry two meanings in one scope unless the difference is stated where it is used. **Breaking.**
- Clause 3.2.2: a derived view MUST NOT state a claim more firmly than its source. **Breaking.**
- Clause 3.3.2: assumption and hypothesis are named among the kinds of statement that must stay distinguishable. **Breaking** in principle; the earlier wording already covered them where combining would mislead.
- Clause 3.3.4: wherever a review is stated, review performed only by automated agents, not only by the generating agent, is identified as automated review. **Breaking.**
- Clause 1.4 and conformance: a reference or exception SHOULD name the requirement concerned inside a multi-requirement clause. Not breaking. The review record names the version reviewed, as a consequence of clause 3.3.5.

- Clause 4.5: on a superseded record, the link to its replacement is the statement required by 3.1.4 and is in visible text. Clarification.
- Clause 3.2.2 also names recommendation and proposal among the standings a restatement keeps.

### Corrected

- Earlier versions said that ADR-001 to ADR-003, the adoption-feedback note, and the evaluation of the standard were "reviewed by the repository maintainer". The drafting agent wrote that without knowing what the maintainer had reviewed. Under clauses 3.3.3 and 3.3.5 those statements now say that the maintainer is the author of record and that what was reviewed is not recorded.

### Accepted as guidance

- CONTRIBUTING: an admission test of seven questions for any new rule, a condition for using MUST, a one-requirement-per-sentence drafting rule, and a rule that rejected proposals are recorded with their reopening condition.
- Authoring guide: writing for readers who arrive out of context; synonym mapping; one action per step and related procedure advice; optional lead-ins for a statement's standing; fixed shapes for verification and agent-authorship lines; marking replaced material.
- Knowledge model: one list of statement kinds, and the distinction between kinds of statement and kinds of document.
- Registries: inverse reading labels for relations; a mapping for tracked hypotheses and assumptions; the reader-question test for extensions. The PROV correspondence for `supersedes` was corrected.
- Adoption guide: advice on tool-independent sources, a line for sources outside version control, treatment of legacy archives, and an agent instruction snippet that states its KADS version and covers the new clauses.
- Artifact guide: evidence excluded from bulk edits, digests for evidence outside version control, expiring links.
- `docs/clause-examples.md`: compliant and non-compliant examples for every clause added or strengthened in this version.
- `docs/sources.md`: seven further works, and a column saying whether each cited passage was inspected.
- `tools/check-links.sh --orphans`: optional reachability report.

### Rejected or deferred

Twelve candidates were rejected and one deferred, each with its reason and reopening condition in [`decisions/standards/`](decisions/standards/README.md): a controlled dictionary and sentence limits; further modularization; meaning-bearing identifiers; a second rule on source and publication views; a standard corpus layout; transclusion; epistemic states as record types; PROV metadata as a requirement; new relations including `refines`; a baseline process; preregistration; chain of custody; and, deferred, a machine-readable graph. Mandatory independent review was not adopted either; its record is counted as accepted with modification because it changed clause 3.3.4. A Procedure profile and an AI authoring profile were considered and not created.

### Migration from 0.5.0

Required:

1. From now on, when you supersede or withdraw material, mark it in its title or at its top and link what replaced it. For an archive that predates this version, say at the entry point that its currency is unreviewed.
2. Find statements such as "verified", "tested", "reviewed", or "executed". Add or link what was checked, against what, and when, or say which of these is not recorded. This includes the review record of a conformance claim, which names the version reviewed.
3. In procedures, move each hazard or irreversible-effect warning to the step that causes it.
4. Check summaries and indexes against their sources: none may state a claim more firmly than its source.
5. Where review was done only by automated agents, call it automated review.
6. Where a term that drives a score or an action has two meanings in one scope, state the difference where it is used.

Recommended:

1. Run an orphan check and link, mark, or remove unreachable pages.
2. State in each procedure whether it has been executed as written.
3. In exceptions, name the requirement concerned by letter or quotation.
4. Mark citations that were not inspected for their claim, for example ones recalled from memory.
5. Replace the agent instruction snippet with the 0.6.0 version and add the "Sources outside version control" line to the adoption note.

Optional:

1. Use the `Applies to:` line, the standing lead-ins, and the inverse relation labels.

Purely editorial changes in this version require no migration.

## 0.5.0  -  2026-10-02

Minor bump under the pre-1.0 rule of clause 6.2, responding to [adoption feedback](docs/reviews/2026-10-02-adoption-feedback.md). Items marked **breaking** can make a corpus that conformed to 0.4.x nonconformant until the migration steps are applied. No existing clause was renumbered or changed.

### Added

- Clause 3.4.4: every preserved run needs an identifier that cannot collide with another run, including same-day repeats, in a location a later run cannot overwrite. **Breaking** for corpora that store runs under date-only or otherwise reusable locations.
- Clause 3.4.5: redactions, corrections, and removals are recorded where a reader of the affected evidence will find them. **Breaking** for corpora with undisclosed or remotely disclosed redactions.
- Clause 5.7: a negative result is scoped to the interface, version, credentials, and location inspected; a conclusion revised after a method change is attributed to the method. **Breaking** for research reports that state general absence from a single interface.
- Clause 3.6.4: projects with generated views or hand-copied volatile figures SHOULD check freshness mechanically where practical. A recommendation; not breaking. [ADR-003](docs/adr/ADR-003-mechanical-freshness-checks.md) records the choice.
- Four conformance checklist questions mapped to the new clauses.
- `docs/reviews/`: dated review notes for the standard, beginning with this feedback.
- Guidance and examples: run identity schemes, redaction notes and credential rotation, and freshness of copied figures in the artifact guide; edition versus tier names, an interface-scoped negative result, and support recommendations as assertions to test in the evaluation guide; four cases in the evaluation of the standard.
- Adoption note outline: run identity, redaction records, and freshness checks fields.

### Changed

- Test, evidence, and bundle outlines ask for a collision-free run identity and a redaction note.
- Design rationale: "manual review first" now names the one place where a mechanical check is advised.

### Migration from 0.4.x

1. If the corpus stores runs or collected output, confirm that no two runs can share a location. Rename nothing that already has a stable identity; adopt a collision-free scheme for new runs and state it in the adoption note.
2. For any evidence already redacted or altered, add a note at its location saying what kind of content changed, when, and why.
3. Review conclusions that report something as unavailable, unsupported, or not found. Restate each one with the interface, version, credentials, and location that produced it.
4. Add the three new adoption-note fields, using "not applicable" where the corpus holds no evidence or generated content. Update the pinned KADS version, which is at least a minor change to the note.

## 0.4.1  -  2026-10-02

Patch: wording only, no change in normative meaning.

- Reworded three sentences in the README and the sources page for plainer reading. Ran a Unicode hygiene inspection over every Markdown file; no invisible, bidirectional, or confusable characters were found, so no text was altered by that pass.
- Version references updated to 0.4.1.

## 0.4.0  -  2026-10-02

Minor bump under the pre-1.0 rule of clause 6.2. Items marked **breaking** can make a corpus that conformed to 0.3.0-draft nonconformant until the migration steps are applied.

### Added

- Stable clause identifiers on every normative paragraph of the specification (clause 1.4). Conformance questions now map to clauses in a traceability matrix.
- Clause 3.3.4: agent-drafted content must name an author of record and distinguish generated from verified content. **Breaking** for corpora with agent-drafted documents that carry no such disclosure.
- Clauses 6.2 and 6.3: KADS and documentation derived from it use Semantic Versioning 2.0.0; releases are tagged `v<version>`; the file `VERSION` is canonical. **Breaking** for adoption notes that declare a version without SemVer or do not pin the KADS version.
- Clause 6.4: review records reference clauses by identifier.
- Terms: scope, profile, adoption note, namespace, evidence path, author of record.
- `LICENSE`: Creative Commons Attribution 4.0 International. The repository previously had no license.
- `VERSION` file and a "How to cite" line in the README.
- `docs/sources.md`: the external works KADS draws on, with the place each is used and an access check dated 2026-10-02. Citations added inline in the specification, nomenclature, relationships, authoring, decision, research, knowledge-model, representation, evaluation, and artifact guides.
- A self-adoption note in the README applying KADS to this repository, with a review record.
- `tools/check-links.sh`: optional, non-normative aid for the mechanical part of clause 3.5.1.
- Learning guide: a section with contrasting examples of material and immaterial statements.

### Changed

- Version string `0.3.0-draft` becomes `0.4.0`; pre-release suffixes are no longer used. Status is "Draft, pre-1.0" in both the README and the specification.
- The Index → What → Why → How → Sources aid is named the "evidence path" and defined in the specification. The 0.1.0 "disclosure model" ended in "Where"; 0.2.0 changed that to "Sources" without a note, which this entry records.
- Relationship vocabulary: `supersedes` is the single supersession relation; the required reverse link on a replaced record is documented as its inverse reading, not a second relation. A reverse-link column was added to the table.
- Claims about the 0.3.0 "specialist review" now identify it as an unpreserved authoring review and record the evidence gap (clause 3.4.2) in the evaluation of the standard and ADR-001.
- ADR-001 and ADR-002 name their drafting method and author of record instead of referring to an authoring session.
- The technical-documentation example now states the version it covers as 0.4.0.
- The Wittgenstein citation points to the published fourth edition by ISBN instead of a third-party PDF.
- README: "knowledge administration set" corrected to "standard".
- Two lowercase imperatives in the specification became explicit SHOULDs so that their normative weight is unambiguous under RFC 8174: citing specific versions for historical claims (3.5.1) and using the simplest representation (3.5.3). Neither was previously a MUST, so this is not breaking.

### Migration from 0.3.0-draft

1. Replace "KADS 0.3.0-draft" with "KADS 0.4.0" and pin tag `v0.4.0` in the adoption note. Give the adoption note its own SemVer number (clause 6.3); `1.0.0` is a reasonable first value for an existing note.
2. For any exception already declared, add the clause identifier it concerns.
3. For documents substantially drafted by an agent, add an author of record and state what was verified (clause 3.3.4).
4. If local documentation declares versions of its own, confirm they follow SemVer and name their breaking-change rule.
5. No ID, status, or relation changes its meaning. No record needs to be renamed.

## 0.3.0-draft  -  2026-10-02

- Evaluated the standard through practical application and specialist-agent critique in pedagogy, knowledge management, and interpretation. Retained general guidance, rationale, and independent illustrative cases.
- Added narrow requirements for consequential evaluation terms, score interpretation and missingness, artifact provenance/roles, generated-source boundaries, and distinctions between execution, acceptance, implementation, and validation.
- Added optional learning/terminology and evaluation guidance, including local meaning, multilingual use, requirements, scorecards, blockers, and operational findings.
- Added a decision guide, ADR outline, and `docs/adr/` space with two design proposals. Formal maintainer acceptance is not claimed.
- Added an artifact guide, catalog and bundle outlines, and `artifacts/` space. Native code, configuration, schemas, datasets, builds, tickets, and run outputs can remain in their existing homes; no new universal artifact type or mandatory ID was added.
- Clarified existing-prefix/status mappings and ADR identity so KADS does not reinterpret requirement category IDs or duplicate decision records.
- Restricted repository content to the standard itself and original teaching material; evaluations do not import external project records, artifacts, or identities.

### Migration from 0.2.0-draft

1. Review consequential evaluation labels and scores for clear criteria, denominators, exclusions, and treatment of unevaluated/blocked/failed/not-applicable cases. Keep inherited and observed results distinguishable when material.
2. For artifacts supporting claims, make location, relevant version/scope, role, and limits discoverable. Existing native READMEs, fields, and links may already suffice; no catalog or manifest is mandatory.
3. Identify maintained sources of transformed views and distinguish historical effective conditions from current method defaults where material.
4. Keep existing IDs and local workflows; document mappings instead of renaming records. `ADR` may map to decision, and decisions may now use `rejected` when a proposal was assessed and not adopted.
5. State implementation or validation separately from decision acceptance. Use optional learning aids only where they help the reader's task. No additional conformance profile or tooling is introduced.

## 0.2.0-draft  -  2026-10-02

- Adopted the name **Knowledge Administration and Documentation Standard**, with **Traceable Knowledge Architecture** describing its organizing approach. KADS is the standard's acronym.
- Replaced automation-oriented maturity levels with a common core, a tracked-record profile, and a research-report profile.
- Removed the linter, CI workflow, and JSON Schema. Replaced YAML registries with human-readable Markdown vocabularies. Tooling is deferred.
- Defined normative boundaries and made front matter optional. Labeled links and visible record metadata are sufficient.
- Scoped canonicality by subject and context; allowed tables and diagrams to be canonical without redundant prose inventories.
- Distinguished lifecycle, evidence access, uncertainty, test execution, and test assessment.
- Added submodule adoption guidance, an agent instruction snippet, a research guide, ordinary-document and report outlines, and an ordinary documentation example.
- Clarified that edit dates, execution dates, confidence, and observed state require distinct supporting information.
- Documented design challenges and review limitations.

### Migration from 0.1.0-draft

1. Replace any claimed conformance level with the applicable profiles and covered paths. Prior automated checks do not establish conformance to this revision.
2. Replace references to the YAML registries with the Markdown registries. Remove required linter commands from local instructions if adopting the revised workflow.
3. Existing front matter can remain. Check the required fields and meanings; do not duplicate them in a second metadata block.
4. For test records using `passed` or `failed` as status, use the appropriate lifecycle status and retain the assessment in the run record. For evidence using `stale` or `invalidated`, record access status separately and preserve the applicability or validity assessment in prose.
5. Keep existing IDs and namespaces. Check cross-project references and add a reverse replacement link where a superseded record lacks one.
6. Review conclusions with unexplained confidence labels or provenance inferred from edit dates. Correct them visibly; do not rewrite raw evidence to fit the new account.

## 0.1.0-draft  -  2026-10-02

Historical initial draft, then inconsistently named TKA and KADS:

- Established the `Index → What → Why → How → Where` disclosure model.
- Defined canonicality, stable identity, provenance, lifecycle, and typed relations.
- Registered initial knowledge-object prefixes and relationship vocabulary.
- Added guidance for tables, statistics, and diagrams.
- Added Markdown templates, JSON Schema, a worked example, and a dependency-free linter.
- Defined progressive conformance levels.
