# J-001  -  BCP 14 keywords and MUST restraint (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Clause 1.2 is unchanged. The restraint rule is one paragraph of the admission test in CONTRIBUTING, merged with J-023 and J-031 as three challengers asked (minimalist, cognitive load, standards). The RFC quotation was corrected. The changelog publishes keyword counts before and after.

## Evaluation record

```yaml
candidate:
  id: J-001
  title: "BCP 14 keywords and MUST restraint"
  source: "RFC 2119 and RFC 8174 (BCP 14). RFC 2119 section 6, inspected 2026-10-03: \"Imperatives of the type defined in this memo must be used with care and sparingly.\""
  original_problem: "Readers cannot tell how binding a rule is, and standards accumulate mandatory rules that nobody can justify."
  proposed_kads_rule: "Keep clause 1.2 unchanged. Add a restraint rule to CONTRIBUTING."

evaluation:
  expected_benefit: "Keeps the count of mandatory rules honest"
  cognitive_cost: "low"
  authoring_cost: "none"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "high"
  traceability_value: "low"
  retrieval_value: "none"
  machine_readability_value: "medium"
  human_readability_value: "high"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "none"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A restraint rule that is stated and then not applied to the release that adopts it"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: GUIDANCE
  rationale: "The keywords were already adopted. What was missing was a checkable condition for using MUST, and the challengers showed that the draft package broke the very restraint it proposed."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/GUIDANCE, Traceability MODIFY/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** A written restraint rule gives reviewers a reason to refuse a MUST, and RFC 2119 section 6 itself asks for sparing use. It costs one sentence.
- **Cognitive load:** A written restraint test gives contributors a reason to say no; with 64 MUST in 43 clauses the spec already asks a reviewer to hold more obligations than anyone can keep in mind.
- **Traceability:** Clause 1.2 already adopts BCP 14 and already says the reason for departing from a SHOULD belongs with the departure. A restraint rule in CONTRIBUTING gives later maintainers a stated test for why a rule is a MUST.
- **Operations:** BCP 14 is already adopted and a written restraint rule gives reviewers a reason to refuse the next MUST. It costs adopters nothing.
- **AI and retrieval:** Keyword discipline is already adopted, and a restraint rule in CONTRIBUTING stops MUST inflation, which matters because an agent treats every MUST as equally binding and cannot prioritize among 64 of them.
- **Standards:** BCP 14 is already adopted in clause 1.2 and a restraint rule costs adopters nothing because it binds only KADS contributors.

### Arguments against adoption

- **Minimalist:** As proposed it is prospective only, and the same package then adds about 8 MUST or MUST NOT and 7 SHOULD, so the rule is broken by the release that introduces it. It also duplicates J-031 and J-023: three admission rules in CONTRIBUTING for one idea.
- **Cognitive load:** The rule is forward-only and the same package ignores it: it adds about 8 new MUST (draft 3.1.5 twice, draft 3.3.5, draft 7.2, draft 7.3, draft 7.4, draft 7.6 twice). The test also depends on 'a property the standard exists to protect', and no such list of properties exists, so a contributor must first infer it.
- **Traceability:** The test 'breaks a property the standard exists to protect' cannot be applied or audited because the protected properties are not enumerated anywhere normative. A maintainer in two years cannot determine why a given MUST passed the test, because nothing requires the justification to be recorded.
- **Operations:** The test 'breaks a property the standard exists to protect' is not usable because those properties are listed nowhere, and the same package adds at least eight new MUSTs (draft 3.1.5, draft 3.3.5, draft 7.2, draft 7.3, draft 7.4, draft 7.6). A restraint rule that does not bite on the release that introduces it is decoration. It also ignores that SHOULD is not free under clause 1.2.
- **AI and retrieval:** The restraint rule tests only importance ('breaks a property the standard protects'), not checkability. A MUST whose satisfaction cannot be judged from the page and its links (for example 'wherever combining them would mislead') cannot be self-verified by an agent, so it produces confident false compliance reports rather than compliance.
- **Standards:** The proposal misquotes section 6 (lowercase 'must', see fact check) and then replaces the RFC's operational test (required for interoperation, or to limit behavior with potential for harm) with a home-made paraphrase. A standard with 64 MUST in 43 clauses that adds a restraint rule but exempts the existing text from it is asserting restraint, not practicing it.

### Failure modes

- **Minimalist:** The sentence sits in CONTRIBUTING, every proposer asserts that their rule 'protects a property the standard exists for', and the MUST count keeps rising from 64.
- **Cognitive load:** The restraint rule is cited to approve every new MUST, because each proposer believes their rule protects a core property. MUST density keeps rising while CONTRIBUTING says it should not.
- **Traceability:** Every proposer asserts their rule protects a core property; the rule becomes a rhetorical formula and the MUST count keeps growing with no inspectable rationale per MUST.
- **Operations:** Every proposer claims their rule protects traceability or trust, the test never rejects anything, and the MUST count keeps climbing past 64 until adopters declare blanket exceptions.
- **AI and retrieval:** An agent reports 'conforms to 3.3.2' because nothing on the page lets it detect a violation; the review record then launders an unchecked claim into a conformance statement.
- **Standards:** The new rule is cited to block future MUSTs while this same package adds eight or more new MUSTs (draft 3.3.5, draft 3.1.5, draft 7.2-draft 7.6) that were never tested against it.

### Tradeoffs

A stricter MUST condition means some sound advice stays a SHOULD or guidance and will be followed less often.


### Final assessment

The keywords were already adopted. What was missing was a checkable condition for using MUST, and the challengers showed that the draft package broke the very restraint it proposed.

**Reopen when:** A clause is shown to be routinely ignored because it is only a SHOULD, with a cited case.
