# J-019  -  Retain rejected proposals with their reasons (accepted)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

CONTRIBUTING now says a rejected or deferred proposal is recorded with its reason and reopening condition. This evaluation is kept as 31 records under `decisions/standards/` with an index table.

## Evaluation record

```yaml
candidate:
  id: J-019
  title: "Retain rejected proposals with their reasons"
  source: "Architecture decision record practice (Nygard 2011, already cited by KADS)."
  original_problem: "Settled questions are reopened because nobody recorded why they were settled."
  proposed_kads_rule: "Accept; already covered by the \"rejected\" status."

evaluation:
  expected_benefit: "Maintainers do not relitigate without new evidence"
  cognitive_cost: "low"
  authoring_cost: "medium"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "none"
  traceability_value: "high"
  retrieval_value: "low"
  machine_readability_value: "low"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "medium"
  bureaucracy: "medium"
  over_modeling: "low"
  premature_standardization: "none"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Draft wording in a rejected record is retrieved and read as a rule"

decision:
  disposition: ACCEPT
  target_layer: GUIDANCE
  rationale: "Four challengers wanted one record with a table, not one record per candidate. The evolution brief required a record for each principle, and the maintainer's instruction takes precedence. Their concern is met in three ways: the index is the reader-facing view, each record carries its outcome in its title, and draft wording is labelled as not adopted."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/NONE, Traceability MODIFY/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/GUIDANCE, Standards ADOPT/GUIDANCE.

### Arguments for adoption

- **Minimalist:** Keeping the reasons for rejection prevents the same proposals returning every release; the nomenclature already says to retain the reason.
- **Cognitive load:** Kept rejections stop the same proposal being re-argued and show a newcomer why the standard is small.
- **Traceability:** Keeping rejected proposals with reasons is how a future maintainer learns that an idea was considered and why it failed. The nomenclature status 'rejected: retain the reason' already expresses it.
- **Operations:** Rejected options with reasons stop the same proposal from returning every six months and are standard ADR practice.
- **AI and retrieval:** Retained rejections stop the same proposal being re-argued, and they give an agent the reason a tempting change was not made.
- **Standards:** Already in the nomenclature; applying it to this evaluation is consistent self-adoption.

### Arguments against adoption

- **Minimalist:** 'Keeping the rejected candidates as records' can mean about twenty tracked records with ID, type, title, status and updated date under 4.2, for proposals that will never be touched again. Section 4 is optional precisely so that this is not required.
- **Cognitive load:** Already covered by the nomenclature, so no rule change is needed; the risk is in 'apply it': about eighteen rejected or deferred candidates stored as individual records would outnumber many of the real documents and add search noise for every later reader of the repository.
- **Traceability:** 'Already covered' overstates it. The rule lives only in a status definition of the optional tracked-record profile; nothing in Core or CONTRIBUTING obliges KADS or an adopter to keep a rejected alternative at all. And the present evaluation's rejections live in workbench/candidates.md, a working file with no ID, status, or link from the changelog, so 'apply it by keeping these as records' is an intention, not a mechanism.
- **Operations:** Kept as thirty-one records, the rejected candidates become noise in a repository that adopters pin as a submodule, and they contain proposed clause text with MUST and clause numbers. An agent or a search that lands on that text can apply a rejected or superseded wording as if it were the standard; this is precisely the J-027 problem, created by the standard on itself. Retention without a revisit condition is also only half useful.
- **AI and retrieval:** Retained rejected material is the purest source of contradictory context. A rejected or modified proposal contains fully formed normative-sounding text (this evaluation's candidate file contains draft clauses draft 3.1.4, draft 3.1.5, draft 3.3.5, draft 3.5.4, draft 3.5.5, and draft 7.2 to draft 7.6 with MUST wording), and a retriever returns that text for a question about what KADS requires. A status line at the top of the file does not reach the chunk holding the draft clause.
- **Standards:** Recording the candidates as written would preserve the factual errors in their source lines (ISO 9001 clause, RFC quotation, S1000D status names, Z535.6, PROV) inside the KADS corpus, where 3.3.1 and 3.3.3 apply. The 'rejected' status also exists only in the tracked-record profile, so this is not covered for corpora that do not use that profile.

### Failure modes

- **Minimalist:** Twenty-plus rejected records clutter the registry, each needing link maintenance, and the next evaluation adds twenty more.
- **Cognitive load:** The rejected-records pile becomes the largest part of the corpus, and a search for 'transclusion' or 'hypothesis' lands on rejection records before the actual rule.
- **Traceability:** The workbench is cleaned up after release; in a year someone proposes PROV metadata again and nobody can find the earlier reasoning or the condition that would reopen it.
- **Operations:** An adopter's agent greps the KADS submodule for 'MUST', finds draft clause draft 3.5.4 or a rejected 7.x wording in the retained records, and enforces it.
- **AI and retrieval:** An agent answers 'KADS clause draft 3.3.5 says ...' quoting the rejected or pre-modification wording from the retained evaluation record rather than the specification.
- **Standards:** Rejected records become a citable source of wrong statements about external standards.

### Tradeoffs

Thirty-one files to keep, against one table.


### Final assessment

Four challengers wanted one record with a table, not one record per candidate. The evolution brief required a record for each principle, and the maintainer's instruction takes precedence. Their concern is met in three ways: the index is the reader-facing view, each record carries its outcome in its title, and draft wording is labelled as not adopted.

**Reopen when:** The records prove to be read as rules by people or agents; then collapse them into the index.
