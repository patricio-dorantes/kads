# J-010  -  Verification state separate from lifecycle (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Clause 3.3.5: a statement that documentation content was verified, reviewed, tested, or executed MUST say, or link to, what was checked, against which version or environment, and when, or state which of these is not recorded. It binds only when such a statement is made. No verification-state vocabulary. The authoring guide gives the line a fixed shape.

## Evaluation record

```yaml
candidate:
  id: J-010
  title: "Verification state separate from lifecycle"
  source: "S1000D quality-assurance status, whose terms are \"first verification\" and \"second verification\", not the wording used in the draft (overview inspected 2026-10-03). The draft also cited ISO 9001 for this; that citation is withdrawn."
  original_problem: "A page says \"verified\" or \"tested\" and the reader cannot tell what was checked, against what, or when."
  proposed_kads_rule: "Fold into the draft Procedure profile; guidance elsewhere."

evaluation:
  expected_benefit: "A verification claim becomes inspectable"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "medium"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "high"
  retrieval_value: "low"
  machine_readability_value: "medium"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "medium"
  over_modeling: "low"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A \"last verified\" field that authors advance without checking"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "The traceability challenger argued that verification had a prohibition, clause 3.3.3, and no positive form. KADS has an observed case in its own history: the 0.3.0 changelog claimed a specialist review with no record of what was reviewed or when. Only the traceability challenger placed it in Core; three wanted guidance and two a profile. The conditional form answers their cost objection, since a page that makes no such claim owes nothing. The final gate reviewer kept it as a MUST after rewording it to allow a link and to allow \"not recorded\", so that honest older notes are qualified and not deleted."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/GUIDANCE, Traceability MODIFY/CORE, Operations MODIFY/PROFILE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/PROFILE.

### Arguments for adoption

- **Minimalist:** Separating 'verified' from 'edited' is real: 3.3.3 says editing does not establish revalidation, and readers do mistake a recent commit for a recent check.
- **Cognitive load:** Knowing when and against what a volatile value was last checked lets a reader decide whether to recheck, and separating that from lifecycle status prevents 'active' being read as 'verified'.
- **Traceability:** Keeping lifecycle and verification separate is right, and draft 7.6 gives procedures an explicit execution statement. Avoiding a mandatory QA-status field keeps one-person projects viable.
- **Operations:** An honest 'executed as written, when, against what' statement is the single most useful line on a runbook, and it makes clause 3.3.3 concrete for agent-drafted procedures, which are plausible and never run. Saying 'not executed' costs one line.
- **AI and retrieval:** A 'last verified against <version> on <date>' statement is the only freshness signal a retriever or agent can actually use; 'updated' dates are worse than useless once agents edit pages, because every agent edit advances them.
- **Standards:** Separating 'was this checked, how, and against what' from lifecycle status is a real gap, and placing it in the procedure profile limits the cost.

### Arguments against adoption

- **Minimalist:** Everything proposed already exists: 3.3.3, 3.4.3 (date or revision for changing facts), the authoring guide ('an edit date alone must not suggest a procedure was rerun') and the template ('record verification dates'). draft 7.6 turns that into two MUSTs and a per-procedure field that must be re-edited after every change.
- **Cognitive load:** A verification statement is metadata the author must maintain forever, and it decays silently: a 'last verified' date that is two years old is copied forward through edits and reads as assurance. S1000D-style states (unverified, first verified, second verified) would be three more terms. The template already prompts for verification dates and the authoring guide already says an edit date does not imply a rerun, so the marginal content here is small.
- **Traceability:** The proposal leaves verification as the only assessment in KADS with a prohibition (3.3.3: editing does not establish revalidation) and no positive form. In the tracked-record profile 'updated' is defined as explicitly not the verification date, so a reader of an accepted record has no required way to learn when, against what, or by whom its content was last checked. Guidance-only means that the words 'verified' or 'tested' can appear with no inspectable referent.
- **Operations:** As written, draft 7.6 is not maintainable: the statement is true on the day it is written and silently false after the next edit to any step, yet it stays on the page. It conflates executed with verified (a disaster-recovery procedure can be reviewed or exercised in part but not executed; a procedure can be executed with deviations that never get written back), and it is binary where reality is partial: steps 1 to 6 in staging, never in production. 'Last verified' dates are also the most bulk-faked metadata in practice: a sed pass or an agent bumps them. Leaving volatile reference content (hostnames, contacts, capacity tables) at guidance only ignores that this is what rots fastest, although 3.4.3 partly covers it.
- **AI and retrieval:** Guidance-only outside procedures leaves the most agent-prone falsification unaddressed. An agent that touches a page will carry forward or refresh a 'verified' line as part of tidying, and 3.3.3's 'editing does not establish revalidation' is a statement of fact, not an instruction about what to do with the existing verification statement.
- **Standards:** The S1000D status names are misreported (first verification and second verification, each with a type of table-top or on-object), and the useful concept is exactly the part omitted: how the check was done, at a desk or on the real system. ISO 9001 review and approval is clause draft 7.5.2 c) and concerns suitability and adequacy, not technical verification, so it does not support this candidate.

### Failure modes

- **Minimalist:** 'Last verified' dates are bumped by reflex during unrelated edits, which is exactly the false signal 3.3.3 exists to prevent, now with a normative field behind it.
- **Cognitive load:** Pages acquire a 'Last verified:' field as a habit; it is updated on cosmetic edits or never, and readers trust a number nobody stands behind.
- **Traceability:** Pages carry 'verified' badges or 'last reviewed' dates that mean a typo fix; readers treat them as revalidation and the corpus cannot show otherwise.
- **Operations:** At 3 a.m. the operator trusts 'Executed as written 2025-03 on prod' on a procedure whose steps were edited four times since by people and agents who did not touch that line. Or an agent updating the page refreshes the date because it looks like an 'updated' field.
- **AI and retrieval:** Reference table edited by an agent for formatting; 'Last verified: 2026-03' becomes 'Last verified: 2026-10' or stays attached to values the agent changed.
- **Standards:** draft 7.6 records 'executed: yes, 2026-09' and readers cannot tell a dry read-through from a run on the real environment; or adopters copy a three-state field that means something else in S1000D.

### Tradeoffs

Existing unqualified "tested" statements in an adopting corpus must be qualified or removed.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** KADS 0.3.0 changelog claimed a specialist review with no record of what was reviewed or when; the README review record for 0.6.0 first claimed a check against a commit that did not exist.
- **Protected property:** Nothing is stated more firmly than its support.
- **How a violation is detected:** Text search for verified, reviewed, tested, executed; then reading the sentence.
- **Cost on adoption day:** Qualify each such statement or say what is not recorded. Nothing where no such statement is made.


### Final assessment

The traceability challenger argued that verification had a prohibition, clause 3.3.3, and no positive form. KADS has an observed case in its own history: the 0.3.0 changelog claimed a specialist review with no record of what was reviewed or when. Only the traceability challenger placed it in Core; three wanted guidance and two a profile. The conditional form answers their cost objection, since a page that makes no such claim owes nothing. The final gate reviewer kept it as a MUST after rewording it to allow a link and to allow "not recorded", so that honest older notes are qualified and not deleted.

**Reopen when:** Adopters report that the clause leads authors to delete honest but informal verification notes.
