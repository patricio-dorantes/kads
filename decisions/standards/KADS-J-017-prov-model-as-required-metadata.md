# J-017  -  PROV entity, activity, agent model as required metadata (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Not adopted. The informative correspondence in the relationship registry was corrected: `supersedes` corresponds to `wasRevisionOf` only, and the text now says the correspondence is approximate.

## Evaluation record

```yaml
candidate:
  id: J-017
  title: "PROV entity, activity, agent model as required metadata"
  source: "W3C PROV-DM, Recommendation of 30 April 2013 (inspected 2026-10-03)."
  original_problem: "Provenance recorded differently by every system cannot be exchanged."
  proposed_kads_rule: "Reject as a requirement; keep the informative mapping."

evaluation:
  expected_benefit: "Interchange with provenance tooling"
  cognitive_cost: "high"
  authoring_cost: "high"
  maintenance_cost: "high"
  tooling_dependency: "high"
  interoperability_value: "high"
  traceability_value: "high"
  retrieval_value: "low"
  machine_readability_value: "high"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "medium"
  bureaucracy: "high"
  over_modeling: "high"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "medium"
  misuse_risk: "Metadata that restates what the prose already says"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Unanimous on the requirement. The standards challenger found a type mismatch in the existing mapping, which is fixed."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability REJECT/GUIDANCE, Operations REJECT/NONE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** 3.6.1 and 3.3.4 already cover provenance that readers use; PROV triples serve tools KADS does not require.
- **Cognitive load:** 3.6.1 and 3.3.4 state the provenance a reader needs in plain language; PROV's entity, activity, agent triad is a model to learn before a page can be written.
- **Traceability:** Required PROV entity-activity-agent metadata would be a second graph next to the prose, contrary to 4.4, and needs tooling to be useful. The informative correspondence preserves the option of a later mapping.
- **Operations:** PROV serialization requires tooling and a graph nobody in a repository team will maintain by hand; the informative mapping is enough.
- **AI and retrieval:** Rejection is correct. Entity, activity, and agent triples are unreadable in prose, cannot be authored reliably by hand or by an agent, and a retriever gains nothing from them that a sentence stating who collected what, when, and how does not give.
- **Standards:** Requiring entity, activity, agent records would recreate PROV inside KADS; a mapping lets tools use PROV itself when needed.

### Arguments against adoption

- **Minimalist:** No credible counterargument.
- **Cognitive load:** No credible counterargument to rejection as a requirement. Mild objection to the status quo: the informative PROV correspondence in the registry is reading matter that no clause depends on.
- **Traceability:** The rejection is right on cost, but the existing correspondence covers only three relations and omits agent and activity, which are the parts of PROV that answer 'who or what produced this, in which run'. KADS already has the corresponding concepts (author of record in 3.3.4, run identifier in 3.4.4, authorizer in 4.6) and does not say so, so the claimed 'documented starting point' for interchange is incomplete. One real gap also surfaces: no clause requires the collector of evidence to be identifiable; 3.6.1 lists location, version, role, and limits only.
- **Operations:** No credible counterargument to rejecting the requirement. The only operational angle is agent-maintained repositories, where who or what produced a change can be captured at no human cost by commit trailers; that is already within 3.3.4's SHOULD and needs no PROV model.
- **AI and retrieval:** No credible counterargument to rejecting PROV as required metadata. The legitimate residue, that 3.3.4's 'which content was generated and which was verified by a person, and how' has no stated form, is an authorship-disclosure gap handled under J-030, not a reason to adopt PROV.
- **Standards:** No credible counterargument for making PROV mandatory. But 'keep the informative mapping' keeps an error: registry/relationships.md maps 'supersedes' to 'wasInvalidatedBy', which in PROV-DM relates an entity to an activity, not to a replacing entity, and 'evidenced-by' to 'wasGeneratedBy together with used' is a strained fit.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If required, authors would fill provenance triples for trivial pages and readers would get a graph instead of a sentence.
- **Traceability:** A later mapping effort discovers that half the PROV model has no stated KADS counterpart and invents one inconsistently per adopter.
- **Operations:** If required, provenance metadata would be generated by the same agent that generated the content, giving formal-looking records with no independent value.
- **AI and retrieval:** If adopted, agents would emit complete-looking provenance blocks for content whose provenance they do not know, which is fabricated provenance in a trusted format.
- **Standards:** A future interchange tool implements the recorded correspondence and emits invalid PROV.

### Tradeoffs

No machine interchange of provenance.


### Final assessment

Unanimous on the requirement. The standards challenger found a type mismatch in the existing mapping, which is fixed.

**Reopen when:** An adopter needs to exchange provenance with a PROV-based system. Any future form would be a mapping onto existing W3C vocabularies, not a new schema.
