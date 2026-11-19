# J-022  -  Machine-readable knowledge graph or schema-validated metadata (deferred)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** DEFER, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No change. ADR-001 remains the single place where the deferral is recorded. The registry now asks for its labels to be used verbatim so that plain search finds every use.

## Evaluation record

```yaml
candidate:
  id: J-022
  title: "Machine-readable knowledge graph or schema-validated metadata"
  source: "Knowledge-graph and schema practice generally; no single source cited."
  original_problem: "Tools cannot traverse relationships written as prose links."
  proposed_kads_rule: "Reject for Core; defer an optional mapping."

evaluation:
  expected_benefit: "Automated traversal and validation"
  cognitive_cost: "high"
  authoring_cost: "high"
  maintenance_cost: "high"
  tooling_dependency: "high"
  interoperability_value: "high"
  traceability_value: "high"
  retrieval_value: "medium"
  machine_readability_value: "high"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "high"
  bureaucracy: "high"
  over_modeling: "high"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "medium"
  misuse_risk: "A second metadata copy that drifts from the visible text"

decision:
  disposition: DEFER
  target_layer: NONE
  rationale: "KADS removed its schema and linter in 0.2.0 for stated reasons, and no adopter has asked for them back."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability DEFER/NONE, Operations DEFER/GUIDANCE, AI and retrieval MODIFY/PROFILE, Standards DEFER/NONE.

### Arguments for adoption

- **Minimalist:** Version 0.2.0 removed the schema and linter on evidence; front matter is optional and labeled links suffice.
- **Cognitive load:** Version 0.2.0 already removed the schema and linter; labelled links are readable by people and adequate for machines.
- **Traceability:** KADS removed its schema and linter in 0.2.0 for cause; labeled Markdown links are inspectable by any reader, and a machine graph adds a second copy that drifts from the prose.
- **Operations:** A required graph or schema was removed in 0.2.0 for good reason: it turned documentation into form-filling and needed tooling. Deferring a mapping contract until an adopter needs it is consistent.
- **AI and retrieval:** Rejecting a schema, validator, or graph in Core is right. A second metadata graph drifts from the prose, and KADS already removed that tooling once for cause.
- **Standards:** 0.2.0 removed the schema and linter deliberately; nothing has changed, and ADR-001 already records the deferral.

### Arguments against adoption

- **Minimalist:** No credible counterargument. ADR-001 already records the deferral, so no further record is needed.
- **Cognitive load:** No credible counterargument: schema-validated metadata is the definition of fields an author must maintain for a consumer that does not yet exist.
- **Traceability:** No credible counterargument against deferral: every traceability question KADS asks can be answered by reading and following links. The one cost of having no schema is that free-form labels ('Backed by', 'See evidence') defeat text search, which is the only tool-free way to find all dependents of a changed source.
- **Operations:** The package adds rules whose only scalable enforcement is a script (orphans, on-page status, applicability, stale execution statements) while refusing any stable thing for a script to find. Without fixed spellings each project and each agent formats 'Status', 'Applies to', and 'Last executed' differently, and repositories maintained partly by agents drift fastest. That is not a knowledge graph; it is three literal strings.
- **AI and retrieval:** Deferring everything ignores that the minimal convention already half exists and has a retrieval hole. The nomenclature names the fields (id, type, title, status, updated) and permits front matter 'instead' of visible text. Front matter is exactly what most renderers hide and most chunkers strip or attach only to the first chunk, so a record whose status 'superseded' lives only in front matter is retrieved as plain current text. Relations have no named keys at all, so adopters using front matter invent incompatible ones.
- **Standards:** No credible counterargument for adopting now. One caution on the deferred item: a KADS-specific 'mapping contract' would itself recreate existing standards; if the need arises the mapping should target PROV-O, SKOS, or JSON-LD rather than a new KADS schema.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If adopted, front matter would be filled to satisfy the validator and trusted because it validated.
- **Traceability:** A source changes and the maintainer searches for 'Supported by' but half the corpus used other wording, so dependent conclusions are missed.
- **Operations:** Projects write their own checkers against their own ad hoc conventions; nothing is portable, and in a multi-team repository each team's banner format differs so no corpus-wide check is possible.
- **AI and retrieval:** status: superseded sits in YAML; the body chunk is retrieved without it and contradicts the replacement record in the same context window.
- **Standards:** When the trigger arrives, a bespoke KADS graph format is designed instead of a mapping to an existing one.

### Tradeoffs

No machine validation of relationships.


### Final assessment

KADS removed its schema and linter in 0.2.0 for stated reasons, and no adopter has asked for them back.

**Reopen when:** An adopter needs cross-project graph processing, as ADR-001 already states.
