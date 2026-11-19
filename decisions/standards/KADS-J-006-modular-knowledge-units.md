# J-006  -  Modular self-contained knowledge units (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No change. The knowledge model keeps its position: split only when it enables independent maintenance, reuse, provenance, or review.

## Evaluation record

```yaml
candidate:
  id: J-006
  title: "Modular self-contained knowledge units"
  source: "S1000D data modules (overview at s-series.org inspected 2026-10-03); DITA 1.3 topics."
  original_problem: "Monolithic manuals cannot be reused or updated piece by piece."
  proposed_kads_rule: "Reject further modularization."

evaluation:
  expected_benefit: "Already obtained by the knowledge-object concept"
  cognitive_cost: "medium"
  authoring_cost: "medium"
  maintenance_cost: "high"
  tooling_dependency: "medium"
  interoperability_value: "medium"
  traceability_value: "low"
  retrieval_value: "medium"
  machine_readability_value: "medium"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "high"
  over_modeling: "high"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "medium"
  misuse_risk: "One file per concept, which the knowledge model already warns against"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Unanimous. KADS already took the idea at the right strength."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability REJECT/NONE, Operations REJECT/NONE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** The knowledge model already says to keep content together unless splitting enables independent maintenance, reuse, provenance or review. That is the principle at the right strength.
- **Cognitive load:** The current position (keep content together unless splitting enables independent maintenance, reuse, provenance, or review) minimizes clicks for the reader and file decisions for the author.
- **Traceability:** The knowledge model already ties splitting to independent maintenance, reuse, provenance, or review, so modularity is available exactly when provenance needs it.
- **Operations:** The current position (keep content together unless splitting enables independent maintenance, reuse, provenance, or review) already covers the legitimate cases, including per-team ownership in large repositories.
- **AI and retrieval:** Rejection is correct for file-level modularization: small modules fragment context, multiply near-duplicate chunks, and make each retrieved unit less able to stand alone, the opposite of what retrieval needs.
- **Standards:** KADS already has the concept (knowledge object, canonical home) without the container; data modules and DITA topics need a CSDB or map tooling to be useful.

### Arguments against adoption

- **Minimalist:** No credible counterargument: any stronger rule forces file splitting, which the design rationale explicitly warns against ('a chain of tiny pages').
- **Cognitive load:** No credible counterargument: forced modularity turns a ten-line how-to into several files and makes the reader traverse them, which the authoring guide already warns against ('a chain of tiny pages').
- **Traceability:** Weak objection only: a claim can be cited precisely only if the unit containing it is addressable, and heading anchors change when headings are reworded. Clause 3.5.1 (internal links MUST resolve) already catches the breakage, so I find no credible argument for more modularity.
- **Operations:** No credible counterargument to rejecting further modularization: the operational risk runs the other way. Over-split procedures that send an operator through five links during an incident are worse than a monolith, and legacy repositories cannot afford a re-chunking project. The only gap is that the knowledge model does not say this for procedures.
- **AI and retrieval:** The rejection treats the question as settled when the real unit of reuse in an AI-read corpus is the heading-delimited section, not the file. KADS says a knowledge object 'need not have a separate file' but never says it should be addressable; a finding buried mid-paragraph under a generic heading cannot be deep-linked, cited by clause 3.3.1's 'specific passage', or retrieved as a unit.
- **Standards:** The rejection is not fully consistent with J-014, which asks every section to survive out-of-context reading; that is modular self-containment by another name, so the package adopts the principle while claiming to reject it. 'Already at the right strength' is asserted with no adopter evidence either way.

### Failure modes

- **Minimalist:** n/a if rejected; if adopted, corpora fragment into single-paragraph files with ID overhead.
- **Cognitive load:** If adopted, authors would split to satisfy the rule, and readers would assemble the answer from fragments.
- **Traceability:** Mandatory modules would multiply files and metadata, and each split creates a new derived-summary relationship that must be kept consistent under 3.2.2.
- **Operations:** If modularity were pushed, agent-maintained repositories would fragment pages into many small files, multiply links to maintain, and create orphans (J-021).
- **AI and retrieval:** A page holds five knowledge objects under one heading; the chunker splits on length instead of meaning, and a decision is retrieved without its conditions.
- **Standards:** Readers familiar with S1000D or DITA assume a KADS knowledge object is a data module or topic and expect separate files and typed metadata.

### Tradeoffs

Large pages remain possible; retrieval guidance in J-014 addresses the reader-side cost.


### Final assessment

Unanimous. KADS already took the idea at the right strength.

**Reopen when:** None expected.
