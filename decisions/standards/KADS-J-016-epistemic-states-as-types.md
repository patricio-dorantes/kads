# J-016  -  Epistemic states as normative object types (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No new record types, prefixes, or required labels. Two cheap residues were kept as guidance: an optional set of plain lead-ins in the authoring guide (Observed, Inferred, Assumed, Hypothesis, Recommended, Decided, Unverified), and a nomenclature note mapping a tracked hypothesis to a provisional conclusion record and a tracked assumption to an open question record.

## Evaluation record

```yaml
candidate:
  id: J-016
  title: "Epistemic states as normative object types"
  source: "The candidate list in the evolution brief: fact, observation, claim, hypothesis, decision, evidence, assumption, conclusion, procedure."
  original_problem: "Without typed states, a reader cannot tell how established a statement is."
  proposed_kads_rule: "Reject."

evaluation:
  expected_benefit: "Machine-checkable standing of every statement"
  cognitive_cost: "high"
  authoring_cost: "high"
  maintenance_cost: "high"
  tooling_dependency: "medium"
  interoperability_value: "medium"
  traceability_value: "high"
  retrieval_value: "medium"
  machine_readability_value: "high"
  human_readability_value: "low"

risks:
  ambiguity: "high"
  duplication: "medium"
  bureaucracy: "high"
  over_modeling: "high"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "low"
  misuse_risk: "Labels applied to every sentence, and \"fact\" used to hide the basis of a claim"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Four challengers rejected outright. The two dissenters asked for conventions, not types, and those conventions make the 3.2.2 rule checkable at no normative cost. \"Fact\" is rejected as a kind because calling something a fact hides its basis."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability MODIFY/PROFILE, Operations REJECT/NONE, AI and retrieval MODIFY/GUIDANCE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** Six record types are already an open question in the rationale ('whether the vocabulary is small enough'); per-statement labels would be pure ceremony.
- **Cognitive load:** No per-statement labels and no new record prefixes keeps ordinary writing ordinary; 'fact' as a type would hide the basis that 3.3.1 asks for.
- **Traceability:** Per-statement labels and new prefixes would add metadata that does not make content more trustworthy, and rejecting 'fact' as a type is correct because the word hides the basis.
- **Operations:** New record types and per-statement labels as requirements would multiply metadata and never be filled in under time pressure; rejecting 'fact' as a type is correct.
- **AI and retrieval:** Rejecting new record types, required per-statement labels, and 'fact' as a type is right: mandatory tagging turns prose into a form, and agents will tag every sentence, burying the few labels that matter.
- **Standards:** Per-statement labels and more record types are the heaviest possible form of the idea, and 'fact' as a type does hide its basis.

### Arguments against adoption

- **Minimalist:** No credible counterargument to rejecting. Note the inconsistency: J-012 and J-015 as proposed bring most of this list back as a table and as section 2 terms.
- **Cognitive load:** No credible counterargument: required epistemic typing is the clearest case of metadata an author must maintain mentally for every sentence, with no reader able to verify the label.
- **Traceability:** Outright rejection loses a specific trace. 3.3.1 admits 'an explicit assumption awaiting verification' as a basis, yet an assumption has no home in the tracked-record profile: it cannot be given a lifecycle, and when it is falsified nothing lets a maintainer find the decisions and conclusions that rested on it. The same holds for a hypothesis under test. The author's answer (no H- or A- prefix) is right about prefixes and silent about the mapping, so adopters will each invent one.
- **Operations:** Rejecting all marking leaves J-015 with nothing to hang on: KADS would forbid presenting a hypothesis as a conclusion while offering no lightweight way to mark one. Incident and investigation practice already keeps hypothesis lists (open, ruled out, confirmed), and the investigation record carries them only implicitly. A total rejection is tidy for the standard and unhelpful for the page.
- **AI and retrieval:** Rejecting the whole idea leaves J-015 without a mechanism. If KADS names no convention, each author and each agent invents one ('Finding:', 'Note:', 'Fact:', 'Claim:', 'TBD:'), which is the worst outcome for retrieval and for self-checking. A small, optional, plain-language set of lead-in words is not artificial structure; it is what careful writers already do, and a shared set makes roles survive chunking because the cue is inside the sentence.
- **Standards:** No credible counterargument for adoption. The rejection is undermined elsewhere in the package: J-015 adds five defined terms and J-012 adds a table of eight kinds, and clause 3.3.1 itself says 'material factual claims', so 'fact is rejected' needs to be stated as 'no fact type', not as a ban on the word.

### Failure modes

- **Minimalist:** n/a if rejected, provided J-012 and J-015 are trimmed as recommended.
- **Cognitive load:** If adopted, labels would be assigned by habit and read as assurance.
- **Traceability:** An assumption written in prose inside one decision record turns out false; four other records that relied on it are never revisited because no link identified the dependency.
- **Operations:** Each project invents its own hypothesis markers or none; summaries and agents cannot tell a ruled-out hypothesis from a finding, and ruled-out hypotheses get deleted, losing the negative results 5.2 wants kept.
- **AI and retrieval:** With no named convention: inconsistent ad hoc labels, including 'Fact:', spread through agent-written pages. With required labels: every sentence prefixed, labels stop carrying information, and readers skip them.
- **Standards:** The rejection is recorded while the same taxonomy is admitted through J-012 and J-015.

### Tradeoffs

Standing is carried by ordinary words, so it cannot be validated by a script.


### Final assessment

Four challengers rejected outright. The two dissenters asked for conventions, not types, and those conventions make the 3.2.2 rule checkable at no normative cost. "Fact" is rejected as a kind because calling something a fact hides its basis.

**Reopen when:** An adopter shows that the mapping to conclusion and question records fails for tracked hypotheses.
