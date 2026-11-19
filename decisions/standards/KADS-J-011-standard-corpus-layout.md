# J-011  -  Standard corpus layout and numbering (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No change. Clause 1.1 continues to prescribe no layout. The adoption note already names the entry point.

## Evaluation record

```yaml
candidate:
  id: J-011
  title: "Standard corpus layout and numbering"
  source: "ATA iSpec 2200, Airlines for America, Revision 2025.1 (publisher page inspected 2026-10-03; paid specification, not inspected). The chapter numbering originated in ATA Spec 100."
  original_problem: "A mechanic moving between aircraft types finds the same system in the same chapter."
  proposed_kads_rule: "Reject."

evaluation:
  expected_benefit: "Cross-project navigation"
  cognitive_cost: "medium"
  authoring_cost: "high"
  maintenance_cost: "medium"
  tooling_dependency: "none"
  interoperability_value: "medium"
  traceability_value: "none"
  retrieval_value: "medium"
  machine_readability_value: "medium"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "none"
  bureaucracy: "high"
  over_modeling: "medium"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "low"
  misuse_risk: "Forced relocation of working repositories"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "The benefit depends on many corpora sharing one reader population, which KADS adopters do not."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load DEFER/NONE, Traceability REJECT/NONE, Operations MODIFY/GUIDANCE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** Clause 1.1 excludes repository layout by design; a shared chapter scheme only pays off across many adopters with interchangeable readers.
- **Cognitive load:** Not prescribing a layout keeps adoption cost near zero for existing repositories and avoids a numbering scheme every reader would have to learn.
- **Traceability:** A fixed layout has value only across many adopters sharing readers; KADS has no such evidence and 1.1 disclaims layout. Recording the condition that would change the answer is itself good traceable practice.
- **Operations:** A mandated layout or chapter numbering would break every legacy repository and contradict clause 1.1; rejecting it is right.
- **AI and retrieval:** Rejection is correct. An agent needs one predictable thing, the entry point and adoption note, and the adoption note outline already has an 'Entry point' line and the agent snippet already names it.
- **Standards:** ATA numbering works because every aircraft has the same systems; KADS corpora share no subject taxonomy, clause 1.1 excludes layout, and the specification is a USD 2,815 paid document that reviewers cannot consult.

### Arguments against adoption

- **Minimalist:** No credible counterargument. Even recording 'what would change the answer' is optional; one line in the retained candidate record is enough.
- **Cognitive load:** The rejection gives up the largest search-time saving on the list: a reader who has seen one KADS corpus would know where to start in the next. The cheap part of that benefit does not need a layout. 3.1.1 obliges 'the entry point' to do several things, yet nothing tells a cold reader where the entry point is.
- **Traceability:** No credible counterargument for a standard layout. One narrow gap remains: the adoption note 'MAY live in an existing documentation index', so a maintainer cannot reliably find the declared exceptions and review route, which are the starting point of every conformance trace.
- **Operations:** The rejection discards the one part of the ATA idea that pays under imperfect adoption: a predictable place to start. KADS requires an entry point and an adoption note but not that either can be found from the repository root, so a new engineer or an AI agent in an unfamiliar repository cannot locate the corpus rules, and no script for orphans (J-021) or status (J-027) knows where to begin. The author's revisit trigger, several adopters asking for cross-project navigation, cannot fire while there is one adopter.
- **AI and retrieval:** No credible counterargument: a mandated layout would add nothing for retrieval, which is path-agnostic, and would force agents to move files, breaking links and IDs.
- **Standards:** No credible counterargument for adoption: the principle does not survive outside a domain with a shared product breakdown. The only weakness is the reopening trigger, 'several adopters asking', which is not a testable condition, and the evidence path already acts as a small shared navigation convention that the record should acknowledge.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** Each adopter invents a different entry point location and name; cross-project readers and agents search for it every time, and J-021 reachability has no fixed starting node to measure from.
- **Traceability:** An auditor or new maintainer cannot locate the adoption note and so cannot tell which departures are declared exceptions and which are defects.
- **Operations:** In a multi-team repository there are five docs trees and three candidate indexes; agents pick the wrong one, treat an unadopted tree as governed (or the reverse), and the adoption note is found only by people who already know it exists.
- **AI and retrieval:** If adopted, migration agents would reorganize working corpora to match the layout and generate large link-repair diffs with no knowledge benefit.
- **Standards:** The vague trigger lets the question be reopened or ignored arbitrarily.

### Tradeoffs

Each project keeps its own layout, so cross-project navigation is learned per project.


### Final assessment

The benefit depends on many corpora sharing one reader population, which KADS adopters do not.

**Reopen when:** Two independent adopters document a navigation failure between corpora.
