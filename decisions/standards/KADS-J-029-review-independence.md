# J-029  -  Review independence proportional to consequence (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No independence requirement. One change in Core: clause 3.3.4 now says that wherever a review is stated, review performed only by automated agents, whether the generating agent or others, MUST be identified as automated review.

## Evaluation record

```yaml
candidate:
  id: J-029
  title: "Review independence proportional to consequence"
  source: "Safety-critical verification practice. The draft cited ISO 9001; clause 7.5.2 c) of the 2015 edition concerns review and approval and, according to secondary sources, states no independence requirement. No edition was inspected and other clauses were not checked, so that citation is withdrawn."
  original_problem: "An author reviewing their own work misses what they missed while writing."
  proposed_kads_rule: "Reject a new requirement."

evaluation:
  expected_benefit: "Errors caught by a second reader"
  cognitive_cost: "medium"
  authoring_cost: "low"
  maintenance_cost: "high"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "medium"
  retrieval_value: "none"
  machine_readability_value: "none"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "high"
  over_modeling: "none"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "One-person projects excluded from conformance"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "Review independence is a governance control outside KADS; KADS requires disclosure of who reviewed. The AI challenger noted that disclosure had a gap: review by a second agent could be presented as independent review. No failure of this kind was observed; the change rests on the harm to a reader who takes agent-on-agent review for human review. Three challengers rejected any change under this candidate and only one proposed this one. This evaluation, whose reviewers are all automated, is described accordingly."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability MODIFY/GUIDANCE, Operations MODIFY/PROFILE, AI and retrieval MODIFY/CORE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** Disclosure of who reviewed (6.4, 3.3.4) already lets the reader weigh independence; mandating it would exclude one-person projects.
- **Cognitive load:** Disclosure of who reviewed is already mandatory and lets the reader discount a self-review; an independence requirement would add a 'how consequential is this page' decision before every review.
- **Traceability:** Mandated independence would exclude one-person projects, and KADS already makes the reviewer and any self-review identifiable, which is what a reader needs to weigh the review.
- **Operations:** A core independence requirement would exclude one-person projects, and KADS's disclosure approach (say who reviewed, flag self-review and agent self-review) is honest and universal.
- **AI and retrieval:** Mandating independent review would exclude one-person projects, and disclosure of who reviewed is the right minimum.
- **Standards:** Disclosure of who reviewed (3.3.4, conformance) lets readers judge independence themselves; mandated independence is an organizational control, not a documentation rule.

### Arguments against adoption

- **Minimalist:** No credible counterargument.
- **Cognitive load:** No credible counterargument from a cognitive-load position: mandated independence excludes one-person projects and adds a grading scheme (consequence levels) that would itself need defining.
- **Traceability:** Disclosure is narrower than the author says. The reviewer-identification duty in conformance.md applies to review of the conformance claim, and 3.3.4 applies to agent self-review; nothing makes the reviewer of an individual consequential decision or finding identifiable, and nothing makes a project's own policy on independence inspectable. 'Review depth should follow consequence' is unverifiable when the project never states what its consequence threshold is.
- **Operations:** Disclosure alone fails where consequence is highest. An author cannot see their own missing step, and an agent-drafted, agent-reviewed procedure with an irreversible step meets every current rule as long as it says so in a pull request the on-call engineer will never read. Proportionality does not require a mandate: a SHOULD scoped to hazardous procedures, with on-page disclosure when it is not met, excludes nobody and puts the information where the operator is. The author's reason addresses a blanket core MUST, which is not the only form the principle can take.
- **AI and retrieval:** Disclosure only works if the disclosed categories are unambiguous, and 3.3.4 is not. 'A review performed only by the generating agent MUST be identified as such' does not say whether a second agent, a second session of the same model, or a panel of role-prompted agents counts as 'the generating agent'. That configuration is now routine (this evaluation is one) and reads to a later reader as independent review.
- **Standards:** The stated reason is a straw man: a proportional SHOULD would not exclude one-person projects, so the rejection should rest on scope, not on that. The ISO 9001 attribution is wrong for this purpose: draft 7.5.2 c) requires review and approval for suitability and adequacy and says nothing about independence; independence levels come from safety standards such as DO-178C or IEC 61508 (not checked today).

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If adopted, consequence would be graded low to avoid the independent review.
- **Traceability:** A project's highest-risk runbook and its typo fixes get the same author-merges-own-change review; a reader of the adoption note cannot tell, because the review route says only 'pull request'.
- **Operations:** 'Self-reviewed' becomes boilerplate in review records; a runbook that deletes data ships after being read only by the agent that wrote it, and the first independent execution is during an incident.
- **AI and retrieval:** A page states 'reviewed independently' on the strength of a second agent run with the same model and the same context; the reader assumes a person checked it.
- **Standards:** The record justifies the rejection with an argument a later proposer can refute in one sentence, reopening the question.

### Tradeoffs

Consequential material may still be reviewed only by its author, provided that is stated.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** Anticipated only; no observed failure. Admitted as a MUST on the harm ground and because it widens an existing MUST by a few words.
- **Protected property:** Nothing is stated more firmly than its support.
- **How a violation is detected:** Reading the review statement.
- **Cost on adoption day:** One phrase wherever a review by agents is stated.


### Final assessment

Review independence is a governance control outside KADS; KADS requires disclosure of who reviewed. The AI challenger noted that disclosure had a gap: review by a second agent could be presented as independent review. No failure of this kind was observed; the change rests on the harm to a reader who takes agent-on-agent review for human review. Three challengers rejected any change under this candidate and only one proposed this one. This evaluation, whose reviewers are all automated, is described accordingly.

**Reopen when:** An adopter in a regulated domain needs an independence rule; that would be a profile.
