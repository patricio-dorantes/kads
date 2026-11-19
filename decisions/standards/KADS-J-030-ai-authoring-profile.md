# J-030  -  A separate AI authoring profile (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No profile. Clause 3.3.6: a source cited without having been inspected for the claim it supports SHOULD be identified as such, at the citation or in a source list it leads to; an absent mark does not establish inspection. The authoring guide gives clause 3.3.4 a one-line form. The agent instruction snippet now states the KADS version it summarizes and covers the new clauses.

## Evaluation record

```yaml
candidate:
  id: J-030
  title: "A separate AI authoring profile"
  source: "The example profile list in the evolution brief."
  original_problem: "Agents now write much documentation and fail in characteristic ways."
  proposed_kads_rule: "Reject a profile."

evaluation:
  expected_benefit: "Agent failure modes addressed where every adopter sees them"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "high"
  retrieval_value: "medium"
  machine_readability_value: "medium"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "high"
  bureaucracy: "medium"
  over_modeling: "low"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A profile that duplicates Core and is adopted by nobody"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "All six agreed that universal rules belong in Core and a profile would duplicate them. The AI challenger showed a gap in Core: nothing required a cited source to have been inspected. The observed case is this evaluation itself, where the draft cited several standards for statements they do not contain, each recalled from memory; the index lists them. The clause applies to people as much as to agents. It was proposed by one challenger and was drafted as a MUST. The final gate reviewer showed that no reviewer can detect a violation from the page, which fails question 5 of the admission test, so it is a SHOULD."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability MODIFY/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/CORE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** 3.3.3 and 3.3.4 are universal and already in Core; a profile would duplicate them and imply that non-adopters of the profile may invent provenance.
- **Cognitive load:** The rules that matter for agent drafting are universal and already in Core; a profile would duplicate them and add another 'does this profile apply' decision to every adoption.
- **Traceability:** The rules that matter for agent-drafted content (no invented sources or results, author of record, self-review identified) apply to every author and belong in Core; a separate profile would duplicate them and imply they are optional elsewhere.
- **Operations:** No invented provenance and an author of record are universal duties; a separate profile would duplicate 3.3.3 and 3.3.4 and suggest that people may invent sources.
- **AI and retrieval:** A separate profile would be wrong: fabrication and accountability rules bind people as much as agents, an 'AI profile' implies the Core is optional for humans, and a profile keyed to who typed the text is unenforceable.
- **Standards:** 3.3.3 and 3.3.4 already bind agents and people alike; a profile would fork rules that must stay universal.

### Arguments against adoption

- **Minimalist:** No credible counterargument. The same reasoning (a profile that restates core duties is duplication) is what condemns the Procedure profile in J-004.
- **Cognitive load:** The one credible objection: an agent operator looking for 'what applies to agents' must find 3.3.3 and 3.3.4 inside Core, which costs search time a profile heading would save. That is answered by the existing agent instruction snippet in the adoption guide, so it does not justify a profile.
- **Traceability:** Rejecting the profile is right, but the rejection assumes 3.3.4 is sufficient and it is weak where inspection matters: stating which content was generated and which was verified is only a SHOULD, 'substantially drafted' has no test, and nothing asks for the identity of the generating system or the sources it was given. When an agent-drafted page is later found wrong, a maintainer cannot determine which tool and version produced it or what it was grounded on, so cannot find sibling pages with the same defect.
- **Operations:** The core rules cover what an agent must not claim, not how a corpus that agents edit is operated. The distinct failure modes are operational: bulk edits that touch evidence, refreshed 'updated', 'verified', or 'executed' dates, contradictions resolved by deleting one side, instructions inside retrieved documents treated as commands, and rejected or historical text applied as current. The only place these are addressed is an informative snippet that a project may or may not copy, and conformance review has no question asking whether agents that edit the corpus were given the rules at all.
- **AI and retrieval:** 'The rules that matter are already in Core' is false in three places, and agents now write most of the content. (1) Nothing requires that a cited source was inspected: 3.3.3 forbids inventing sources, but citing a real document from memory without opening it is not inventing one, and it is the characteristic agent error. (2) 3.3.4's 'which content was generated and which was verified by a person, and how' has no form, so it is satisfied by a vague footer or skipped. (3) The agent snippet, the only text most agents load, is informative, carries no KADS version, and says nothing about the clauses this package adds (role preservation, status marking, reachability, self-contained sections).
- **Standards:** No credible counterargument: there is no external AI-authoring documentation standard to reference, and the candidate's only source is the brief's own example list. One caution: legal labeling duties for AI-generated content may emerge in some jurisdictions (not verified), which would be a reason to reference that law in an adoption note, not to write a KADS profile.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If a profile existed, projects that did not declare it would be read as exempt from the no-invented-provenance rules.
- **Traceability:** A model with a known defect drafted forty pages over two months; after the defect is discovered no record distinguishes those pages from the rest of the corpus.
- **Operations:** A repository is declared conformant on a human-reviewed sample while agents with no KADS instructions keep editing other pages; date fields advance, evidence is reformatted, and nothing in the adoption note reveals that agents write to the corpus.
- **AI and retrieval:** An agent produces a page with correct-looking citations to real files it never read, a footer 'AI-assisted, reviewed', and none of the new clauses applied because its instructions predate them. Every existing clause is nominally met.
- **Standards:** None significant from rejecting; the risk would come from adopting and letting Core and profile wording drift apart.

### Tradeoffs

Citations recalled from memory are now visibly weaker, which is the point, and sources pages get longer.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** This evaluation's first draft cited several standards for statements they do not contain.
- **Protected property:** A material claim has an identifiable basis.
- **How a violation is detected:** Not detectable from the page; this is why the rule is a SHOULD and says that an absent mark proves nothing.
- **Cost on adoption day:** Mark citations known to be uninspected; nothing can be done for citations whose history is unknown.


### Final assessment

All six agreed that universal rules belong in Core and a profile would duplicate them. The AI challenger showed a gap in Core: nothing required a cited source to have been inspected. The observed case is this evaluation itself, where the draft cited several standards for statements they do not contain, each recalled from memory; the index lists them. The clause applies to people as much as to agents. It was proposed by one challenger and was drafted as a MUST. The final gate reviewer showed that no reviewer can detect a violation from the page, which fails question 5 of the admission test, so it is a SHOULD.

**Reopen when:** Clause 3.3.6 leads authors to drop sound citations instead of marking them.
