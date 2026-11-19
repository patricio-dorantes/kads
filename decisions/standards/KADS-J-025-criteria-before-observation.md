# J-025  -  Criteria fixed before observation; negative results kept (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No change to the specification. Disclosure of post hoc criteria is adopted in 5.4; preregistration itself is not. The agent snippet now tells agents to state a not-found result with what was searched.

## Evaluation record

```yaml
candidate:
  id: J-025
  title: "Criteria fixed before observation; negative results kept"
  source: "Scientific reproducibility practice; no external standard cited."
  original_problem: "Criteria chosen after the result, and null results left unpublished, bias conclusions."
  proposed_kads_rule: "Reject a new rule; covered."

evaluation:
  expected_benefit: "Already obtained by clauses 5.2, 5.4, and 5.7"
  cognitive_cost: "low"
  authoring_cost: "none"
  maintenance_cost: "none"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "high"
  retrieval_value: "none"
  machine_readability_value: "none"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "high"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "none"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Duplicating research-profile rules in Core"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Five challengers found it covered. The AI challenger noted that clause 5.7 binds only research reports; promoting its first sentence to Core is recorded as a deferred idea for the next breaking revision."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability REJECT/NONE, Operations REJECT/NONE, AI and retrieval MODIFY/GUIDANCE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** 5.4, 5.2 and 5.7 already cover post-hoc criteria and negative results; preregistration proper would be research method, which 1.1 excludes.
- **Cognitive load:** 5.4, 5.2 and 5.7 already cover post hoc criteria and negative results in the profile where they belong.
- **Traceability:** 5.4 already requires disclosure when a criterion was chosen after observation and forbids silent reinterpretation of historical runs; 5.2 and 5.7 keep negative and inconclusive results; 3.4.4 prevents overwriting a run.
- **Operations:** Clauses 5.4, 5.2, and 5.7 already cover post-hoc criteria and negative results for research and test reports.
- **AI and retrieval:** 5.4, 5.2, and 5.7 do cover preregistration and negative results for research reports, and 5.7 is well worded.
- **Standards:** 5.2, 5.4, and 5.7 already protect negative results and expose post hoc criteria without demanding a registry.

### Arguments against adoption

- **Minimalist:** No credible counterargument.
- **Cognitive load:** No credible counterargument: a preregistration rule would add a before-the-work artifact for every test, and ordinary documentation has no use for it.
- **Traceability:** No credible counterargument for a new rule. The residual risk is selective retention (dropping an unfavorable run rather than overwriting it), and that is already reached by 3.4.2 (removal leaves a description of the gap) and 5.5 (exclusion policy discoverable). A preregistration mechanism would cost far more than the remaining gap.
- **Operations:** No credible counterargument to rejecting a new research rule. The only gap is outside research: the operational analogue, deciding the abort or rollback criterion before starting a risky change, is not covered for a project that adopts the Procedure profile without the research profile. That belongs in the Procedure profile, not in a new core rule.
- **AI and retrieval:** 'Covered' is true only inside the research-report profile. The most common agent-authored negative result is not in a report: it is 'X is not supported', 'there are no usages', or 'no such option exists', written into ordinary documentation after one search or one failed call. A Core-only adopter has no clause that scopes that statement, and once written it is retrieved as a fact about the system.
- **Standards:** 'Covered' is again too strong: preregistration means fixing and depositing criteria before observation; 5.4 only requires disclosure when a criterion was chosen afterwards, which is a weaker and different control. The protections also sit only in the research-report profile, so a corpus not using that profile has none of them.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If adopted, criteria files would be backdated or written pro forma.
- **Traceability:** A preregistration requirement would be satisfied by backdated criteria files, which 3.3.3 already forbids and which no rule can detect.
- **Operations:** If duplicated in core, small documentation-only repositories would carry a preregistration duty with nothing to apply it to.
- **AI and retrieval:** An agent greps one directory, finds nothing, and writes 'the service has no retry logic' into a reference page; the retry logic lives in a shared library.
- **Standards:** KADS is described as implementing preregistration, which a research reviewer would reject.

### Tradeoffs

Outside research reports, scoping a negative result is advice.


### Final assessment

Five challengers found it covered. The AI challenger noted that clause 5.7 binds only research reports; promoting its first sentence to Core is recorded as a deferred idea for the next breaking revision.

**Reopen when:** A case where a not-found claim in an ordinary document misled a reader.
