# J-034  -  Necessity and placement review of the specification

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-06  
**Namespace:** `kads-design`  
**Result:** KADS 0.9.0

This record says why each unit of the 0.8.0 specification stayed, moved, merged, or went in 0.9.0, which invariant every retained requirement protects, and what the two challengers disputed. It is history, not a rule; the rules are in the [specification](../../docs/specification.md). Raw material is in the [evidence bundle](evidence/2026-10-06-1/README.md).

## Question

The maintainer asked, on 2026-10-06, for a review of the released 0.8.0 specification in which every proposition, clause, sentence, term, example, and attribution answers "why is this here?". A unit stays in the specification only if it serves conformance, interpretation, application, navigation, or maintenance. Truth alone is not sufficient. The maintainer also asked whether the same guarantees can be kept with less to remember.

## Answer

Yes. 0.9.0 adds and strengthens nothing for adopters, relaxes two requirements (7.2.1 no longer asks why the answer matters; 8.4 no longer asks a derived document to say what counts as breaking for its readers), and has three fewer clauses, four fewer defined terms, fourteen fewer keywords, and about a sixth fewer words. The later additions to 8.4, made in [J-035](../version-semantics/README.md), is counted here. A relaxation is not breaking under 8.3 (c). One requirement was added on the editors of KADS, not on adopters: a released version is identifiable by an immutable reference and never changes (8.3 b). What left the specification went to the clause guide, the knowledge model, the guides, or Contributing, and the changelog maps every renumbered clause.

| | 0.8.0 | 0.9.0 |
|---|---|---|
| Clauses | 42 | 39 |
| Lettered requirements | 19 | 80 |
| MUST / MUST NOT | 69 / 11 | 65 / 12 |
| SHOULD / SHOULD NOT | 24 / 2 | 18 / 2 |
| MAY | 13 | 9 |
| Defined terms | 22 | 18 |
| Words | 4807 | 4083 |

Keyword counts include the definitional mentions in the preface. The rise in lettered requirements is lettering of existing sentences so that each can be cited, plus 8.4 (c) as its own item and the restored 3.1 (d); no requirement was added by the lettering.

## How the review was run

The drafting agent wrote a disposition for every unit. Two challengers, automated agents that did not see each other's reports, then attacked it from opposite sides: a guardian that defended every unit proposed for removal, weakening, or relocation, and a subtractor that argued for further cuts. The drafting agent synthesized, and a further automated reviewer checked the result for fidelity and references before commit. This is automated review, not verification by a person (clause 3.5). The repository maintainer is the author of record and ratifies by tagging and publishing.

## Disposition of every unit

Where the guardian (G) or the subtractor (S) objected to the outcome, the objection is noted.

| 0.8.0 unit | Disposition | Invariant protected, or new home |
|---|---|---|
| Preface: Tractatus attribution, "cited from memory" | Removed from the specification; recorded here with the inspected citation | None of the five functions. The numbering semantics KADS uses are stated in its own words |
| Preface: how to read | Rewritten: propositions are not requirements; deeper number means more specific; profiles bind only when declared; numbers can change, cite the version | Interpretation of every number on the page |
| Preface: scope and authority sentences | Kept, shortened | Bounds what any clause can be read to require |
| Preface: keywords | Rewritten to say what is adopted from BCP 14 and that nothing else is; the plain-words gloss kept for a reader with no clause guide | Interpretation of every keyword. G would have avoided the "nothing else" negation; kept, since Contributing cites RFC 2119 section 6 as counsel, not as an adopted rule |
| Preface: roles, which documents are rules | Kept | Needed to read "(author)" and to know what is normative |
| Preface: citing a clause | Merged into the how-to-read paragraph and 8.2 | Was a restatement of 8.2 and 8.3 (g) |
| Why sentences | Kept at one sentence each; links to the knowledge model moved to the closing section | They set the scope of what the clauses beneath protect. S wanted the second sentences out; done |
| 7.1 and 7.2 heading texts | Rewritten to say only which documents the clauses bind | When-to-use advice is in the knowledge model |
| 1.1 | (b) now names what goes last: history, authorship, contribution instructions; the carve-out for notices became unnecessary | A document can be understood on arrival |
| 1.2 | Lettered; the sentence restating the Scope term removed | Purpose and scope discoverable; entry point distinguishes current from old |
| 1.3 | Reduced to one SHOULD; the evidence-path SHOULD and the learning SHOULD (now in the authoring guide) removed; "no fixed sequence of files" moved to the clause guide | Answer before background. G: one of the sentence and the term had to survive; both went because nothing in the clause now suggests a sequence. Corrected 2026-10-06 in [J-036](../foundation-review/README.md): the evidence-path sentence was not a duplicate of 3.1 (a) and 7.2.1, since 3.1 (a) covers the basis and not the reasoning or the method, and 7.2.1 binds only under a profile; the guarantee is restored as 3.1 (d) |
| 1.4 | MAY on translations and the glossary sentence removed; the MAY granted a permission nothing denies | Consequential terms have one discoverable meaning per scope |
| 2.1 | Lettered; absorbed 2.3 as item (c) | One home per subject; copies not authoritative; a table can be the home if readable. S wanted 2.3 deleted; the MUST on readability of a canonical diagram was kept, since no other clause gives it |
| 2.2 | Lettered a to d | Derived views faithful to their source |
| 2.3 (0.8.0) | Merged into 2.1 (c) | See 2.1 |
| 2.4 (0.8.0) reachability | Kept, now 2.3 | Maintained documents reachable from the entry point |
| 2.5 (0.8.0) generated views | Split: now 2.4; the historical-method sentence moved to 4.3 | Generated views name their sources. S proposed 4.3 over a new 4.4; adopted |
| 2.6 (0.8.0) freshness | Removed from the specification; advice in the artifact guide | Both SHOULDs were means; the outcome, that a copied figure is reviewed or dated, is 2.2 (b) and (c). G would have kept the last sentence; its content is the 2.2 reference now in the artifact guide. ADR-003, which proposed the SHOULD, is left for the maintainer |
| 3.1 | Lettered a to c | Material claims have a basis; citations precise; uninspected sources flagged |
| 3.2 | Lettered a to c | Kinds of statement distinct; unsupported marked; contradictions disclosed |
| 3.3 | Lettered; "or agent" dropped (the Author term includes agents); the revalidation sentence moved to 3.4 (b) | Nothing invented; unknowns marked. G objected to losing the sentence; it is kept, unconditional, in 3.4 |
| 3.4 | Lettered; gained (b) from 3.3 | A verification claim is checkable; an edit is not one |
| 3.5 | Lettered a to c; "generation does not establish verification" and "whether the generating agent or others" removed as explanation | Accountable author; automated review named |
| 3.6 | Lettered a and b; the native-identities permission moved to the artifact guide, which already had it | Artifacts behind claims locatable and bounded; intent not presented as observed |
| 4.1 | Kept | Superseded content marked where met |
| 4.2 | Lettered | Replaced findings preserve prior meaning |
| 4.3 | Split: (a) dated facts; (b) method and conditions, from 2.5, with its original condition that they differ from current ones in a way that affects interpretation; the review-route sentence moved to 8.1 (e) with its triggers | A changing fact carries what is material to reading it. G: the triggers had to travel into 8.1's text; they did. The gate reviewer caught a first draft of (b) that had dropped the condition and would have strengthened the rule |
| 5 Why | Scope condition kept in the Why and repeated in clause form: "bind only where a corpus holds evidence" | G: a three-page repository must be able to see that 5.1 and 5.2 ask nothing of it |
| 5.1 | Absorbed 5.3: where and what a disclosure records; the adoption-note SHOULD removed, the outline line already asks for it | Evidence kept as collected; alterations disclosed where met |
| 5.2 | Lettered; the scheme-first SHOULD moved to the artifact guide; the storage-label sentence kept as (c) | Runs cannot overwrite one another. G objected to removing the label sentence: without it a date-named directory becomes an acceptable collection date under 3.1 and 4.3; kept |
| 5.3 (0.8.0) | Merged into 5.1 (b) | See 5.1 |
| 6.1 | Split into (a) procedures and (b) quantities; the research-claims sentence removed as a duplicate of 3.2 (c) | Procedures followable; quantities carry units, scope, source |
| 6.2 | Kept | Irreversible effect stated at the step |
| 6.3 | Lettered; the SHOULD on historical citations removed as a narrower copy of 3.1 (b) | Links resolve; external references identifiable |
| 7.1.1 | "Meaningful" removed as a qualifier a reviewer cannot test; "front matter is optional" and the definition of updated removed, the nomenclature holds them | Record fields present once |
| 7.1.2 | Lettered | IDs unique, stable, resolvable across namespaces |
| 7.1.3 | Reduced to one sentence; explanation is in the relationship vocabulary | Relationships have meaning and target |
| 7.1.4 | Reduced to the forward link; the backward link is 4.1 (b) applied to a record | Supersession navigable both ways |
| 7.1.5 | Lettered a to c; the ADR identifier sentence removed, the nomenclature has it | Status is lifecycle; assessment separate; accepted decision has authority and, recommended, reasons |
| 7.2.1 | "And why the answer matters" removed from the required list, a relaxation; the research guide now recommends it | Report contents discoverable. S: a sound benchmark report can lack its motivation |
| 7.2.2 | Lettered; "an unavailable source does not become verified by citation" removed, 3.1 (c) and 3.3 cover it | Method described; barriers stated |
| 7.2.3, 7.2.4 | Lettered | Unchanged |
| 7.2.5 | Second sentence removed as 7.2.3 (a) restated | Inherited and observed values distinct |
| 7.2.6 | Lettered a to c; the revision sentence kept short with "the earlier observation remains a valid record" | Negative results scoped; revisions attributed to method. G asked that the last phrase stay; it did |
| 8.1 | Lettered a to e; gained the review route and its triggers from 4.3; the tooling sentences removed, conformance has them | A conformance claim is complete. G would have kept the tool-output sentence; conformance says no validation command is required and the link check establishes nothing else |
| 8.2 | Lettered; example citation added | Local rules identified; citations name the version |
| 8.3 | (a) says what is adopted from Semantic Versioning and that "breaking" is defined in (c); (b) states the property, an immutable reference, in place of the tag and VERSION file mechanics, which are in Contributing | A released version is identifiable and immutable; breaking is defined. G: immutability had to be a MUST on the editors, not a bare statement; it is, and it is the one requirement 0.9.0 adds |
| 8.4 | Reduced to two items: pin the KADS version; a version of its own, if declared, is Semantic Versioning and a pin change is at least minor. "MUST state what counts as a breaking change" removed | Derived documents are traceable to a KADS version. See unresolved |
| 8.5 | Kept | Review recorded |
| 8.6 | (c) merged into (a): adding a proposal file "by the route KADS names" is not alteration; the `proposals/` path left the specification | Copy of KADS unaltered; proposals sent. S would have removed (b); kept as a SHOULD at the maintainer's standing instruction |
| Terms: Knowledge object, Evidence path, Architecture decision record, Self-explanatory | Removed | None used by a clause after the edits above; the knowledge model, the nomenclature, and 1.1 carry them |
| Terms: Subject | Shortened; nesting and the document example moved to the clause guide; the closing sentence kept | G: the closing sentence is what stops a reference page and its dependent how-to from being read as two homes for one subject |
| Terms: Agent-drafted, Artifact, Material claim | Shortened | Tests kept; examples in the clause guide |
| Paragraph "Canonicality is a maintenance responsibility" | Moved to the knowledge model | Rationale. G asked for "not proof of truth" in the Canonical home term; not done, 7.1.5 (a) and 3.2 carry the point |

## Borrowed mechanisms: what KADS adopts

- **BCP 14 (RFC 2119, RFC 8174).** The meanings of the five keywords and the rule that only uppercase forms in normative documents carry them. Nothing else.
- **Semantic Versioning 2.0.0**, inspected on 2026-10-06. The meaning of MAJOR, MINOR, and PATCH and the rule that 0.y.z may change at any time. Not adopted: its "public API" as the subject of breaking, which KADS replaces with clause 8.3 (c); pre-release and build labels.
- **Decision records (Nygard).** A decision kept when superseded. Not his section list.
- **Decimal numbering.** The footnote to proposition 1 of the *Tractatus Logico-Philosophicus* in the Ogden translation, inspected on 2026-10-06 at the Klement side-by-side edition, reads: "The decimal figures as numbers of the separate propositions indicate the logical importance of the propositions, the emphasis laid upon them in my exposition. The propositions n.1, n.2, n.3, etc., are comments on proposition No. n; the propositions n.m1, n.m2, etc., are comments on the proposition No. n.m; and so on." KADS adopts the second sentence, that a deeper number elaborates the one above it. It does not adopt the first: a KADS number says how specific a statement is, not how important. The attribution left the specification because a reader needs no Wittgenstein to read a KADS number.

The editorial rule that follows, adopt the required property and not the surrounding ontology and say which, is now in [Contributing](../../CONTRIBUTING.md#what-belongs-in-the-specification). It binds the editors, not adopters, so it is not a clause.

## Does this change the rules for adopters or the rules for KADS itself?

Mostly the rules for KADS itself. The five admission functions and the borrowed-mechanism rule are editorial rules in Contributing. For adopters, no requirement was added or strengthened; the changes are relocations, splits, mergers, and the removal of eight SHOULDs or MAYs that were means, duplicates, or permissions nothing denied.

## Review owed under Contributing

Rules admitted without an observed case, reviewed with "would we add this today?": 4.1 kept; 6.2 kept; 3.5 (c) kept, observed in KADS's own releases; 2.3 reachability kept, observed when the orphan check found an unlinked page; 7.1.5 (c) reasons kept; the exception-list dates in conformance kept. Retired: 2.6 of 0.8.0, which rested on an observed case but prescribed a means; the outcome it served is 2.2.

## Unresolved, for the maintainer

- **8.4.** The maintainer decided on 2026-10-02 that Semantic Versioning is enforced for derived documents. 0.9.0 keeps that in its minimal form and drops the requirement to state what counts as breaking. Settled the same day in [J-035](../version-semantics/README.md): the classes of 8.3 are read for the document, the conformance page no longer requires the adoption note to carry a version of its own, and the defender's dissent on that point is kept there.
- **ADR-001 to ADR-003.** Still proposed. ADR-003 proposed the mechanical-freshness SHOULD that 0.9.0 moved to guidance; it should be marked rejected or superseded by the maintainer.
- **The permission-sentence criterion.** Contributing now says such a sentence stays only where a reviewer could plausibly demand the thing it permits. Applied here it kept 2.1 (c), 2.3's evidence sentence, 4.1 (d), 4.2 (b), 7.1.1's version-history MAY, and removed those in 1.4, 3.6, 7.1.1, 7.1.3, 7.1.5. The maintainer may draw the line elsewhere.

## Rejected alternatives

A new clause 4.4 for historical method (folded into 4.3 instead). A new clause 3.7 for quantities (kept in 6.1 as item b). Deleting 2.3 outright (the readability MUST had no other home). Deleting 8.4 outright (the maintainer's decision stands). Removing the storage-label sentence from 5.2 and the closing sentence of the Subject term (both change what a reviewer can conclude). Keeping the Tractatus attribution in the preface with a verified citation (verified, but it aids no reading of a clause).

## What would reopen this

An adopter who cannot decide a conformance question that 0.8.0 text decided, or a reviewer who reads a relocated sentence as still binding. Either arrives as a [proposal](../../proposals/README.md).
