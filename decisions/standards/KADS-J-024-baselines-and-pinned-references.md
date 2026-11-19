# J-024  -  Baselines and pinned references (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No new clause. Pinned references are covered; baselines are not adopted. Two residues: the conformance review record SHOULD name the revision reviewed, and the artifact guide notes that a link whose content expires under a retention period is not a preserved source.

## Evaluation record

```yaml
candidate:
  id: J-024
  title: "Baselines and pinned references"
  source: "Software configuration management practice; no single source cited."
  original_problem: "A reference to a moving target silently changes meaning."
  proposed_kads_rule: "Reject a new rule; covered."

evaluation:
  expected_benefit: "Already obtained by clauses 3.3.1, 3.5.1, 6.2, and 6.3"
  cognitive_cost: "low"
  authoring_cost: "none"
  maintenance_cost: "none"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "medium"
  retrieval_value: "none"
  machine_readability_value: "low"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "high"
  bureaucracy: "low"
  over_modeling: "low"
  premature_standardization: "none"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A baseline process imported with nothing to baseline"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Four challengers rejected. The traceability and operations challengers each found a cheap gap, which is closed in conformance and guidance."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability MODIFY/CORE, Operations MODIFY/GUIDANCE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** 3.3.1, 3.5.1, 6.2 and 6.3 already pin versions wherever pinning matters.
- **Cognitive load:** 3.3.1, 3.5.1, 6.2 and 6.3 already make a reader able to tell which version a claim or derivation refers to.
- **Traceability:** Pinned versions for citations (3.3.1), historical claims (3.5.1), and the standard itself (6.2, 6.3) cover references outward; a general baseline rule would duplicate them.
- **Operations:** Pinning is already covered for citations, historical claims, and the standard's own version; another clause would duplicate 3.3.1 and 3.5.1.
- **AI and retrieval:** The substance is covered by 3.3.1, 3.5.1, 6.2, and 6.3; a new clause would be a fifth statement of the same idea.
- **Standards:** Pinned citations are covered by 3.3.1, 3.5.1, 6.2, and 6.3; adding configuration-management vocabulary would import a process KADS does not have.

### Arguments against adoption

- **Minimalist:** No credible counterargument.
- **Cognitive load:** No credible counterargument: a 'baseline' concept would add a term and a ceremony for something version references already do.
- **Traceability:** One baseline is missing and it is the one a conformance trace depends on: the review record required by 6.4 and conformance.md carries scope, date, reviewer, and unresolved exceptions, but not the revision of the corpus that was reviewed. Covered paths identify where, not which state. A reader cannot tell whether a page was in its present form when the review passed it.
- **Operations:** Coverage is uneven for incident and investigation documents: 3.5.1's version pinning is a SHOULD, and the usual evidence links in an incident review are dashboard and log-query URLs that stop resolving when retention expires (often 15 to 30 days), plus links to files on a moving branch. Nothing tells authors that a link which will expire needs a snapshot, and nothing tells runbook authors the opposite: a procedure should usually follow the current script, not a pinned one. The right answer differs by document kind and the existing clauses do not say so.
- **AI and retrieval:** Covered, but scattered across four clauses and one informative guide, and the operative ones are SHOULD. Agents link to a default branch or a 'latest' URL by default, and none of the covering text is in the agent snippet, so the rule exists where agents are least likely to apply it.
- **Standards:** 'Covered' overstates it and the term is used inaccurately: in configuration management a baseline is a formally agreed set of items at a point in time, not a pinned reference. KADS covers pinned references; it has no corpus-level baseline for adopters (only release tags for KADS itself), and the record should say that this is intentional, not claim equivalence. No source standard is named (ISO 10007 or IEEE 828 would be the citations; not checked).

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If adopted, projects would declare baselines that duplicate tags.
- **Traceability:** A review is recorded in March; the corpus changes heavily; the adoption note still cites the March review and nobody can determine what it actually covered.
- **Operations:** Six months after an incident the review's evidence path is a row of dead dashboard links, the corpus still passes 3.5.1 because the links are external, and the conclusions can no longer be assessed.
- **AI and retrieval:** An agent supports a claim about past behavior with a link to the main branch; the file changes and the citation now points at text that contradicts the claim.
- **Standards:** An adopter in a regulated setting reads 'baselines: covered' and assumes KADS conformance gives it configuration baselines.

### Tradeoffs

None.


### Final assessment

Four challengers rejected. The traceability and operations challengers each found a cheap gap, which is closed in conformance and guidance.

**Reopen when:** None expected.
