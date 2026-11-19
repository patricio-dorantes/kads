# J-018  -  Relationship vocabulary additions (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No relations added. The registry table now gives each directed relation its inverse reading label, stated to be the same relation written from the target. `supports`, `evidence_for`, and `implements` are those inverse readings. `explains` overlaps `supported-by`. `references` is an ordinary link or `related-to`. `superseded_by` remains the inverse reading of `supersedes`, as the maintainer decided on 2026-10-02. `refines` is rejected with a reopening condition.

## Evaluation record

```yaml
candidate:
  id: J-018
  title: "Relationship vocabulary additions"
  source: "The candidate list in the evolution brief."
  original_problem: "Readers cannot express how two pieces of knowledge relate."
  proposed_kads_rule: "Reject all additions; defer refines."

evaluation:
  expected_benefit: "More precise links"
  cognitive_cost: "medium"
  authoring_cost: "medium"
  maintenance_cost: "medium"
  tooling_dependency: "none"
  interoperability_value: "medium"
  traceability_value: "medium"
  retrieval_value: "low"
  machine_readability_value: "medium"
  human_readability_value: "low"

risks:
  ambiguity: "high"
  duplication: "high"
  bureaucracy: "medium"
  over_modeling: "high"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Near-synonym relations chosen inconsistently"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Five challengers rejected every addition. The traceability challenger dissented on `refines`, arguing that narrowing a record without replacing it cannot be written as a partial `supersedes`. No adopter case exists yet, so the admission test keeps it out; a rejection with a reopening condition is cheaper to maintain than a deferral."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability MODIFY/PROFILE, Operations REJECT/NONE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** Eleven relations already exceed what most authors remember; inverses and near-synonyms add choice without adding meaning.
- **Cognitive load:** Eleven relations is already at the edge of what an author can choose among without looking them up; every addition makes each labelled link a harder decision.
- **Traceability:** Inverses and near-synonyms would double the vocabulary without adding meaning, and the maintainer's ruling that supersedes has one name with two readings is sound. Deferring until a concrete case appears follows the J-023 admission test.
- **Operations:** Eleven relations are already more than most adopters apply consistently; inverses as separate relations double the maintenance and the maintainer has settled that supersedes is single.
- **AI and retrieval:** Rejecting additions is correct: every near-synonym relation added is a classification choice an agent will make inconsistently, and inconsistent edge labels are worse than fewer labels.
- **Standards:** Inverses and near-synonyms add names without adding reader questions, and the maintainer has already fixed supersedes as the single supersession relation.

### Arguments against adoption

- **Minimalist:** No credible counterargument to rejecting the additions. Mild objection to carrying 'refines' as a standing DEFER: an open deferred item invites reopening without new evidence.
- **Cognitive load:** No credible counterargument to rejecting the additions. Two small objections to the form: carrying 'refines' as a formally deferred item keeps a twelfth relation half-alive in readers' minds, and authors who think in 'supports' or 'implements' will not find those words in the registry.
- **Traceability:** Two objections. First, 'refines' is not expressible today: partial supersedes carries lifecycle consequences (a required reverse link under 4.5 and a 'superseded' reading of the target) that are false when the earlier record stays fully current and the new one only narrows or elaborates it, and related-to throws away direction and meaning. The deferral therefore rests on a claim that does not hold. Second, rejecting implements, supports, and evidence_for as 'inverses' is only valid if the inverse reading may actually be written; the registry spells out an inverse label for supersedes alone, so a maintainer standing at code or a procedure has no sanctioned way to write the link that answers 'why does this exist'.
- **Operations:** People and agents write links from the page they are standing on, so they will write 'Supports', 'Evidence for', and 'Implements' whether or not the registry lists them. The registry gives a human-readable inverse label only for supersedes ('Superseded by'); for every other relation the inverse spelling is left to each author, which defeats grep and makes local extensions appear by accident. Deferring 'refines' until an adopter shows a case is right, but the trigger should be stated in the registry, not only in the workbench.
- **AI and retrieval:** Declaring that 'supports', 'evidence for', and 'implements' are inverses and therefore unnecessary does not stop them being written. Agents and people write from the page they are on, so an evidence record naturally says 'Supports: C-012'. The registry names the inverse label only for supersedes, so every other inverse reading is either an undocumented local extension or silently off-vocabulary.
- **Standards:** Two of the stated reasons are loose: 'explains' is not an overlap of supported-by (explaining is not supporting), and 'references' as related-to turns the weakest relation into a catch-all. If 'refines' is ever admitted it should be mapped to an existing external relation (PROV specializationOf) instead of defined afresh.

### Failure modes

- **Minimalist:** A deferred 'refines' gets adopted at the next round by default because it is 'already on the list'.
- **Cognitive load:** Without a lookup aid, projects declare local relations named 'supports' and 'implements' that duplicate the inverses of existing ones.
- **Traceability:** Authors record an elaboration as partial supersedes, readers treat the parent decision as replaced, or they use related-to and the reasoning chain from general decision to specific decision is unrecoverable. Implementations carry no back-link to the decision that caused them.
- **Operations:** A corpus ends up with 'Supports', 'Evidence for', 'Backs', and 'Used by' as unlabeled local relations, none documented, and a reviewer cannot tell whether they are extensions or sloppy inverses.
- **AI and retrieval:** A corpus accumulates 'Supports', 'Evidence for', 'Backs', and 'Used by' links that no one can map to the registry, and an agent asked to find dependents of a changed source misses them.
- **Standards:** Projects that need 'explains' or 'refines' add local extensions with incompatible meanings because the rejection gave no guidance on how to express them.

### Tradeoffs

Refinement is written as `related-to` with an explanation until a case arrives.


### Final assessment

Five challengers rejected every addition. The traceability challenger dissented on `refines`, arguing that narrowing a record without replacing it cannot be written as a partial `supersedes`. No adopter case exists yet, so the admission test keeps it out; a rejection with a reopening condition is cheaper to maintain than a deferral.

**Reopen when:** An adopter shows a record that narrows or elaborates another, which stays current, and for which `related-to` gave a wrong or ambiguous reading. PROV `specializationOf` is the reference point for a definition.
