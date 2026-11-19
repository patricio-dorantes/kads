# J-033  -  Self-explanatory documents, explicit actors, and mnemonic identifiers

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Namespace:** `kads-design`  
**Result:** KADS 0.8.0

This record explains why KADS 0.8.0 made self-explanation its first principle, named a responsible role on every rule, and changed its default record identifiers. It is a record of a decision, not a rule; the rules are in the [specification](../../docs/specification.md). Clause numbers in this record are those of the 0.8.0 draft before its restructuring: 3.1.5 became 1.1, 1.5 became the Roles paragraph of the preface, 6.5 became 8.6, 3.3.6 was merged into 3.3.1 and is now 3.1, and 8.3 kept its number; the 0.8.0 changelog has the full map.

## What prompted it

The repository maintainer read KADS 0.7.0 as a newcomer would and reported, on 2026-10-03:

- The README sent the reader to "Specification" under "Understand the requirements", and that was not clear until the specification had been read.
- The clause examples were useful but nothing explained them.
- Identifiers such as `C-001` and `D-001` are generic, not mnemonic, and prone to collision.
- A section of the learning guide, "Philosophical lens and its limit", had no evident point.
- KADS's documents spent too much of themselves on KADS: contributing, maintenance, history.

The maintainer then set two principles: a document should always be self-explanatory, and KADS is not its own main subject. After reading the first draft the maintainer added three instructions: KADS does not describe its own guidance as untried or unexecuted; a project's copy of KADS is not edited locally, because whoever edits it does not have the complete view; and KADS provides a drop-in way to send evidence and a change proposal. This is the first feedback from a person reading the documents, and it is an observed case in KADS's own corpus.

## The thesis: every document states its purpose and scope at its own level

**For.** Readers arrive anywhere: by search, by a link, by an excerpt handed to an agent. Clause 3.1.1 required purpose and scope to be "discoverable", which allowed them to live somewhere else, and that is exactly what failed between the README and the specification. A check of the 24 guides, registries, and index pages before this version found that about a third opened by saying what they were; the rest began mid-subject. That count is the drafting agent's reading, not a measurement.

**Against.** Four objections are real. A mandatory "Purpose and scope" heading turns into a ritual sentence that says nothing. Restating the scope of the whole collection on every page duplicates it, and the copies drift, which is the failure clause 3.2.1 exists to prevent. Very short pages and sections do not need a preamble. And a hard requirement would make every existing page of a legacy corpus nonconformant on the day of upgrade.

**Resolution.** Identity cannot be inherited; scope can. Every document says what it is and what question it answers. It states scope only where its scope is narrower than, or different from, that of the collection, and links to where the shared scope is stated. No heading is required. For sections inside a document this stays advice. The rule is a SHOULD, not a MUST: clause 3.1.1 remains the requirement, and a legacy corpus is not forced into a triage project.

## What changed

| Change | Where | Strength |
|---|---|---|
| A document opens by saying what it is, what it answers, and what it applies to | Clause 3.1.5 (a) | SHOULD |
| Content about the document itself follows the content the reader came for | Clause 3.1.5 (b) | SHOULD |
| A document may rely on its corpus for shared scope | Clause 3.1.5 (c) | MAY |
| Each clause has a short name and names the role that acts | Specification, every clause; clause 1.5; roles defined in section 2 | Presentation |
| Every clause restated in plain words, with roles and examples | Clause guide | Informative |
| Default identifiers are the first letters of the record type; single letters stay valid | Nomenclature | Default changed, not breaking |
| The uninspected-source rule moved into clause 3.3.1; clause 3.3.6 retired | Specification | Unchanged in strength |
| Clause 6.2 lettered, and it now says that retiring or relaxing a requirement is not breaking | Specification | Clarification |
| "Material" is no longer used as a noun | Specification, conformance, registries | Wording |
| A vague trailing condition ("when it matters", "when relevant") replaced by a stated one | Clauses 3.4.3 and 4.6 | Clarification, judged not to change what a conformant corpus must do |
| Clause 1.4 defines the word "clause" | Specification | Wording |
| The README, every guide, and both registries open by saying what they are | Whole corpus | Applied |
| KADS's own history removed from guides and the specification | Whole corpus | Applied |
| The "Philosophical lens" section removed | Learning guide | Removed |
| A project's copy of KADS is not altered; departures are local exceptions or rules; problems are sent as change proposals with evidence | Clause 6.5 (a) and (b) | SHOULD NOT; SHOULD |
| An outline for a change proposal with evidence, and a directory that receives proposals | `templates/change-proposal.md`, `proposals/` | Informative |
| The specification restructured from the general to the specific: eight propositions, each with its reason, then its clauses; profiles as subtrees of proposition 7; preface and terms outside the numbering; every clause renumbered and mapped in the changelog; retired placeholders removed | Specification; changelog | Structure |
| Clause numbers may change between versions; a citation names the version; a renumbering is mapped in the changelog | Clauses 8.3 (g) and 8.2 | MAY; MUST on the editors; SHOULD on citations |
| Terms "subject" and "agent-drafted" defined, with tests; clause 3.5 reworded to use the term | Specification, Terms; clause 3.5; clause guide | Definition; no change of strength |
| Three proposals received on 2026-10-05 disposed of; the changelog gives each disposition and the commit that holds the full proposal | Changelog; clauses 3.1.5 (b) and 6.5 (c) | Two accepted with changes, one declined |
| Branches, tags, and the path of a proposal described | Contributing; proposals page | Process |
| Statements that KADS's own guidance is untried or unexecuted removed from guides | Adoption guide, consequence guide, clause guide, Contributing, adoption note | Removed |

## Admission test

Answers for clause 3.1.5, as [Contributing](../../CONTRIBUTING.md#admission-test-for-new-rules) requires.

- **Failure and observed case.** A reader cannot tell what a document is without reading another one first. Observed: the maintainer's reading reported above.
- **Protected property.** A statement's scope is known; current guidance can be found.
- **Existing text.** Clause 3.1.1 says purpose and scope must be discoverable and does not say where. Adding a location to it would have changed an existing MUST for every adopter.
- **Layer.** Common core: it applies to a three-page repository as much as to a large one.
- **Detection.** By reading the title and first paragraph of one page.
- **Cost.** For a new page, two sentences. For a legacy corpus, nothing is forced, because the clause is a SHOULD; a departure needs a reason under clause 1.2.
- **Vocabulary.** The identifiers changed because of a reader question the old ones could not answer: what kind of record is `J-032`? An earlier adopter had also chosen its own longer prefixes over the single letters.

Answers for clause 6.5.

- **Failure and observed case.** A copy of KADS is edited inside one project, by a person or an agent without the full view, and the project's claim to follow a KADS version silently stops being true. Anticipated; no case observed. For that reason neither part is a MUST.
- **Protected property.** A material claim, here the conformance claim, has an identifiable basis.
- **Existing text.** Clause 1.3 asks that local extensions be identified as local, and clause 6.1 that the version be declared; neither says the copy itself is left alone, nor where a problem with a rule is sent.
- **Layer.** Section 6, because it concerns adoption, not the writing of documents.
- **Detection.** By comparing the copy with the declared tag.
- **Cost.** None for a project with an unedited copy.

## On explicit actors

ASD-STE100's practice of naming who performs an action was evaluated in 0.6.0 only for procedure steps. In the KADS specification about nine requirements in ten had a thing as their subject, such as "documentation" or "the entry point", and did not say who must act. An author cannot satisfy a rule about the entry point; a maintainer can. Rewriting ninety sentences would have risked changing what they require, so each clause now carries a role in parentheses. The requirement sentences are unchanged except for the wording changes listed in the table above. The ratio is the drafting agent's count from a script over the text; ASD-STE100 itself was not inspected.

## The terms "subject" and "agent-drafted"

Two words the rules relied on were undefined. "Subject" is the unit of clause 2.1 and of the definition of canonical home, which made that pair circular. "Substantially drafted" in clause 3.5 could be read as a share of the text, so a reviewer could not decide it.

**Subject.** The definition adopted keeps three levels apart: the subject, the knowledge maintained about it, and the representation. It gives independent maintenance a separability test: the description can be changed, reviewed, and dated as a unit without being part of a change to another description. Rejected: "a thing that can change on its own" (not testable); "a material change to it does not require a material change to another subject" (fails for dependent subjects: an interface change forces a change to the client guide, yet they are two subjects); "a document is never a subject" (a document is a subject when knowledge is maintained about it). The term is admitted because without it clause 2.1 cannot be decided; it reuses scope, material, and knowledge object and adds no parallel concept.

**Agent-drafted.** The definition adopted tests meaning, not volume: an agent produced, or changed the meaning of, material content, including by selection or omission. Rejected: a share of the text (one safety-critical step added by an agent matters more than a reformatted page); "content a reader would act on" (a new test where "material" already exists); a categorical exemption for translation (a translation can shift a normative distinction); exempting tools by kind (a grammar tool that rewrites can change meaning). Doubt resolves toward disclosure, which costs one line per document, so trivial tooling creates no burden where it preserves meaning. Clause 3.5 now uses the term in place of "substantially drafted".

Cases tested for each term are in the [clause guide](../../docs/clause-guide.md). This evaluation was made by the drafting agent, not by a separate challenger.

## Review owed under Contributing

Contributing asks that a release which adds a rule review the rules admitted without an observed case, and name a retirement candidate.

| Rule | Would we add it today? | Outcome |
|---|---|---|
| 3.3.6, uninspected sources | Yes, but not as a clause of its own; two challengers of 0.7.0 showed it producing boilerplate | Retired as a clause; one sentence in 3.3.1 |
| 3.5.5, reachability | Yes. It has since been observed at work here: the orphan check found an unlinked page during 0.6.0 | Kept; basis is now observed |
| 3.3.4, review by agents named as automated | Yes. Every KADS release since has depended on it to describe its own review honestly | Kept; basis is now observed |
| 3.1.4, superseded content says so | Yes; no case yet | Kept; anticipated only |
| 3.5.4 (a) and (b), irreversible steps | Yes; no case yet | Kept; anticipated only |
| 4.6, reasons of an accepted decision | Yes; no case yet | Kept; anticipated only |
| Conformance, exception lists show dates | Yes; no case yet | Kept; anticipated only |

The wording of clause 6.2, left open by 0.7.0, is settled: retiring or relaxing a requirement is not a breaking change.

## Not done

- The older clauses still hold several requirements in one paragraph, and several still end with a vague condition such as "where those layers are relevant". Only two were reworded. The rest wait for the lettering pass planned before 1.0.
- The maintainer asked for the general-to-specific chain on 2026-10-05, after reading the first draft of 0.8.0: numbers should say how general a statement is, retired placeholders should go, and each rule should trace to a reason. The Tractatus numbering convention is cited from memory; the work was not inspected.
- "Record" and "guidance" each still carry two senses in the specification.
- Not every clause has an example in the clause guide.
- Architecture decision records and these evaluation records are still two homes for design decisions.
- ADR-002 refers to a philosophical lens that the learning guide no longer contains. The record is left as written, since it is history.

## How this was produced

Drafted by an automated agent on 2026-10-03 from the maintainer's instructions, and reviewed by one further automated agent on 2026-10-03 against the uncommitted working tree: fidelity of the specification to 0.7.0, the changelog counts, document openings, identifier consistency, and links. Its findings were applied and are not preserved in the repository. That is automated review, not verification by a person (clause 3.3.4). Unlike the two earlier evaluations, no panel of challengers was run. The repository maintainer is the author of record; tagging and publishing `v0.8.0` is the maintainer's ratification, and what the maintainer personally examined beyond the reading reported above is not recorded here.
