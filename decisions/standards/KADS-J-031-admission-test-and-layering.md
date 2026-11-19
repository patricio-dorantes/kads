# J-031  -  Admission test and layering principle for KADS rules (accepted)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

CONTRIBUTING has one "Admission test for new rules" section of seven questions, merging J-001 and J-023. The design rationale states the design constraint and the layering principle and links to the test.

## Evaluation record

```yaml
candidate:
  id: J-031
  title: "Admission test and layering principle for KADS rules"
  source: "The evolution brief supplied by the maintainer on 2026-10-03."
  original_problem: "A standard grows one reasonable rule at a time until teams stop using it."
  proposed_kads_rule: "Accept; put the test in CONTRIBUTING and the rationale."

evaluation:
  expected_benefit: "Every later proposal is judged the same way"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "none"
  tooling_dependency: "none"
  interoperability_value: "none"
  traceability_value: "medium"
  retrieval_value: "none"
  machine_readability_value: "none"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "none"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A heuristic nobody can check, so it changes nothing"

decision:
  disposition: ACCEPT
  target_layer: GUIDANCE
  rationale: "All six asked for the heuristic to be made operational: name the failure with an observed case, the protected property, the existing clause that fails, the lowest layer, how a violation is detected, and the adoption-day cost. The test was applied to this release first and removed five draft clauses and a profile."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/GUIDANCE, Traceability MODIFY/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** A stated admission test is the only structural defence against growth, and the layering principle (core, profile, guidance, proposal) is how the existing spec is already organized.
- **Cognitive load:** A single stated admission test and a lowest-layer rule give every later proposal the same hurdle and protect the reader of the spec from accretion.
- **Traceability:** A stated admission test and layering rule let every later proposal be judged on the same recorded basis, which is traceability for the standard's own evolution.
- **Operations:** A shared admission test and an explicit layering rule give every later proposal the same bar and justify keeping domain rigor in profiles.
- **AI and retrieval:** A stated admission test gives every later proposal, including agent-generated ones, the same bar, and 'lowest layer that needs it' is the right default against agent-driven rule inflation.
- **Standards:** A stated admission test and a lowest-layer principle give later proposals a common yardstick and cost adopters nothing.

### Arguments against adoption

- **Minimalist:** The test as worded is unfalsifiable: every proposer believes absence of their rule costs more than the rule. It is also given two homes (CONTRIBUTING and the design rationale), and it overlaps J-001 and J-023. And the package fails its own test: ten new clauses were proposed with no adopter failure cited for most of them.
- **Cognitive load:** As worded the test cannot fail a proposal: 'more cognitive or epistemic cost than the rule itself' is a judgement every proposer makes in their own favour, and 'epistemic cost' is jargon. This package is the evidence: under the test the author still proposed five Core clauses, a profile and five terms. Placing it in both CONTRIBUTING and the design rationale gives it two homes, and with J-001 and J-023 there would be three separate tests.
- **Traceability:** 'More cognitive or epistemic cost than the rule itself' has no observable on either side, so it can justify any outcome and cannot be audited afterward. In this package it is applied asymmetrically: three new Core SHOULDs (draft 3.1.4, draft 3.5.4, draft 3.5.5) pass with no cited failure instance, while J-026, which has a demonstrable ambiguity in the current text, is deferred for 'no adopter evidence'. The layering rule also ignores that each Core SHOULD carries a hidden duty under 1.2 to record reasons for departures.
- **Operations:** 'More cognitive or epistemic cost than the rule itself' cannot be measured or falsified, so it will be asserted, not applied; the package demonstrates this by passing four new core clauses under it, none sourced from adopter feedback, while the feedback review itself says one project's experience shows little. The test also prices only the cost of writing a rule down, not the cost on an existing corpus on adoption day or the cost of half-adoption, which is where rules actually fail. It treats SHOULD as cheap despite clause 1.2.
- **AI and retrieval:** 'More cognitive or epistemic cost than the rule itself' has no stated cost-bearer and no evidence requirement, so it is decided by whoever argues last. As worded it counts the cost a rule imposes on authors, which is visible, against the cost of its absence, which in an AI-read corpus falls on downstream readers of machine-assembled answers and is invisible to the author. That bias is how J-014 ended up as guidance. The test was also used to judge this package before being adopted, so it has not itself been tested.
- **Standards:** 'More cognitive or epistemic cost than the rule itself' cannot be measured, so the test will confirm whatever the proposer already believes; RFC 2119 section 6 already supplies an operational test and should be referenced instead of a new maxim. The package also fails its own test: it adds four or five Core clauses and a profile with no adopter evidence, and it creates three overlapping gates (J-001 restraint, J-023 competency question, J-031 admission).

### Failure modes

- **Minimalist:** The paragraph is quoted in every proposal as passed; the spec reaches 80 MUSTs with each one 'justified'.
- **Cognitive load:** The sentence is quoted in every pull request as a formality; nothing is ever rejected by it, and the layering rule is used to justify new profiles ('it is only a profile') instead of fewer rules.
- **Traceability:** The test becomes a closing formula in proposals; in two years nobody can reconstruct what cost was weighed for any given rule.
- **Operations:** The test becomes a sentence quoted in every proposal ('the absence of this rule costs more'), core grows by a few clauses each release, and legacy adopters fall behind the pinned version and stop upgrading.
- **AI and retrieval:** Every retrieval-motivated rule is rejected as 'more cost than benefit' because the author feels the cost and never sees the wrong answer a retriever produced.
- **Standards:** The test is quoted to justify both adoption and rejection of the same proposal, and gives no reason to prefer amending a clause over adding one.

### Tradeoffs

Proposals take longer to write.


### Final assessment

All six asked for the heuristic to be made operational: name the failure with an observed case, the protected property, the existing clause that fails, the lowest layer, how a violation is detected, and the adoption-day cost. The test was applied to this release first and removed five draft clauses and a profile.

**Reopen when:** None expected.
