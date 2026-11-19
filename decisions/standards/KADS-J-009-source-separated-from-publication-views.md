# J-009  -  Source knowledge separated from publication views (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No change. Clauses 3.2.1, 3.2.2, and 3.6.2 already carry the principle.

## Evaluation record

```yaml
candidate:
  id: J-009
  title: "Source knowledge separated from publication views"
  source: "S1000D Common Source Data Base; DITA maps; single-source publishing."
  original_problem: "The same content maintained separately in each publication drifts."
  proposed_kads_rule: "Reject a new rule; already covered."

evaluation:
  expected_benefit: "Already obtained by canonical homes and derived views"
  cognitive_cost: "low"
  authoring_cost: "none"
  maintenance_cost: "none"
  tooling_dependency: "none"
  interoperability_value: "medium"
  traceability_value: "medium"
  retrieval_value: "low"
  machine_readability_value: "low"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "high"
  bureaucracy: "low"
  over_modeling: "low"
  premature_standardization: "none"
  vendor_or_tool_lock_in: "low"
  misuse_risk: "A second rule that restates 3.2.1 and 3.6.2"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Unanimous."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability REJECT/NONE, Operations REJECT/NONE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** 3.2.1, 3.6.2 and the 'derived view' term already separate maintained source from views.
- **Cognitive load:** Canonical home, derived view and 3.6.2 already give the reader the one thing that matters: where the maintained source is.
- **Traceability:** Canonical home (3.2.1), derived view, and 3.6.2 (generated views MUST identify maintained sources and transformations) already let a reader of a published view trace back to its source.
- **Operations:** Canonical home (3.2.1), derived view, and 3.6.2 already separate maintained sources from published views without requiring a CSDB or publishing pipeline.
- **AI and retrieval:** Already covered by 3.2.1, 3.6.2, and the 'Artifact/source boundaries' line of the adoption note; a new rule would restate them.
- **Standards:** Canonical home (3.2.1), derived view, and 3.6.2 already separate maintained source from publication; a CSDB or DITA map is the tooling form of the same idea.

### Arguments against adoption

- **Minimalist:** No credible counterargument to rejecting a new rule. The objection is to 'record the mapping': a standards-to-clauses mapping table is a new maintained document that must be updated at every clause change.
- **Cognitive load:** No credible counterargument to rejecting a new rule. The objection is to 'record the mapping': a mapping table from S1000D and DITA terms to KADS clauses is itself a derived view someone must maintain and read.
- **Traceability:** No credible counterargument: the traceability need here is 'from a rendered or generated view, find the maintained source', and 3.6.2 states it as a MUST. A CSDB-style separation would add tooling without adding any trace that is missing today.
- **Operations:** No credible counterargument: every operational case I tested (rendered documentation sites, wiki exports, runbooks generated from templates, dashboards) is handled by 3.6.2's duty to identify the maintained source and the edit location. A new rule would only duplicate it. The one cost is that a recorded mapping to S1000D and DITA is itself a page to maintain, which is small.
- **AI and retrieval:** No credible counterargument to rejecting a new rule. The one retrieval-specific concern, that a source and its generated view are both indexed and returned as two agreeing 'independent' sources, is answered by 3.6.2 as long as the view identifies itself in its own text.
- **Standards:** No credible counterargument against rejecting a new rule. The objection is to 'record the mapping': placing S1000D and DITA in docs/sources.md under a page headed works KADS 'draws on or aligns with' would imply alignment with specifications KADS has deliberately not followed, one of which is a registered trademark.

### Failure modes

- **Minimalist:** A mapping page listing S1000D, DITA and CSDB against clause numbers goes stale at the next release and nobody notices.
- **Cognitive load:** A 'correspondences' appendix accumulates one row per rejected external concept and becomes a second glossary.
- **Traceability:** A new rule would duplicate 3.6.2 and produce two clauses to cite for one finding.
- **Operations:** If a rule were added, small repositories with no publishing step would have to declare a source and view distinction that does not exist for them.
- **AI and retrieval:** If a generated view carries its source notice only in a build config or file header that chunking drops, the duplicate looks like corroboration.
- **Standards:** An adopter reads the sources page and describes its corpus as S1000D- or DITA-aligned.

### Tradeoffs

None.


### Final assessment

Unanimous.

**Reopen when:** None expected.
