# Recording decisions in proportion to consequence

This guide says what is worth writing down when a decision, a change, an exception, or an incident matters enough that someone will later ask why it looked reasonable at the time. It is for engineers and reviewers who record such things. It is advice: it adds no requirement and no conformance profile.

The test throughout is one question. Could a competent engineer six months from now reconstruct what was believed, why, on what evidence, which risks were knowingly accepted, and whether reality later confirmed it? If yes, enough was recorded. If answering takes ceremony, record less.

Three limits apply to everything here.

- KADS governs records, not process. This guide never asks for a review to be held, a role to be staffed, or a change to be approved (see the preface of the specification).
- A complete-looking record is not evidence of diligence. Every prompt below can be answered with one plausible sentence by a person or an agent who checked nothing. The record shows what was claimed, and clauses 3.1 and 3.3 to 3.5 govern whether the claims are honest.
- Nothing here needs a second document. Where a pull request, change ticket, or incident tracker already holds the answer, a link to it is the record.

## How much to write: two questions

KADS defines no assurance levels, no labels to store, and no classifier. Two questions about the change itself decide how much is worth recording.

1. **Does the effect reach beyond the people deciding?** Other teams, customers, data they own, or an interface they consume.
2. **Can the effect be undone, and would a failure be noticed?** A change that cannot be undone and matters, or whose failure nobody would detect, is in a different class from one that a revert repairs.

| Answers | What to record |
|---|---|
| No to the first; a revert repairs it | Nothing beyond what the change already carries, such as its commit message or pull request |
| Yes to the first | The reasons, the evidence and what it does not cover, the assumptions, and how it can be undone |
| Cannot be undone and matters, or failure would go unnoticed | The same, plus how it could fail, how that would be detected, who other than the authors examined the reasoning, and any disagreement that could change the choice |

A project that already has change types or severity classes uses those and does not add these. Sending a message or deleting a scratch file cannot be undone either; the second question is about magnitude as well as reversibility. The table costs nothing to evade, since a change can always be called minor, so it is advice for people who want the record and not a control for people who do not.

The idea that scrutiny should scale with consequence is common to the practices this guide draws on. NASA's software requirements scale the number of applicable requirements by software class, and Google's account of launch reviews reports that low-risk launches faced "an almost trivial checklist, while higher-risk launches underwent the full gamut of checks and balances". In both, the class is set in advance for a system or a category of launch, not judged per change by its author, so neither is precedent for self-assessment. The [sources](sources.md) page says which passages were inspected.

## A decision to proceed is a conclusion and a choice

"We are ready" is a conclusion. "We will proceed" is a choice. Clause 3.2 already asks that the two stay distinguishable. The conclusion needs its basis (clause 3.1); the choice needs its authority (clause 7.1.5, where tracked records are used). Writing them as one sentence, "approved for release", hides which one a later reader should question.

Useful prompts, each answerable in a line or by a link:

- What is changing, and for which system and version?
- Why is it believed to work, and what does the evidence not cover?
- What is being assumed?
- What can still go wrong, how would it be noticed, and how is it contained or undone?
- Who accepts what remains? A role is enough.
- Does anyone disagree in a way that could change the choice?

**Absence of failure.** "It has run for a month without problems" is a negative result. Where the research-report profile is applied, clause 7.2.6 requires its scope; elsewhere the same is good advice: say what was watched, for how long or under what load, and how a failure would have shown. A monitor that has never fired has not been shown to work.

**Undoing.** Say how the effect is undone or contained, or that it cannot be. For a procedure, clause 6.2 already places that statement at the step. A rollback that has never been exercised is an assumption, and is recorded as one. In continuous delivery the native forms are a canary with an abort condition stated before rollout, a feature flag, or a staged rollout; link to them.

**Examination.** If someone other than the authors examined the reasoning, say who and what they looked at (clause 3.4). If no one did, say so. If the examiner was an automated agent, clause 3.5 applies. Author, reviewer, challenger, approver, and risk owner are functions, not posts; in a small team one person holds several. The number of approvals is not evidence of anything.

## Exceptions

KADS has one definition of an exception, in [conformance](conformance.md#review-outcome): the requirement departed from, scope, reason, consequence, responsible role, and an expiry date or a condition for review. A project can use the same six fields for departures from its own requirements, wherever it already keeps them: an inline suppression comment with a date, a policy waiver, a risk register entry.

- Start the line with `Exception to` and the requirement, so that a search finds every exception.
- Write an expiry date as a date alone, `YYYY-MM-DD`, so that it can be compared with today.
- **A lapsed exception stays visible.** When the date passes and nobody renews it, the departure usually continues. Showing it as lapsed is the point; removing it from the list hides the most dangerous state. The Rogers Commission found, of the Challenger launch, that no system made it imperative for waivers of launch constraints to be considered by all levels of management. That finding is about visibility, not expiry, and it is precedent for the problem, not evidence that a list prevents it.
- A departure meant to be permanent is not an exception. Change the requirement, or record a decision that it does not apply in that scope.
- An exception that exposes a weakness, such as an unpatched system, belongs where access is restricted, with a pointer from the corpus that says a restricted record exists (clause 6.3).

## Disagreement

A disagreement that could change the choice is a known contradiction, and clause 3.2 already requires those to be disclosed. Record the concern, the reason it did not prevail, and what would reopen it. A role is enough; nobody has to be named.

Recording dissent gives no one a veto and settles nothing by itself. NASA's formal dissent process pairs the record with a right to take the issue upward and a rule against suppression or retribution; those are governance, which KADS does not provide. What a record can do is keep silence from being read as agreement.

## Incidents and lessons

An incident investigation is an investigation, and where the research-report profile is applied clause 7.2.1 covers its question, observations, reasoning, and limits. Two additions are worth making.

- **Give each lesson a disposition by link.** A change made, a change tracked somewhere, a risk accepted by a role, or no change with the reason. Link to the change or the tracked item and do not copy its state: "pending" typed into a document is stale the day the ticket closes. "No change" is a legitimate outcome. Forcing a change after every incident produces meaningless changes and teaches people to draw fewer lessons.
- **Link back to what the incident contradicts.** If a recorded decision relied on an assumption the incident showed to be false, link the two. That is how a reader learns whether reality confirmed the decision.

Keep the record about the system. Naming who accepted a risk next to the incident it led to turns a learning record into a blame record, and people then stop writing honestly.

## Relationships

No new relations are needed. A decision is `supported-by` its evidence and `supersedes` an earlier decision. An assumption worth tracking is an open question that the decision `depends-on`. For the rest, such as an incident that led to a changed test, a plain link with a few words of context says more than a forced label.

## Six examples

Each shows what is written beyond what the team's own tools already hold. All are constructed.

**1. Routine deployment.** A copy change on a settings page, reverted by redeploying the previous build. Written: nothing beyond the pull request.

**2. Schema migration.** Adding a nullable column that a reporting team reads.

```text
Reasons and evidence: migration ran on a copy of production (link);
it did not cover the largest tenant's table.
Assumes: the reporting job ignores unknown columns (not checked).
Undo: drop the column; no data is rewritten.
```

**3. Authentication change.** Shortening session lifetime for all users. Other teams' clients are affected, and a logged-out user cannot be un-logged-out.

```text
Evidence: staged rollout at 5 percent for 7 days (link); did not
cover the mobile clients below version 4.
Undo: turn the flag off; sessions already shortened are not restored.
Could fail: mobile clients that never refresh would log users out.
Detected by: login-failure rate alert, last seen firing on 2026-08-02.
Examined by: a second engineer read the client refresh code (link).
Disagreement: support lead expects a ticket spike; did not prevail
because the change is behind a flag at 5 percent first.
```

**4. Production incident.** A queue backed up for two hours.

```text
Lesson 1: consumer had no backpressure  ->  change, tracked in <link>.
Lesson 2: alert threshold was too high  ->  changed, <link to commit>.
Lesson 3: runbook step 4 was unclear    ->  no change; it was followed
          correctly and the delay came from lesson 1.
Contradicts: the capacity assumption in the decision at <link>.
```

**5. Temporary exception.**

```text
Exception to: "all services use the shared TLS configuration".
Scope: the legacy billing exporter. Reason: vendor library pins an
older protocol version. Consequence: weaker transport inside the
private network. Responsible role: platform lead.
Expires: 2026-12-31
```

After that date, with no renewal, a list shows it as lapsed. It does not disappear.

**6. Irreversible, wide-reaching change.** Dropping a table after a data migration.

```text
Cannot be undone after the backup retention of 30 days.
Evidence: row counts match between old and new stores as of
2026-09-30 (link); the comparison did not check archived tenants.
Could fail: a job nobody listed still reads the old table.
Detected by: query log on the old table, empty for 14 days (link);
the log covers scheduled jobs only, not ad hoc queries.
Restore: tested from backup on 2026-09-28 against staging.
Examined by: no one other than the two authors.
Accepted by: data platform owner.
```

The last example is nine lines. It is longer than the first because more can go wrong, and for no other reason.

## About this guide

This is advice and not a profile of the specification. The reasoning is in the [decision record](../decisions/assurance/README.md).
