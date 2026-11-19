# J-012  -  Information typing: kinds of knowledge versus kinds of document (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No table. The knowledge model now holds the single list of statement kinds, observation, inference, assumption, hypothesis, conclusion, recommendation, decision, and one paragraph saying that kinds of statement and kinds of document are separate axes and that neither requires a label. The authoring guide's reader-need table remains the only list of document kinds.

## Evaluation record

```yaml
candidate:
  id: J-012
  title: "Information typing: kinds of knowledge versus kinds of document"
  source: "DITA 1.3 topic types concept, task, reference (OASIS overview inspected 2026-10-03); Diataxis tutorial, how-to, reference, explanation (site inspected 2026-10-03)."
  original_problem: "Mixed-purpose pages serve no reader well; and kinds of knowledge get confused with kinds of document."
  proposed_kads_rule: "An informative two-axis table in the knowledge model."

evaluation:
  expected_benefit: "One list of statement kinds; the two axes named once"
  cognitive_cost: "low"
  authoring_cost: "none"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "medium"
  retrieval_value: "low"
  machine_readability_value: "low"
  human_readability_value: "medium"

risks:
  ambiguity: "medium"
  duplication: "high"
  bureaucracy: "low"
  over_modeling: "high"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A classification scheme that authors feel obliged to apply to every page"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: GUIDANCE
  rationale: "Determination requested by the brief: observation, inference, assumption, hypothesis, conclusion, recommendation, and decision are kinds of knowledge. Tutorial, how-to, reference, explanation, report, decision record, and troubleshooting guide are kinds of document or view. Procedure, concept, and evidence are neither cleanly: a procedure is a document kind that carries several statement kinds, and evidence is a role an artifact plays. Two challengers rejected the table as a third classification scheme; four wanted one list in one place. A paragraph satisfies both."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability MODIFY/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** Authors do confuse a kind of document with a kind of knowledge, and one sentence saying a document may carry several kinds helps.
- **Cognitive load:** Separating 'what kind of knowledge' from 'what kind of document' explains why a how-to may contain an assumption, and could stop people asking for per-type documents.
- **Traceability:** Separating epistemic kinds from document kinds explains why a how-to can contain both observations and decisions, and it does so without requiring type metadata.
- **Operations:** Saying plainly that a document is a view that may carry several kinds of knowledge prevents the common mistake of forcing one type per page, and guidance costs adopters nothing.
- **AI and retrieval:** Separating what a statement is (observation, inference, decision) from what container it sits in (how-to, report, index) is the right mental model and stops agents from treating 'it is in the reference page' as evidence of fact.
- **Standards:** Distinguishing what a statement is from what kind of page carries it is useful and keeps type metadata off ordinary documents.

### Arguments against adoption

- **Minimalist:** An 'informative' two-axis table of 8 epistemic kinds by 7 document kinds is a 56-cell ontology introduced through guidance, in a standard whose rationale says it adds no 'universal ontology'. The knowledge model already defines four reasoning terms and the authoring guide already has the reader-need table; this would be a third classification of the same material.
- **Cognitive load:** This is the worst cost-to-benefit ratio in the package: fifteen labels on two axes, informative, with no clause using them. It would be the third classification an author meets, after the six-row reader-need table in the authoring guide and the six record types, and its eight epistemic kinds disagree with the four roles in 3.3.2 and the five in the J-015 proposal. 'Procedure knowledge' is not an epistemic kind, and 'a document is a view' collides with the defined term 'derived view'. A reader arriving cold gains nothing; an author gains a pre-writing classification decision.
- **Traceability:** It would create a third inconsistent list of epistemic kinds: 3.3.2 names observation, inference, recommendation, decision; the knowledge model names observation, inference, conclusion, decision; J-015 adds assumption and hypothesis; this table lists eight. That violates the proposed J-002 inside the standard itself and leaves a reviewer unable to say which kinds 3.3.2 actually obliges authors to distinguish.
- **Operations:** It adds a third classification next to the six record types and the reader-needs table, with a role list (eight kinds) that matches neither 3.3.2 (four roles) nor the J-015 proposal (five). 'Procedure knowledge' is not an epistemic kind in the sense the others are. The view axis omits the documents operations actually write: runbook, incident review, known-issue or limitation note, architecture overview. Informative taxonomies get implemented as required metadata by diligent teams and agents.
- **AI and retrieval:** As proposed it creates a third, different enumeration of epistemic kinds. Clause 3.3.2 lists observation, inference, recommendation, decision; the knowledge model lists observation, inference, conclusion, decision; J-015 adds five terms to section 2; this table lists eight, drops 'recommendation', and adds 'procedure knowledge', which is not an epistemic kind at all. Three lists retrieved together are contradictory context about the standard's own core vocabulary.
- **Standards:** The table reproduces Diataxis (already cited) on one axis and invents a second epistemic taxonomy on the other, which foundations.md says KADS does not add ('without adding a universal ontology'). 'Procedure knowledge' is not an epistemic kind, DITA information typing covers only the document axis, and the package would then carry three different role lists (3.3.2, J-012, J-015).

### Failure modes

- **Minimalist:** The table becomes the vocabulary people classify with: reviewers ask 'which cell is this page?', and hypothesis, assumption and 'procedure knowledge' drift toward record types, which is J-016 by the back door.
- **Cognitive load:** Authors treat the table as a required taxonomy and start labelling pages and paragraphs; reviewers debate whether a sentence is a hypothesis or an assumption.
- **Traceability:** A reviewer cites the informative table to demand that 'hypothesis' be distinguished; the author answers that 3.3.2 does not name it; neither can be shown wrong.
- **Operations:** Three inconsistent lists of roles lead reviewers to argue about whether something is an inference or a conclusion, and an agent adds 'kind:' front matter to every page because the table exists.
- **AI and retrieval:** An agent asked to label or summarize by role picks whichever list was retrieved; one corpus ends up with 'hypothesis', 'assumption', 'claim', and 'recommendation' used inconsistently, and the informative table gets treated as a required type system.
- **Standards:** The informative table becomes the de facto type system that J-016 rejects, and authors start labeling statements.

### Tradeoffs

No visual map of the two axes.


### Final assessment

Determination requested by the brief: observation, inference, assumption, hypothesis, conclusion, recommendation, and decision are kinds of knowledge. Tutorial, how-to, reference, explanation, report, decision record, and troubleshooting guide are kinds of document or view. Procedure, concept, and evidence are neither cleanly: a procedure is a document kind that carries several statement kinds, and evidence is a role an artifact plays. Two challengers rejected the table as a third classification scheme; four wanted one list in one place. A paragraph satisfies both.

**Reopen when:** None expected.
