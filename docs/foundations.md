# Design rationale

This page explains why KADS is shaped the way it is: the one constraint behind every rule, and the reasons for its main boundaries. Read it to judge the standard or to propose a change to it. You do not need it to use KADS.

KADS assembles documentation and research practices into a shared authoring and review standard. It does not claim that canonical sources, stable identifiers, provenance, or decision histories are new ideas. Its usefulness should be evaluated through clearer documents and easier maintenance in adopting projects.

## The objective

KADS exists so that technical knowledge, written down once, stays usable and checkable by a reader who was not its author, is not in its original context, reads it later, or reads it through a summary, a generated page, or an excerpt. Such a reader can tell what a document is and what it applies to; which description is authoritative for that scope and whether it has been replaced; what kind of statement each material claim is and on what basis it stands; and can find that basis, or is told that it was not recorded. KADS cannot make knowledge true or keep it true. It can require the structure that lets a reader check it.

Two concerns run through the rules, and one property joins them. The first is about things: what the subject is, its scope, where its authoritative description lives, whether it needs an identifier, where it is in its life, what replaced it, and how it relates to other things (propositions 1, 2, 4, 7). The second is about statements: what kind of statement is made, how strongly it is supported, by what evidence or source, what was observed as against asserted by a source, inherited, inferred, or assumed, by what method, with what limits, and what was actually verified (propositions 3, 5, 6). The property that joins them is that a material answer can be traversed to its basis: where the answer depends on context, reasoning, method, evidence, or sources kept elsewhere, the reader can reach them or is told they were not recorded (clauses 3.1, 3.6, 6.3, 2.3, and 7.2.1 under the research-report profile). The path Index, What, Why, How, Sources in the README names that traversal; it is a way of reading, not a required layout.

| Proposition | Failure it protects against | What goes wrong without it |
|---|---|---|
| 1. Knowledge is written for a reader who arrives with nothing else | A page understood only by people who already know its content | The page is skipped, or applied to the wrong version |
| 2. Each subject has one home | Copies that drift apart | Nobody can say which description is right |
| 3. A claim is no stronger than its support | A guess restated as a fact; an answer whose reasoning cannot be reached | A reader acts on confidence the evidence does not carry |
| 4. Current guidance is kept apart from history | An old page followed as current; a finding quietly overwritten | Whoever relied on it cannot see that it changed |
| 5. Evidence is kept as it was collected | Runs overwritten; evidence tidied or silently redacted | The evidence can no longer support the claim it was collected for |
| 6. A procedure can be followed and its result recognized | A warning read too late; a figure without its unit or scope | Data destroyed; numbers misread |
| 7. Structure is added only where it pays | Identifiers and records on everything | The structure costs more than it saves and stops being maintained |
| 8. A project says what it follows | "We follow KADS" with no version, corpus, or exceptions | The claim cannot be checked, and a copy drifts from the standard |

## Design constraint

The objective is pursued at a bounded cost: KADS exists to reduce the total cost of finding, understanding, verifying, maintaining, and reusing knowledge, not to add structure for its own sake. Its first principle follows from that: a document should explain itself, so that a reader who arrives with no other context can use it. Its second is that a document's subject comes first, and whatever is about the document itself, its history, its authorship, how to change it, comes last and stays short. Both apply to KADS's own documents before they apply to anyone else's. A rule earns its place only when its absence costs readers more than the rule costs authors, and complexity belongs at the lowest layer that needs it: universal principles in the common core, domain rigor in profiles, techniques in guidance. Where KADS asks more of a record, it asks in proportion to the consequence of the record being wrong. The [admission test](../CONTRIBUTING.md#admission-test-for-new-rules) makes this checkable for each proposal, and each release accounts for what it removes as well as what it adds. The reasoning behind individual rules, including proposals that were rejected, is in the [decision records](../decisions/README.md).

## Name and positioning

Knowledge Administration and Documentation Standard names the rules and guidance. Traceable Knowledge Architecture describes the arrangement of answers, reasoning, methods, and sources. The intended distinction is scope and practical use, not a claim that knowledge architecture is a newly invented field.

## Why these boundaries

**A common core with profiles.** Ordinary instructions and research reports have different needs. A small shared core covers scope, navigation, support, and maintenance; tracked records and research requirements apply where needed. Automation is not a maturity level.

**Canonical homes within scope.** One globally unique source for every sentence is impractical. The maintainable unit is a subject with an identified scope. Multiple versions and conflicting sources can coexist when their roles are clear.

**Flexible reading paths.** The objective above asks that a reader can reach an answer's basis; a fixed five-file chain is one way to arrange that and creates unnecessary navigation. One page can provide the complete account.

**Formats can hold knowledge.** A canonical table or diagram should not force a prose duplicate. Derived views need traceability; canonical representations need sufficient context and accessibility.

**Lifecycle and uncertainty differ.** Completion does not imply a conclusive result, acceptance does not establish truth, and evidence access does not establish validity. Those distinctions should remain visible.

**Manual review first.** The standard needs to work through reading and judgment before tooling is designed. Automation may help with mechanical checks without defining the meaning of conformance. Adoption experience showed one place where reading alone is not enough: hand-copied volatile figures go stale faster than any review cycle, so projects that already generate content are advised to check freshness mechanically. [ADR-003](adr/ADR-003-mechanical-freshness-checks.md) records that choice and its limit.

## Evaluating the design

The [evaluation of the standard](standard-evaluation.md) applies the rules to independent illustrative cases and records rationale, tradeoffs, and remaining limits. The [ADR proposals](adr/README.md) preserve KADS design choices. The [artifact space](../artifacts/README.md) is reserved for resources authored for the standard.

The [learning and terminology guide](learning-and-terminology.md) offers optional teaching practices. They clarify how to apply the rules without adding a universal ontology, another conformance profile, or mandatory tooling.

## Open design questions

Three questions are settled by use and not by argument: whether the profiles are easy to select, whether the vocabulary is small enough, and whether maintaining record metadata pays for itself. Projects that apply KADS answer them through [proposals](../proposals/README.md), and those drive revisions. A new name, graph, or schema is not evidence that the standard improves documentation.
