# J-007  -  Structured, meaning-bearing identifiers (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No change. The nomenclature already forbids encoding the current directory in an ID.

## Evaluation record

```yaml
candidate:
  id: J-007
  title: "Structured, meaning-bearing identifiers"
  source: "S1000D data module codes."
  original_problem: "Locating a module by system and information type in a very large technical publication set."
  proposed_kads_rule: "Reject."

evaluation:
  expected_benefit: "Locating by code in one product hierarchy"
  cognitive_cost: "high"
  authoring_cost: "medium"
  maintenance_cost: "high"
  tooling_dependency: "medium"
  interoperability_value: "low"
  traceability_value: "low"
  retrieval_value: "low"
  machine_readability_value: "medium"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "none"
  bureaucracy: "medium"
  over_modeling: "high"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "medium"
  misuse_risk: "Identifiers that must change when the thing they encode changes"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Unanimous. A code that carries meaning breaks when the meaning changes, which is the opposite of a stable identifier."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability REJECT/NONE, Operations REJECT/NONE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** Stable opaque IDs (4.3) survive reorganization; meaning-bearing codes do not.
- **Cognitive load:** Opaque stable IDs cost the reader nothing to ignore; hierarchical codes are a second language that must be learned before a link can be read.
- **Traceability:** Identifiers that encode meaning break when the meaning changes, and a broken identifier breaks every trace that passes through it. Clause 4.3 and the nomenclature already take the correct position.
- **Operations:** S1000D-style codes encoding system and subsystem break at the first reorganization, and the nomenclature already forbids encoding the current directory.
- **AI and retrieval:** Rejection is correct: hierarchical codes rot when the encoded structure changes, and an ID an agent must derive from a coding scheme is an ID an agent will derive wrongly and confidently.
- **Standards:** Data module codes work because a product breakdown is fixed by the manufacturer; KADS corpora have no stable breakdown, and the nomenclature already cites the rule against encoding location.

### Arguments against adoption

- **Minimalist:** No credible counterargument. The nomenclature already encodes the one stable attribute worth encoding (record type prefix) and forbids encoding location.
- **Cognitive load:** No credible counterargument: the one cheap benefit of meaning-bearing IDs (seeing the record type at a glance) is already delivered by the single-letter type prefix, and anything more breaks on reorganization.
- **Traceability:** No credible counterargument for structured codes. One inconsistency worth recording: the type prefix (C, D, J, T, E, Q) is itself meaning-bearing, so a record that changes type cannot keep its ID without the prefix becoming false.
- **Operations:** The stated reason, 'meaning-bearing codes break when the encoded meaning changes', is too broad and contradicts KADS itself: the prefix C, D, J, T, E, Q encodes type, and operations routinely and safely encode creation date in incident and run identifiers. A blanket rejection gives adopters with INC-2026-10-02-01 style IDs no guidance on what is safe, and clause 3.4.4 already had to explain that a storage label is not a timestamp.
- **AI and retrieval:** The opposite extreme has a retrieval cost the proposal ignores. An opaque ID such as 'D-014' carries no meaning to an embedding and none to a reader of an isolated chunk; 'per D-014' in a retrieved section is a dangling referent unless the retriever also fetches the record.
- **Standards:** The stated reason overreaches: KADS IDs are already meaning-bearing, since the tracked-record prefixes C, D, J, T, E, Q encode type, and a record's type can be reconsidered. The honest principle is 'encode only attributes that cannot change for the life of the record', not 'no meaning in identifiers'.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If adopted, IDs would encode a system breakdown that changes, and every rename would force either ID churn or lying IDs.
- **Traceability:** A conclusion later treated as a decision keeps a C- prefix that misdescribes it, or gets a new D- ID and loses its inbound references.
- **Operations:** Adopters either strip useful date-bearing incident IDs to look conformant, or encode team and service names in IDs because only 'directory' is forbidden, and the IDs break at the next reorganization.
- **AI and retrieval:** A chunk says 'this was reversed by D-022'; the model answers from the chunk without knowing what D-022 decided, or guesses.
- **Standards:** A later reviewer cites this rejection to argue the type prefixes should go, or an adopter is told its component-prefixed local IDs are nonconformant when 4.3 allows them.

### Tradeoffs

None.


### Final assessment

Unanimous. A code that carries meaning breaks when the meaning changes, which is the opposite of a stable identifier.

**Reopen when:** None expected.
