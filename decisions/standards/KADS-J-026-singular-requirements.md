# J-026  -  Singular, individually identified requirements in the specification (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

The cheap part is done now. Clause 1.4 says a reference SHOULD identify the requirement concerned by letter or by quotation. Conformance says the same for exceptions. CONTRIBUTING requires each new normative sentence to state one requirement and new multi-requirement clauses to be lettered, as clauses 3.1.4 and 3.5.4 are. Lettering the older clauses is deferred.

## Evaluation record

```yaml
candidate:
  id: J-026
  title: "Singular, individually identified requirements in the specification"
  source: "ISO/IEC/IEEE 29148:2018 and the INCOSE Guide to Writing Requirements, characteristic \"singular\" (neither inspected; both paywalled on 2026-10-03; cited from prior knowledge)."
  original_problem: "A clause holding several requirements cannot be cited precisely in an exception or finding."
  proposed_kads_rule: "Defer to a restructuring before 1.0."

evaluation:
  expected_benefit: "Exceptions and findings point at one requirement"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "medium"
  tooling_dependency: "none"
  interoperability_value: "medium"
  traceability_value: "high"
  retrieval_value: "medium"
  machine_readability_value: "medium"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "none"
  bureaucracy: "medium"
  over_modeling: "low"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Sub-lettering every sentence makes the specification read like a contract"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "Five challengers rejected a pure deferral: the ambiguity exists today, and this release itself adds requirements. The minimalist accepted deferral with a trigger. Retrofitting 43 clauses now would change every published clause for no adopter-reported case."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist DEFER/NONE, Cognitive load MODIFY/GUIDANCE, Traceability MODIFY/CORE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** Paragraph-level IDs with three or four MUSTs each do make an exception citing '3.3.2' ambiguous, and 6.4 relies on clause citation.
- **Cognitive load:** Not renumbering 43 clauses now avoids churn for every existing reference and keeps the spec at a size that can be read in one sitting; splitting would roughly double the clause count.
- **Traceability:** A full split of 43 clauses is disruptive, and 1.4 promises that numbers are stable, so restructuring deserves care.
- **Operations:** Renumbering forty-three clauses pre-1.0 with one adopter is churn, and clause 1.4 makes numbers permanent, so a rushed split would be costly.
- **AI and retrieval:** Not renumbering 43 clauses without adopter evidence respects 1.4 and avoids churn in existing conformance claims.
- **Standards:** A full split of 43 clauses now would churn identifiers that clause 1.4 promises are stable.

### Arguments against adoption

- **Minimalist:** Deferral is right but for a stronger reason than the author gives: splitting 43 paragraphs into roughly 90 singular clauses doubles the visible structure for a citation problem no adopter has reported, and an exception must already state its scope in words (conformance, 'affected clause identifier and scope'). Counterpoint to my own merges: folding sentences into 3.1.1, 3.2.2, 3.5.1 and 3.5.2 makes paragraphs denser, which this candidate will later have to undo.
- **Cognitive load:** Deferral has a cost the proposal does not count: clause 1.4 makes numbers permanent, so restructuring gets more expensive with each adopter, and this very package adds more multi-requirement paragraphs (proposed draft 3.1.5 has two MUST, draft 7.6 has two). A reader of an exception that cites '3.3.2' already has to guess which of three sentences is meant; that interpretation cost exists today, with or without adopter complaints.
- **Traceability:** The ambiguity is present today, not hypothetical. conformance.md requires an exception to record 'the affected clause identifier', and 6.4 requires unresolved findings by clause, yet 3.3.2 holds three independent MUSTs, 3.4.4 holds two MUSTs and a SHOULD, 3.5.2 four, 4.6 four. An exception to '3.4.4' does not say whether run identity or overwrite protection is waived. The cost argument is also inverted: sub-identifiers need no renumbering (3.3.2 stays valid as the parent), and the cost of splitting only rises as adopters accumulate citations. 'No adopter evidence' is weak when the standard is pre-1.0 with few adopters, and this package adds more multi-requirement clauses (draft 3.1.5, draft 3.3.5, draft 7.4, draft 7.6).
- **Operations:** Deferral gets more expensive with every release, and this release adds roughly ten clauses in the old style: draft 3.1.5 holds two MUSTs, draft 7.4 two, draft 7.6 three. Clause 6.4 and the conformance exception rule require citing clauses, and existing clauses bundle unrelated duties: 3.5.2 covers procedures, research limitations, and quantitative results, so an operations team's exception to '3.5.2' is ambiguous today. 'No adopter evidence' is weak when there is one adopter and it has had little reason to file exceptions yet. A non-breaking fix exists that does not renumber anything.
- **AI and retrieval:** Deferral makes the problem larger with this very release: the proposed draft 3.1.4 holds three SHOULDs, draft 3.1.5 two MUSTs, draft 3.3.5 a MUST plus an unkeyworded rule. For an agent, a multi-requirement clause is not a citation nuisance; it is a compliance defect, because 'checked 3.3.2' can mean any one of four obligations and a retrieved clause fragment may hold half of them. The candidate file itself states the ambiguity, which is evidence. And the cost argument assumes renumbering, which is unnecessary.
- **Standards:** Deferral makes the debt grow: this same package proposes new multi-requirement clauses (draft 3.1.5 and draft 3.3.5 each carry two obligations, draft 7.4 and draft 7.6 several), and clause 1.4 and 6.4 already make clause IDs the unit of exception and review, so the ambiguity exists today regardless of adopter complaints. Singularity can be applied to new text without renumbering anything, and sentence-level citation of existing clauses can be allowed by a suffix convention without changing a number.

### Failure modes

- **Minimalist:** An open 'pre-1.0 restructuring' item with no trigger either never happens or happens the week before 1.0 as an unreviewed renumbering.
- **Cognitive load:** By the pre-1.0 restructuring there are more clauses, more adopters and more recorded exceptions pointing at ambiguous paragraphs, so the split is postponed again.
- **Traceability:** A project declares 'exception: 3.3.2' meaning it does not mark provisional claims; a reviewer reads it as waiving contradiction disclosure too; the exception record cannot settle which.
- **Operations:** A legacy adopter records 'exception: 3.5.2' for its runbooks; a reviewer later cannot tell whether unsourced quantitative results are also excepted, and partial conformance is reported as covered.
- **AI and retrieval:** A review record says 'exception to 3.4.4'; no one can tell whether the identifier, the storage layout, or the timing SHOULD is excepted.
- **Standards:** By the pre-1.0 restructuring there are 55 or more bundled clauses and recorded adopter exceptions that point at ambiguous paragraphs.

### Tradeoffs

The specification has two styles until the retrofit: older dense clauses and newer lettered ones.


### Final assessment

Five challengers rejected a pure deferral: the ambiguity exists today, and this release itself adds requirements. The minimalist accepted deferral with a trigger. Retrofitting 43 clauses now would change every published clause for no adopter-reported case.

**Reopen when:** The first exception or review finding that cannot be resolved by quoting the sentence, or the 1.0 milestone, whichever comes first.
