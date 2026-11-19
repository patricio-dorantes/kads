# J-008  -  Applicability statements (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

The technical-document outline and authoring guide show `Applies to:` as a fixed spelling inside the existing scope section, used when scope affects interpretation. The authoring guide adds that a section whose scope differs from its page says so, and that concrete versions beat "current".

## Evaluation record

```yaml
candidate:
  id: J-008
  title: "Applicability statements"
  source: "S1000D applicability, cited only as the origin of the machinery that is not adopted."
  original_problem: "A reader applies guidance to a version or environment it was not written for."
  proposed_kads_rule: "Guidance only: a consistent \"Applies to\" line."

evaluation:
  expected_benefit: "Scope visible in a fixed place"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "low"
  retrieval_value: "medium"
  machine_readability_value: "medium"
  human_readability_value: "high"

risks:
  ambiguity: "low"
  duplication: "medium"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "low"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A second place for scope that drifts from the first"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: GUIDANCE
  rationale: "Clause 3.1.1 already requires scope. The only gain is a predictable spelling, which is guidance. The minimalist objected even to that; the template change is one phrase in an existing prompt."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load MODIFY/GUIDANCE, Traceability ADOPT/GUIDANCE, Operations MODIFY/PROFILE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** A visible 'Applies to:' line is cheap and makes 3.1.1 scope easy to find.
- **Cognitive load:** A one-line 'Applies to:' at the top is the highest benefit-per-character item in the package for a reader arriving cold: it answers 'is this page about my version' before any reading. Cost to a ten-line how-to: one line.
- **Traceability:** Clause 3.1.1 already makes scope a MUST; a consistent 'Applies to:' line in the template makes that scope findable in a predictable place without any machinery.
- **Operations:** A consistent 'Applies to:' line is cheap, greppable, and avoids S1000D applicability machinery. Clause 3.1.1 already makes scope a core duty.
- **AI and retrieval:** A literal, consistently worded 'Applies to:' line is one of the cheapest high-value retrieval aids there is: mixing instructions for two versions is the most common wrong answer in documentation RAG, and a fixed phrase is both embeddable and filterable.
- **Standards:** A visible scope line in the template is a cheap way to satisfy 3.1.1 and needs no clause.

### Arguments against adoption

- **Minimalist:** The technical-document template already has a 'Purpose and scope' section that asks for 'applicable versions or environment'. A second, fixed-label line duplicates it and, shown 'consistently' in template and guide, becomes a de facto required field.
- **Cognitive load:** The template already has a 'Purpose and scope' section whose prompt asks for applicable versions or environment. Adding a separate 'Applies to:' line creates two places for scope on one page, which the author must keep in agreement and the reader must reconcile. If J-014 and J-027 also add their own top-of-page lines, the page opens with three conventions before any content.
- **Traceability:** A scope line asserts applicability but not when or against what it was last confirmed, so a reader cannot tell a checked scope from one copied from the template three versions ago. A page-level line also misleads when one section has a narrower scope than its page.
- **Operations:** Guidance only is too weak exactly where applicability matters: running the right procedure against the wrong version or environment is a leading operational failure, and 3.1.1's 'discoverable' is satisfied by a scope statement on an index page the on-call engineer never opens. The line also rots: 'Applies to: 3.x' survives the 4.0 migration, and in a partially adopted corpus a page without the line is ambiguous between 'applies everywhere' and 'nobody wrote it'.
- **AI and retrieval:** A page-top line protects only the first chunk. The damaging case is a page whose sections differ in scope ('for v1 do X' under one heading, 'for v2 do Y' under the next); the page-level line is then either false or vague, and the section chunk carries nothing. Guidance in a template also reaches only pages created from that template.
- **Standards:** S1000D applicability is a computable filtering mechanism with cross-reference tables; calling a free-text line 'applicability' borrows the name without the thing, and KADS already has a defined term for this, Scope. Introducing 'Applies to' beside 'Scope' creates the synonym problem J-002 is trying to prevent.

### Failure modes

- **Minimalist:** Authors fill it with 'Applies to: all' on every page; the line carries no information and readers learn to skip it, including on the pages where scope matters.
- **Cognitive load:** The line is filled with 'Applies to: all versions' because the template shows it, then goes stale; readers learn to ignore it, including on the pages where it matters.
- **Traceability:** 'Applies to: v2.x' stays on the page after v3 ships; nobody can tell whether it was ever checked against 2.4.
- **Operations:** An operator arrives by deep link from an alert, the page has no applicability line or a stale one, and a procedure valid for the old cluster generation is run against the new one.
- **AI and retrieval:** 'Applies to: all supported versions' at the top; section 4 silently applies only to v2; the v2-only section is retrieved for a v1 question.
- **Standards:** Templates show 'Applies to:' while the specification says 'scope', and authors fill in both differently.

### Tradeoffs

An absent line means scope is unstated, not universal; readers may assume otherwise.


### Final assessment

Clause 3.1.1 already requires scope. The only gain is a predictable spelling, which is guidance. The minimalist objected even to that; the template change is one phrase in an existing prompt.

**Reopen when:** None expected.
