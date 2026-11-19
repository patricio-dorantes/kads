# J-023  -  A reader question as the admission test for new vocabulary (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Item 7 of the admission test in CONTRIBUTING: a proposed type, status, or relation names the reader question the existing vocabulary cannot answer and the real document where it arose. Both registries link to it. The term "competency question" is not used.

## Evaluation record

```yaml
candidate:
  id: J-023
  title: "A reader question as the admission test for new vocabulary"
  source: "Gruninger and Fox, \"Methodology for the Design and Evaluation of Ontologies\", IJCAI-95 workshop, 1995 (listing page inspected 2026-10-03; paper not inspected). Adapted informally from their competency questions."
  original_problem: "Vocabularies grow by analogy until nobody can apply them consistently."
  proposed_kads_rule: "Guidance in the registries and CONTRIBUTING."

evaluation:
  expected_benefit: "New types and relations must earn their place"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "none"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "low"
  retrieval_value: "none"
  machine_readability_value: "none"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "none"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A plausible question invented to justify a term that is already wanted"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: GUIDANCE
  rationale: "Unanimous once merged with J-001 and J-031 and phrased without the borrowed term. Four challengers added the requirement for a real instance."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/GUIDANCE, Traceability ADOPT/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** Vocabularies do grow by analogy, and asking what reader question a new term answers is a cheap filter.
- **Cognitive load:** Asking 'which reader question can the current vocabulary not answer' is a cheap, concrete brake on vocabulary growth, and vocabulary is the part of KADS with the highest learning cost.
- **Traceability:** Asking 'which reader question can the existing vocabulary not answer' gives every vocabulary addition a recorded reason for existing, which is traceability applied to the standard itself.
- **Operations:** Vocabularies do grow by analogy, and asking what reader question a new type or relation answers is a cheap filter that needs no tooling.
- **AI and retrieval:** Tying each vocabulary addition to a reader question keeps the relation set small, which is what makes consistent labeling by many authors and agents possible at all.
- **Standards:** Requiring a named reader question before a type or relation is added is a cheap brake on vocabulary growth.

### Arguments against adoption

- **Minimalist:** It is the vocabulary case of the J-031 admission test, proposed for three homes (two registries and CONTRIBUTING). Three copies of one sentence violates 3.2.1 in the standard's own repository, and 'competency question' is jargon KADS would then have to define.
- **Cognitive load:** 'Competency question' is itself a term of art from ontology engineering that contributors would have to learn in order to apply a one-sentence test. It would also be the third admission test in CONTRIBUTING alongside J-001 (MUST restraint) and J-031 (rule admission), and it is stated in two places (registries and CONTRIBUTING), which is a canonical-home problem under 3.2.1.
- **Traceability:** The test is proposed for future contributors but was not visibly applied in this package: J-018 rejects ten relations and J-016 nine types without stating the competency question each fails. A test that is not applied to its own batch has no worked example and its results cannot be audited.
- **Operations:** A competency question alone rejects nothing: any proposer can phrase one ('which records refine which?'). The filter works only when paired with an actual instance from a corpus and a demonstration that the existing vocabulary gives a wrong or lossy answer. It also lives in CONTRIBUTING, which governs changes to KADS, while most vocabulary growth happens in adopters' local extensions that never read CONTRIBUTING.
- **AI and retrieval:** A question is the cheapest thing a fluent agent can produce. Any proposed relation can be given a plausible 'reader question the existing vocabulary cannot answer', so the test filters human hesitation, not bad proposals.
- **Standards:** The term is borrowed loosely: in Gruninger and Fox, competency questions are queries the ontology must answer, formalized in first-order logic and used to evaluate the ontology, not a one-line justification for a new label. It also creates a second admission test beside J-031 and the restraint rule in J-001, three overlapping gates for one decision.

### Failure modes

- **Minimalist:** The sentence is updated in CONTRIBUTING and not in the registries, or proposers write a ritual 'question' line that nobody evaluates.
- **Cognitive load:** Proposers write a pro forma question ('what refines what?') that any relation trivially answers, and the test filters nothing.
- **Traceability:** The competency question becomes a form field filled with a restatement of the proposed term ('answers: what refines what?').
- **Operations:** Every proposal arrives with a plausible question attached, the test becomes a ritual sentence in pull requests, and local extensions proliferate untested.
- **AI and retrieval:** An agent proposing 'refines', 'elaborates', and 'motivates' supplies a well-formed competency question for each and all three pass.
- **Standards:** Contributors familiar with ontology engineering expect formal competency questions and evaluation; others satisfy the rule with a rhetorical question.

### Tradeoffs

None of substance.


### Final assessment

Unanimous once merged with J-001 and J-031 and phrased without the borrowed term. Four challengers added the requirement for a real instance.

**Reopen when:** None expected.
