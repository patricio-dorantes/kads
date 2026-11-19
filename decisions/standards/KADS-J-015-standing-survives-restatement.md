# J-015  -  A statement's standing survives restatement (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No new clause and no new defined terms. Clause 3.2.2 gains one sentence: a summary, index, or other derived view MUST NOT state a claim more firmly than its source does. Clause 3.3.2 now names assumption and hypothesis. The single informative list of statement kinds is in the knowledge model.

## Evaluation record

```yaml
candidate:
  id: J-015
  title: "A statement's standing survives restatement"
  source: "Toulmin, The Uses of Argument (claim, grounds, qualifier; cited from prior knowledge, not inspected). The draft cited W3C PROV derivation; PROV says nothing about the standing of statements and that citation is withdrawn."
  original_problem: "An observation is interpreted, the interpretation becomes a hypothesis, and the hypothesis is restated as a conclusion, until all read as equally established."
  proposed_kads_rule: "New core clause and five new defined terms."

evaluation:
  expected_benefit: "Summaries cannot upgrade a guess into a finding"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "high"
  retrieval_value: "medium"
  machine_readability_value: "medium"
  human_readability_value: "high"

risks:
  ambiguity: "medium"
  duplication: "high"
  bureaucracy: "low"
  over_modeling: "medium"
  premature_standardization: "low"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A second list of roles beside the one in clause 3.3.2"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "All six challengers said the draft clause restated 3.2.2 and 3.3.2 and that five new terms would not pay rent. The cognitive-load challenger's wording needs no vocabulary: a reviewer compares two sentences. The traceability challenger identified the real gap, that hypothesis and assumption were never named normatively, and that is fixed in 3.3.2."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/CORE, Cognitive load MODIFY/CORE, Traceability MODIFY/CORE, Operations MODIFY/CORE, AI and retrieval MODIFY/CORE, Standards MODIFY/CORE.

### Arguments for adoption

- **Minimalist:** Status laundering through summaries is a real and damaging failure, and 'hypothesis' is not named anywhere normative today.
- **Cognitive load:** Status laundering through summaries is a real and damaging failure: a guess becomes a finding after two restatements, and the reader of the index has no way to notice.
- **Traceability:** Role laundering through restatement is a real and common failure, and a rule aimed at derived views names it directly. Adding the terms to section 2 closes a vocabulary hole.
- **Operations:** Status laundering is the dominant failure in incident documentation: 'probably the certificate' in the incident channel becomes 'root cause: certificate expiry' in the timeline summary, the status page, and the postmortem index, increasingly via an agent summarizing chat. It is a property KADS exists to protect.
- **AI and retrieval:** This is the central failure of summarizing agents: hedges are dropped on each restatement until a hypothesis is indexed as a finding. A Core MUST is justified, and naming 'hypothesis' fills a real hole.
- **Standards:** Status laundering through summaries is a real failure and belongs in Core if anywhere, because it concerns every derived view.

### Arguments against adoption

- **Minimalist:** A summary that presents an inference as an observation already violates 3.3.2 (roles MUST remain distinguishable where combining them would mislead) and 3.2.2 (a summary MUST preserve material qualifications). draft 3.3.5 is a third MUST over the same act, and adding five terms to section 2 makes an epistemic vocabulary normative, contradicting the rejection in J-016. 'The role travels with it' has no limit: taken literally every index line and table cell needs a role marker.
- **Cognitive load:** A new MUST clause plus five defined terms is the wrong price. 3.3.2 already applies to every document including summaries, and 3.2.2 already requires summaries to preserve material qualifications; 'this is a hypothesis' is a material qualification. The five terms raise section 2 from 15 to 20 entries, and the line between inference, hypothesis, assumption and conclusion is contested even among specialists, so authors would classify sentences and reviewers would dispute the labels. The spec would then carry two different role lists (3.3.2: observation, inference, recommendation, decision; draft 3.3.5: observation, inference, assumption, hypothesis, conclusion), and 'established conclusion' would be undefined. It also contradicts the J-016 rejection by bringing epistemic typing in through the terms section.
- **Traceability:** As drafted, draft 3.3.5 is largely a restatement: 3.2.2 already requires a summary to preserve material qualifications, and 3.3.2 already requires roles to stay distinguishable. The real gaps are elsewhere. (1) 3.3.2 never names hypothesis, assumption, or conclusion, so the new clause forbids laundering roles the base clause does not require anyone to mark. (2) 'The role a statement had at its canonical home' presumes the home marked it, but 3.3.2 applies only 'wherever combining them would mislead', so there may be nothing to carry. (3) Nothing covers legitimate promotion: when a hypothesis becomes a conclusion, no clause requires the basis for the change to be identified, which is exactly where laundering happens in the canonical home itself.
- **Operations:** It is already required by 3.3.2 plus 3.2.2 ('a summary MUST preserve material qualifications'), so a new clause fails the author's own J-031 admission test and J-001 restraint rule. The wording binds the summarizer to 'the role a statement had at its canonical home', but nothing obliges the home to label roles, and during an incident nobody does; the summarizer then has nothing to preserve. Enforcement needs reading both pages for every statement, with no grep. Five new defined terms (inference versus conclusion versus hypothesis) invite boundary disputes.
- **AI and retrieval:** An agent cannot reliably comply or know that it has. 'The role a statement had at its canonical home travels with it' presupposes the home made the role visible, but 3.3.2 requires that only 'wherever combining them would mislead', so the role is often implicit in a hedge, a section heading the chunk lost, or nowhere. The clause also says nothing about where in the restatement the role must appear, so a link back to the source could be argued to satisfy it, and it omits the two promotions agents make most: recommendation to decision and proposed to accepted.
- **Standards:** The cited source is wrong: PROV derivation says nothing about epistemic roles, and 'scientific method' and 'intelligence-analysis practice' are not citations. The behavior is already required by 3.2.2 (summaries preserve material qualifications), 3.3.2, and 5.6, so a new MUST clause plus five new defined terms is a typed ontology entering by the terms section while J-016 rejects exactly that; a new MUST is also a breaking change under 6.2.

### Failure modes

- **Minimalist:** Reviewers cannot tell whether a finding belongs to 3.2.2, 3.3.2 or draft 3.3.5, so exceptions cite all three; or indexes fill with '(inference)' tags that nobody maintains.
- **Cognitive load:** Review of a summary turns into arguing which of five labels each sentence deserves; authors hedge everything as 'hypothesis' to be safe, which destroys the signal the clause wanted to protect.
- **Traceability:** The canonical page itself is edited from 'we suspect' to 'the cause is' with no new evidence; every summary then faithfully carries the laundered role and draft 3.3.5 is satisfied.
- **Operations:** Agents comply by hedging every restated sentence ('may', 'possibly'), which makes summaries useless and buries the real uncertainty; or an index title such as 'Outage caused by DNS' is cited as a violation and reviewers argue about whether a title 'presents' a conclusion.
- **AI and retrieval:** The source says 'the timeout is probably caused by pool exhaustion' under a heading 'Hypotheses'. The retrieved chunk lacks the heading; the agent's index line reads 'Timeouts are caused by pool exhaustion (see report)'. The agent believes it complied because it linked the source.
- **Standards:** Reviewers must classify every summarized sentence into one of five defined roles to assess conformance, and disputes move from 'is this misleading' to 'is this an inference or a conclusion'.

### Tradeoffs

The traceability challenger also wanted a rule requiring a stated basis when a statement is promoted at its canonical home. That is left to clauses 3.3.1 and 3.4.1, which already require a basis for material claims and an explanation when a finding is replaced.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** Anticipated in general; one instance arose inside this release, where proposed dispositions were first restated as accepted.
- **Protected property:** Nothing is stated more firmly than its support.
- **How a violation is detected:** Comparing two passages: the summary and its source.
- **Cost on adoption day:** Reread summaries and indexes against their sources once.


### Final assessment

All six challengers said the draft clause restated 3.2.2 and 3.3.2 and that five new terms would not pay rent. The cognitive-load challenger's wording needs no vocabulary: a reviewer compares two sentences. The traceability challenger identified the real gap, that hypothesis and assumption were never named normatively, and that is fixed in 3.3.2.

**Reopen when:** A case where a statement was promoted at its canonical home without basis and neither 3.3.1 nor 3.4.1 was read as covering it.
