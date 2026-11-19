# J-005  -  Controlled dictionary, sentence-length limits, mandated active voice (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Not adopted. The authoring guide mentions STE once as the strict form of the one-meaning idea.

## Evaluation record

```yaml
candidate:
  id: J-005
  title: "Controlled dictionary, sentence-length limits, mandated active voice"
  source: "ASD-STE100 Issue 9: a dictionary of roughly 900 approved words, 20-word procedural and 25-word descriptive sentence limits (secondary sources; specification not inspected)."
  original_problem: "Non-native readers and translators in aerospace maintenance need text with almost no variation."
  proposed_kads_rule: "Reject."

evaluation:
  expected_benefit: "Uniform prose for one industry"
  cognitive_cost: "high"
  authoring_cost: "high"
  maintenance_cost: "high"
  tooling_dependency: "medium"
  interoperability_value: "low"
  traceability_value: "none"
  retrieval_value: "low"
  machine_readability_value: "medium"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "none"
  bureaucracy: "high"
  over_modeling: "none"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "medium"
  misuse_risk: "Style policing replaces attention to whether the content is right"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Unanimous. The mechanism solves a problem of one domain at a cost no general corpus would pay, and the specification is copyrighted by ASD, so its dictionary could not be reproduced anyway."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability REJECT/NONE, Operations REJECT/NONE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** The rejection is correct: a controlled dictionary and word limits need tooling and training that KADS explicitly does not require.
- **Cognitive load:** Rejection is correct: a 900-word dictionary and word-count limits are a vocabulary and a counting task imposed on every author, with benefits that depend on a translation and training regime KADS adopters do not have.
- **Traceability:** A controlled dictionary and sentence-length limits address translation and second-language reading in aerospace maintenance, not provenance, basis, or history. Rejecting them costs KADS nothing in inspectability.
- **Operations:** Rejection is correct: a 900-word dictionary and sentence limits need training and tooling, and no repository team will adopt them.
- **AI and retrieval:** Rejection is correct. A controlled dictionary narrows vocabulary away from the words users query with, sentence-length caps force qualifications into separate sentences that chunking then separates from their claim, and language models do not need simplified English to parse prose.
- **Standards:** Rejection is right: the dictionary is aerospace-maintenance vocabulary, copyrighted by ASD and not redistributable, and fixed word counts are tuned for non-native readers of maintenance English.

### Arguments against adoption

- **Minimalist:** No credible counterargument to rejecting. The only objection is to the consolation prize: an 'informative note' about short active sentences is generic writing advice that every style guide already gives and that KADS has no reason to own.
- **Cognitive load:** No credible counterargument to the rejection: nothing in this candidate lowers reader effort cheaply. The only objection is to the consolation prize: an 'informative note' that short active sentences help is a platitude that lengthens the guide and changes no page.
- **Traceability:** No credible counterargument: none of the five traceability questions (origin of a claim, basis of a decision, superseded versus current, conflict detection, reason for existence) is served by word lists or length limits, and enforcing them needs tooling that clause 1.1 excludes.
- **Operations:** The rejection throws away the one STE rule with operational value and keeps a platitude. 'Short, active sentences help where they reduce ambiguity' is unactionable, whereas passive voice in a procedure hides the actor: 'the service is restarted' does not say whether the operator restarts it or the system does it by itself. Sentence length is also one of the few properties a script can check, which matters under imperfect adoption, though that alone does not justify the cost.
- **AI and retrieval:** No credible counterargument: the only retrieval-relevant residue (long sentences that bury a qualification far from its claim) is a symptom J-003 and 3.2.2 already address, and a length limit would not fix it.
- **Standards:** No credible counterargument for adoption: licensing forbids reproducing the dictionary, the limits do not transfer to research reports or decision records, and KADS has no enforcement tooling. The only objection is to the proposed informative note: 'short, active sentences help' with no source is an unsupported claim under 3.3.1.

### Failure modes

- **Minimalist:** The informative note grows into a style section, and reviewers start counting words.
- **Cognitive load:** The note is added, later hardens into a review comment habit ('passive voice'), and reviewers police style instead of evidence.
- **Traceability:** If adopted, reviewers would spend review effort counting words while unsupported claims pass.
- **Operations:** The informative note is ignored, and runbooks keep steps where the operator waits for something they were supposed to do, or does something the automation already did.
- **AI and retrieval:** If adopted, agents would mechanically rewrite compliant prose into short passive-free sentences, dropping hedges and scope qualifiers in the process, which is status laundering by style rule.
- **Standards:** An informative note quoting 20 and 25 words is read as a KADS recommendation and the numbers leak into reviews.

### Tradeoffs

None of substance.


### Final assessment

Unanimous. The mechanism solves a problem of one domain at a cost no general corpus would pay, and the specification is copyrighted by ASD, so its dictionary could not be reproduced anyway.

**Reopen when:** An adopter in a regulated maintenance domain asks for an STE alignment note. That would be an addendum, not Core.
