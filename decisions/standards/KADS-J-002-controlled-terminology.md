# J-002  -  Controlled terminology: one term per concept within a scope (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No new clause. One sentence added to clause 3.1.3, limited to terms that already fall under it: such a term MUST NOT carry two meanings in one scope unless the difference is stated where it is used. Synonym mapping stays in the authoring guide, with a sentence that clean-up never rewrites quotations or evidence.

## Evaluation record

```yaml
candidate:
  id: J-002
  title: "Controlled terminology: one term per concept within a scope"
  source: "ASD-STE100 Simplified Technical English, Issue 9, January 2025 (not inspected; known from secondary sources and prior knowledge). Terminology practice generally."
  original_problem: "Synonyms make a reader wonder whether two words mean two things; one word with two meanings makes a reader act on the wrong one."
  proposed_kads_rule: "New core clause, SHOULD, for one term per concept and a stated mapping for synonyms."

evaluation:
  expected_benefit: "Removes one class of misreading where a term decides an action or score"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "medium"
  traceability_value: "low"
  retrieval_value: "medium"
  machine_readability_value: "low"
  human_readability_value: "high"

risks:
  ambiguity: "medium"
  duplication: "medium"
  bureaucracy: "low"
  over_modeling: "low"
  premature_standardization: "low"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Used to justify rewriting quotations, evidence, or vendor names"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "Four challengers wanted the dangerous half, one word with two meanings, bound in Core through 3.1.3. The adoption feedback of 2026-10-02 supplies an observed case: a service tier name nearly scored as a licensed edition. General one-term advice has no observed failure and stays guidance."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/CORE, Traceability MODIFY/CORE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/CORE, Standards MODIFY/CORE.

### Arguments for adoption

- **Minimalist:** Synonym drift is a real reader cost, and a SHOULD with no dictionary is the lightest normative form available.
- **Cognitive load:** A reader who meets 'node' and 'host' in one page must stop and decide whether they are two things; one term per concept removes that interpretation step at no tooling cost.
- **Traceability:** Synonyms hide contradictions: two pages that disagree cannot be recognized as conflicting if they name the subject differently. A SHOULD-level rule with a stated mapping is cheap and makes conflicts detectable by search.
- **Operations:** The homonym half is a real operational hazard: the adoption feedback (lesson 5) records a service tier nearly scored as a licensed edition because two things shared a word. One word with two meanings in a runbook causes wrong actions.
- **AI and retrieval:** One term carrying two meanings is a real retrieval and reasoning hazard: two chunks using 'environment' or 'accepted' in different senses are merged by a model into one false statement, and no embedding can separate them.
- **Standards:** Term consistency is checkable by reading, needs no dictionary, and the proposal explicitly declines STE's word list.

### Arguments against adoption

- **Minimalist:** 3.1.3 already covers the cases that matter (terms that affect interpretation, and local terms or translations with a preserving mapping), and the authoring guide already says 'prefer consistent terms within a stated scope'. Clause draft 3.1.4 adds three SHOULDs that no manual reviewer can check across a corpus, and under 1.2 each departure needs a recorded reason.
- **Cognitive load:** As a Core SHOULD, clause 1.2 makes every synonym a departure whose reason 'belongs with the departure', so a ten-line how-to that says both 'repo' and 'repository' now owes a justification. The rule is also unreviewable in general (a reviewer must decide concept identity for every noun) and overlaps 3.1.3 and the existing authoring-guide sentence. Only half of it prevents errors: one term for two concepts misleads, a synonym only slows.
- **Traceability:** 'Stated once' does not say where, so the mapping is not findable from the place the synonym appears, and it is lost when a section is read out of context. The clause also ignores redefinition over time: a term whose meaning changes makes historical records silently mean something else, which is a traceability failure the proposal does not touch. Each new Core SHOULD also creates a duty under 1.2 to record reasons for departures.
- **Operations:** As a core SHOULD it is unenforceable without the dictionary the proposal refuses: no reader or grep can tell which term is 'preferred', and most pages state no scope to be consistent within. In a large multi-team or legacy repository each team's vocabulary (service, app, workload, component) is entrenched and vendor terms arrive daily, so under clause 1.2 every synonym becomes a departure that owes a recorded reason. Synonyms annoy; they rarely cause wrong action, so the two halves do not deserve the same strength.
- **AI and retrieval:** The two halves are not equally valuable and the proposal weights them the same. Synonyms are cheap for semantic search and actively useful: a user queries with the vendor term, so suppressing synonyms lowers recall. And 'mapping stated once' is a page-top or glossary convention that never travels with a retrieved chunk, so the chunk that uses the vendor term arrives without the mapping.
- **Standards:** 'One word, one meaning' in STE is enforced by a closed dictionary; without one it is the general terminology principle (one term per concept and one concept per term, as in ISO 704 terminology work; not checked today), so STE is the wrong single source. A Core SHOULD on every synonym also triggers clause 1.2's duty to record a reason for each departure, and 3.1.3 already permits local terms and translations when the mapping is kept.

### Failure modes

- **Minimalist:** Reviewers either ignore draft 3.1.4 or use it to bikeshed wording in every review; nobody records the departures that 1.2 asks for, so the clause teaches adopters that SHOULDs are decorative.
- **Cognitive load:** Reviewers file terminology findings on harmless variation, or nobody checks it and the clause becomes dead text that still has to be read. Authors add 'also called X' mapping notes to trivial pages.
- **Traceability:** A corpus states the mapping once in a glossary nobody links to; older records use a term under its previous meaning and are read with the new one.
- **Operations:** Nobody records reasons for synonyms, so the clause is violated silently on day one and teaches adopters that core SHOULDs can be ignored. Agents asked to enforce it do bulk find-and-replace and change the meaning of historical findings and quoted evidence.
- **AI and retrieval:** Agents 'normalize' terminology across a corpus to comply, rewriting quoted vendor output, evidence, and historical records, and destroying the exact strings users search for. Compliance is also uncheckable without a term list, which the proposal explicitly declines to require.
- **Standards:** Corpora that quote vendor, legal, or upstream vocabulary accumulate unrecorded SHOULD departures and reviewers argue about ordinary stylistic variation.

### Tradeoffs

The homonym rule is mandatory only for consequential terms, so ordinary synonym drift is left to advice.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** Adoption feedback of 2026-10-02: a provider's service tier was nearly scored as a vendor's licensed edition because the names share a word.
- **Protected property:** A statement's scope and meaning are known.
- **How a violation is detected:** Reading one page: the same consequential term used with two meanings.
- **Cost on adoption day:** None for a short how-to unless a term drives an action; one clarifying phrase otherwise.


### Final assessment

Four challengers wanted the dangerous half, one word with two meanings, bound in Core through 3.1.3. The adoption feedback of 2026-10-02 supplies an observed case: a service tier name nearly scored as a licensed edition. General one-term advice has no observed failure and stays guidance.

**Reopen when:** An adopter reports a misreading caused by synonyms of a term that 3.1.3 does not reach.
