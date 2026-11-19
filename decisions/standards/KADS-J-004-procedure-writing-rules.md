# J-004  -  Procedure writing rules and a Procedure profile (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No profile. Clause 3.5.4: (a) a step that can cause loss of data, loss of service, or another effect that cannot be undone MUST state that effect in or immediately before the step; (b) the statement SHOULD give the way to avoid or recover; (c) an unexecuted procedure SHOULD say so. The other draft rules, one action per step, condition before action, expected result, substitution values, are authoring guidance. A Procedure profile is deferred.

## Evaluation record

```yaml
candidate:
  id: J-004
  title: "Procedure writing rules and a Procedure profile"
  source: "ASD-STE100 procedural rules and common technical-manual practice. The draft attributed \"warnings before the step\" to ANSI Z535.6; that attribution was not confirmed and is withdrawn."
  original_problem: "A step that hides a condition, a hazard, or two actions is executed wrongly under time pressure."
  proposed_kads_rule: "New optional Procedure profile, draft clauses 7.2 to 7.6."

evaluation:
  expected_benefit: "Prevents a reader from causing an irreversible effect before reading its warning"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "low"
  retrieval_value: "low"
  machine_readability_value: "none"
  human_readability_value: "high"

risks:
  ambiguity: "low"
  duplication: "medium"
  bureaucracy: "medium"
  over_modeling: "low"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A profile makes safety content optional and adds a decision to every adoption"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "The challengers split four to two on a profile. The deciding argument came from the cognitive-load challenger: a warning rule in an optional layer never reaches the ad hoc how-to page where it matters most. The hazard rule is universal and cheap, so it belongs in Core. The operations challenger showed the draft profile was tuned for linear how-to pages and lacked stop, rollback, escalation, and applicability rules; fixing that would have made a nine-clause profile with no adopter evidence."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/CORE, Cognitive load MODIFY/CORE, Traceability MODIFY/PROFILE, Operations MODIFY/PROFILE, AI and retrieval MODIFY/PROFILE, Standards MODIFY/PROFILE.

### Arguments for adoption

- **Minimalist:** Hidden hazards and conditions stated after the action are a real, recurring cause of wrongly executed runbooks; warning-before-step is the one rule here with a safety payoff.
- **Cognitive load:** Hazard-before-step and 'has this been executed as written' are the two statements a cold reader of a runbook most needs and cannot reconstruct; both are cheap to write when true.
- **Traceability:** Clause 3.5.2 says what a procedure contains but not how steps are ordered or whether the procedure was ever run. An optional profile adds domain rigor where it is needed and draft 7.6 gives readers an inspectable execution claim.
- **Operations:** Runbooks are where documentation defects turn into outages, and draft 7.3 (condition first) and draft 7.4 (hazard first) are cheap, checkable by reading one page, and proven in safety-critical practice. An optional profile is the right layer: it does not burden a small repository with no operations.
- **AI and retrieval:** Agents now execute runbooks step by step, and an agent acts on a step as soon as it has read it; condition-before-action and hazard-before-step are the difference between a safe and an unsafe automated execution. draft 7.6 is the best anti-staleness rule in the package.
- **Standards:** Condition-before-action and consequence-before-step are domain-independent, and an optional profile keeps them out of Core.

### Arguments against adoption

- **Minimalist:** A third profile adds five clauses and five MUSTs for something 3.5.2 already half covers, while foundations still lists 'whether the profiles are easy to select' as an open question. draft 7.2 is style policing ('stop the service and confirm it stopped' fails it), draft 7.3 is unreviewable in prose, draft 7.5 restates the completion condition of 3.5.2, and draft 7.6 duplicates 3.3.3 plus the template line 'whether displayed commands are examples or tested procedures'.
- **Cognitive load:** A third profile is the most expensive item in the package: a new section 7, a new term ('Procedure profile'), five clauses, four MUST, and a new per-corpus and per-page decision ('is this how-to a procedure under the profile or only under 3.5.2?'). It creates two tiers of procedure rule, and the reader cannot tell which tier the page in front of them was written under. Worse, it puts the safety content (draft 7.4) in the optional layer, so the ad hoc ten-line how-to, where an unannounced destructive step is most likely, is exactly the page not covered. draft 7.2 ('one action per step' as MUST) is a style rule that reviewers will argue about ('stop the service and wait for exit' is one action or two?).
- **Traceability:** draft 7.6 as worded goes stale invisibly: 'executed as written, when, against which version or environment' does not identify which revision of the procedure text was executed, so a later edit inherits a verification it never had (contrary to the spirit of 3.3.3). The profile also omits why a non-obvious step exists, which is the main thing a future maintainer needs before deleting or reordering it. Finally, an unexecuted procedure is a universal risk; hiding that disclosure in an optional profile lets core-only adopters stay silent.
- **Operations:** The clauses describe a linear how-to, not a runbook. draft 7.2 as a MUST fails on real steps: 'ssh to the bastion and run X', a code block of three commands, 'repeat for each node', waits, and diagnostic branches where 'execution order' does not exist; strict atomization turns a 12-step runbook into 50 steps that operators skim at 3 a.m. The profile omits what operators actually need: when to use and when not to use the procedure, what to do when a step does not produce the expected result (stop, roll back, escalate), who to escalate to, the point of no return, and how placeholders differ from literal values. The evaluation guide already names escalation and recovery informatively, so the profile is weaker than the guidance it replaces.
- **AI and retrieval:** 'Before the step' is satisfied by a warnings section at the top of the page, which is exactly what does not survive chunking: the retrieved chunk is step 7 without the hazard stated 400 lines earlier. And draft 7.6 invites the most dangerous agent fabrication in the package: an agent that rewrites a procedure cannot have executed it, yet will preserve or restate the 'executed as written on <date>' line.
- **Standards:** This is a five-clause rewrite of STE section 5 and military/aerospace technical-manual conventions with a misattributed safety source: Z535.6 is not confirmed to require warnings before the step and does not use the term 'hazard statement'. draft 7.2 imports STE's one-instruction rule without its simultaneous-actions exception, draft 7.5 overlaps 3.5.2's observable completion condition, and no adopter has asked for the profile, which fails the J-031 test.

### Failure modes

- **Minimalist:** Nobody selects the profile because selecting it only adds liabilities; or a team selects it and draft 7.6 execution stamps go stale after the first edit, giving false assurance that a changed procedure 'was executed as written'.
- **Cognitive load:** Few projects declare the profile, so hazards stay unannounced in ordinary how-tos; those that declare it spend review time on step granularity. draft 7.6 becomes a three-field stamp (executed, when, against what) that is copied forward on edit and overstates currency.
- **Traceability:** A runbook says 'executed 2026-03-01 on v4'; three steps are edited in June; readers still trust the execution statement. A maintainer removes a 'pointless' wait step whose reason was never recorded.
- **Operations:** Teams declare the profile, split steps mechanically to pass draft 7.2, and still have runbooks with no abort path; the operator reaches step 7, sees an unexpected result, and has no instruction. Under partial adoption a conformant-looking numbered list hides that the hazard note for a pasted example value (a production hostname left in a code block) was never written.
- **AI and retrieval:** An agent edits step 4, leaves the 'Executed as written against v2.3' statement intact, and the procedure now carries a verification claim for text that was never run. Separately, draft 7.2 'one action' is unjudgeable for compound commands and gets resolved by splitting steps until the procedure is unreadable.
- **Standards:** A runbook team claims the 'Procedure profile' and treats it as a safety-documentation standard, or a regulated adopter finds it conflicts with the Z535.6 or IEC/IEEE 82079-1 rules it is legally bound to.

### Tradeoffs

Runbook-heavy corpora get one mandatory rule and a paragraph of advice, less than the operations challenger asked for.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** Anticipated only; no observed case. Admitted as a MUST on the harm ground: a reader acting on a step can destroy data before reading a warning placed elsewhere.
- **Protected property:** Nothing is stated in a way that leads the reader to act wrongly; closest listed property is current guidance that can be safely followed.
- **How a violation is detected:** Reading one page: a destructive step with no statement at the step.
- **Cost on adoption day:** Move or repeat one warning per destructive step. Nothing for procedures without such steps.


### Final assessment

The challengers split four to two on a profile. The deciding argument came from the cognitive-load challenger: a warning rule in an optional layer never reaches the ad hoc how-to page where it matters most. The hazard rule is universal and cheap, so it belongs in Core. The operations challenger showed the draft profile was tuned for linear how-to pages and lacked stop, rollback, escalation, and applicability rules; fixing that would have made a nine-clause profile with no adopter evidence.

**Reopen when:** An adopter with an operational runbook corpus reports a failure that clause 3.5.4 and the authoring guidance did not prevent. The operations challenger's rule list in this record is the starting point.
