# J-013  -  Reuse by transclusion (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No change. KADS reuses by link with a scope qualifier; projects that already transclude are covered by clause 3.6.2.

## Evaluation record

```yaml
candidate:
  id: J-013
  title: "Reuse by transclusion"
  source: "DITA 1.3 conref and conkeyref. The draft also named keyref, which is indirect addressing and not transclusion."
  original_problem: "Copied passages drift from their source."
  proposed_kads_rule: "Reject."

evaluation:
  expected_benefit: "Exact reuse without copying"
  cognitive_cost: "medium"
  authoring_cost: "medium"
  maintenance_cost: "medium"
  tooling_dependency: "high"
  interoperability_value: "medium"
  traceability_value: "medium"
  retrieval_value: "low"
  machine_readability_value: "medium"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "none"
  bureaucracy: "medium"
  over_modeling: "medium"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "high"
  misuse_risk: "Sources that cannot be read without a build"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Unanimous. It needs tooling, which Core does not assume."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability REJECT/NONE, Operations REJECT/NONE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** Transclusion needs tooling; link plus scope qualifier (3.2.1) works in any format, and 3.6.2 covers projects that already transclude.
- **Cognitive load:** Link-with-scope-qualifier works in every renderer and keeps the source visible to the reader of the raw file.
- **Traceability:** Transclusion needs tooling and, unmarked, actively hides where text came from. Link plus scope qualifier (3.2.1) keeps the source visible to the reader, and 3.6.2 covers projects that transclude anyway.
- **Operations:** Transclusion needs tooling that most adopters do not have, and link-plus-scope reuse works in plain Markdown.
- **AI and retrieval:** Rejection is correct. Transclusion renders the same text into many pages, so an index of rendered output holds N identical chunks that crowd out other results, and an index of sources holds include directives with no content.
- **Standards:** Transclusion needs a processor and breaks plain reading; link with scope qualifier is the tool-free equivalent.

### Arguments against adoption

- **Minimalist:** No credible counterargument.
- **Cognitive load:** No credible counterargument: transclusion lowers duplication for authors with tooling but makes the raw page unreadable for everyone without it, and KADS excludes tooling requirements in 1.1.
- **Traceability:** No credible counterargument: transclusion reduces drift but reduces visible provenance unless the rendered output marks the included passage, which is exactly what 3.6.2 already requires of transformed views.
- **Operations:** Link-only reuse is the wrong default for one case: runbook preambles and shared steps. At 3 a.m. a link to 'see the credentials page' costs time and may point at a system that is down, so operators copy the steps in, and the copy is then a 3.2.1 problem. The author's position leaves that tension unresolved; it is not solved by transclusion but it must be solved somewhere.
- **AI and retrieval:** No credible counterargument. The apparent weakness of link-based reuse, that a retriever does not follow links, is already answered by 3.2.1 and 3.2.2: the summary beside the link carries the gist and its qualifications, which is a better chunk than either a bare link or a transcluded copy.
- **Standards:** The rejection is worded as if KADS opposes transclusion, but 3.6.4 already tells projects to 'generate or link such a figure in preference to copying it by hand', which is transclusion where tooling exists. The DITA attribution is imprecise: conref transcludes; keyref is indirect addressing; conkeyref is the keyed transclusion.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If adopted, pages would render differently per platform and readers of the repository view would see include directives instead of content.
- **Traceability:** A mandated include mechanism would make rendered pages whose paragraphs have invisible origins.
- **Operations:** Runbooks either become link chains nobody can follow under pressure, or accumulate unlabeled copies of shared steps that drift from their canonical home.
- **AI and retrieval:** If adopted, stale transcluded copies and their source would be retrieved together as disagreeing authorities.
- **Standards:** A project using includes or generated snippets is told its practice was 'rejected by KADS'.

### Tradeoffs

Link-based reuse costs the reader a click.


### Final assessment

Unanimous. It needs tooling, which Core does not assume.

**Reopen when:** None expected.
