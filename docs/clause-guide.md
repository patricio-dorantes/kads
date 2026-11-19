# Clause guide

This page explains every rule of KADS in plain words, says who has to act on it, and shows what following it looks like. It is for anyone who writes, maintains, or reviews documentation under KADS and wants to understand a rule without parsing its formal wording. The exact wording is in the [specification](specification.md); this page is informative and adds no rule.

## How to read a clause

A rule in the specification is called a clause. Take this one:

> **6.2** *Irreversible steps* (author). (a) A procedure step that can cause loss of data, loss of service, or another effect that cannot be undone MUST state that effect in or immediately before the step. (b) The statement SHOULD give the way to avoid or recover from the effect where one exists.

- **6.2** is its number. The numbers run from the general to the specific: proposition 6 is a general statement, and 6.2 makes part of it precise. Cite a clause together with the KADS version, because numbers can change between versions. Propositions 1 to 6 and 8 apply to everyone; the clauses under 7.1 and 7.2 apply only if your project chose those profiles.
- ***Irreversible steps*** is its name, for people. Use the number when you cite and the name when you talk.
- **(author)** is who has to act; where two roles are named, the parentheses say which part belongs to which. There are three roles. The **author** writes or changes a document. The **maintainer** looks after the whole collection: its entry point, its adoption note, its review route. The **reviewer** checks a document or a conformance claim. One person can be all three.
- **(a)** and **(b)** are separate requirements inside the clause. Cite the letter when you mean one of them. Most clauses are lettered this way.
- **MUST** is a requirement. **SHOULD** is a recommendation: you may do otherwise, with a stated reason. **MAY** is a permission. Only capitalized keywords count.

The Strength column below says whether a clause is required, recommended, or both; a recommendation may be departed from with a stated reason.

Many clauses apply only when something is true: "when content is superseded", "a statement that content was verified". If that thing never happens in your documents, the clause asks nothing of you.

## What each role has to care about

- **If you write a page:** say what it is and when it applies (1.2, 1.1), answer first (1.3), show where claims come from (3.1), keep guesses apart from findings (3.2), invent nothing (3.3), and make procedures followable (6.1, 6.2).
- **If you maintain the collection:** keep an entry point that shows what is current (1.2), one home per subject (2.1), reachable pages (2.3), and an adoption note with a review route (8.1). Leave your copy of KADS unedited and send a proposal when a rule does not fit (8.6).
- **If you review:** use the questions in [conformance](conformance.md), cite clauses by number and KADS version (8.2), and record what you reviewed and against which version (3.4, 8.5).

## Every clause in plain words

### 1. Knowledge is written for a reader who arrives with nothing else.

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 1.1 | Self-explanatory documents | Author | Recommended | Open by saying what the document is, what it answers, and what it applies to. Put its history, authorship, and contribution notes last. A notice the reader must act on, such as "generated, edit the source", is not such a note and goes first. |
| 1.2 | Purpose and scope | Author; maintainer for the entry point | Required | A reader can find out what a document is for and when it applies. The entry point shows what is current and what is old. |
| 1.3 | Answer first | Author | Recommended | Give the answer before the background. No fixed sequence of files or headings is required. |
| 1.4 | Consequential terms | Author | Required | A word that decides a score or an action has a stated meaning, and only one meaning in one place. Local terms and translations may differ if the distinction is kept; a glossary is optional. |

### 2. Each subject has one home.

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 2.1 | One canonical home | Maintainer for naming the home; author for not presenting a copy as authoritative | Required | Each subject, meaning each thing the corpus describes that can be changed and dated on its own, is maintained in one place. Other pages link to it; they do not keep a rival copy. A table or diagram can be that place, as long as readers can understand it. |
| 2.2 | Summaries and derived views | Author | Required | A summary keeps the caveats of its source and is never more certain than its source. Update summaries when the source changes, or date them. Advice, not part of the clause: if you repeat a number that changes, generate it or link it, and check it mechanically where you can. |
| 2.3 | Reachability | Maintainer | Recommended | Every maintained page can be reached by links from the entry point. |
| 2.4 | Generated views | Author; maintainer for the edit boundary | Required, with recommended parts | Generated pages name their source. Advice, not part of the clause: where a view merges several sources, say which source carries each claim a reader would act on, not only the directory it was built from; for a figure, 6.1 (b) requires it. Recommended: make it clear which files to edit. |

### 3. A claim is no stronger than its support.

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 3.1 | A basis for every material claim | Author | Required, with recommended parts | A claim a reader will act on shows where it comes from. Recommended: point to the exact passage; say so if you cite something you did not open; and make it possible to get from the answer to its reasoning and method, or say they were not recorded. A basis is identifiable for the claim, not only for the page: a source list that does not say which source carries which claim is not enough. |
| 3.2 | Kinds of statement stay distinct | Author | Required | Keep what was seen, what was inferred, what was assumed, what was guessed, what was recommended, and what was decided apart. Say what is unverified and what contradicts you. |
| 3.3 | Nothing invented | Author | Required | Do not make up sources, results, dates, approvals, or confidence. Say "unknown" when you do not know. |
| 3.4 | Verification claims | Whoever writes the statement: author or reviewer | Required | A statement that documentation content was verified, tested, reviewed, or executed comes with what was checked, against what, and when, or says what is not recorded. An edit date is not such a statement. The clause does not reach a claim that a system was tested; giving that claim the same shape, with what was observed and the criterion, is advice. |
| 3.5 | Agent-drafted content and automated review | Author; whoever states a review | Required, with recommended parts | If an agent wrote, or changed the meaning of, anything a reader would act on, name the accountable person or role. Recommended: say what was generated and what a person checked; generating content is not verifying it. If only agents reviewed it, call that automated review. |
| 3.6 | Artifacts behind claims | Author | Required | When code, a config, or a dataset backs a claim, say where it is, which version, what role it plays, and what it does not show. A config is intent, not proof of what is deployed. Native locations and identities are enough; no catalog is required. |

### 4. Current guidance is kept apart from history.

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 4.1 | Superseded content | The author who supersedes it; maintainer for an older archive | Required, with recommended parts | When you replace something, mark the old thing as replaced, before the rest of it, and link the new one. Recommended: put the mark in the title. |
| 4.2 | Corrections and replaced findings | Author | Required | Current guidance may be fixed in place. When you overturn a decision or a finding, keep what it said and explain what replaced it. |
| 4.3 | Dated facts | Author | Required | A fact that changes over time carries its date or version, and, where it matters, the method and conditions it was established under. This presumes the method was written down when the fact was; 3.1 (d) asks for that. |

### 5. Evidence is kept as it was collected.

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 5.1 | Evidence kept as collected | The author who stores or alters evidence | Required, with recommended parts | Recommended: keep evidence as it was collected. Required: if you correct, transform, redact, or remove it, say so where the reader of that evidence will see it, and say what kind of content changed, when, and why. |
| 5.2 | Run identity | Maintainer for the scheme; the author who stores a run | Required | Every stored run has its own identifier and location, so a second run cannot overwrite the first, even when whoever stores it makes a mistake. A directory name is a label, not the time of collection. |

### 6. A procedure can be followed and its result recognized.

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 6.1 | Procedures and quantities | Author | Required | A procedure states what you need first, what to do, and how to tell it is done. A number carries its unit, scope, date, and source. |
| 6.2 | Irreversible steps | Author | Required, with recommended parts | A step that destroys something says so at the step. Recommended: also say how to avoid or recover. |
| 6.3 | Links and references | Author | Required | Internal links work. External sources can be identified even when access is restricted, and restrictions are stated. |

### 7. Structure is added only where it pays.

**7.1 The tracked-record profile**

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 7.1.1 | Record fields | Author | Required | Each record has an ID, type, title, status, and last-updated date, written once; version history may supply the date. |
| 7.1.2 | Identifiers | Author; maintainer for the namespace | Required | IDs are unique in a named space, never change, and are never reused. A reference into another corpus names it and links to it. |
| 7.1.3 | Relationships | Author | Required | A link that carries meaning says what the meaning is, in the registry's words or a documented local one, and points somewhere real. The rule is about links you write; it does not find links you left out, which is what 3.1 (d) asks about. |
| 7.1.4 | Supersession | Author | Required | The new record says what it replaces; the old record's pointer to its replacement is the same link seen from the other side. |
| 7.1.5 | Status and decisions | Author | Required, with recommended parts | Status says where a record is in its life, not whether it is true, approved, built, or validated. An accepted decision says who authorized it and from when. Recommended: it also says why, or that the reasons are not recorded. |

**7.2 The research-report profile**

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 7.2.1 | What a report contains | Author | Required | Question, method, results kept apart from interpretation, reasoning, sources, limits, and a current answer, even if the answer is "inconclusive". |
| 7.2.2 | Reproducibility | Author | Required | Describe a repeatable experiment well enough for someone else to try it, and say what stands in the way. |
| 7.2.3 | Test reports | Author | Required | Keep apart whether a test ran, what happened, and whether that passes a stated criterion. Say if the criterion was chosen afterwards. |
| 7.2.4 | Scorecards | Author | Required | Show the scale, weights, denominator, and exclusions. Keep "not evaluated", "blocked", "failed", and "not applicable" apart. |
| 7.2.5 | Inherited and observed values | Author | Required | Keep apart what you observed, what a source asserts, and what you inherited from elsewhere. |
| 7.2.6 | Negative results | Author | Required | "Not found" and "no failures seen" are true only for what was actually inspected, and say what that was. |

### 8. A project says what it follows.

| Clause | Name | Who acts | Strength | In plain words |
|---|---|---|---|---|
| 8.1 | Claiming conformance | Maintainer | Required | To say you follow KADS, state the version, which documents are covered, which profiles, any exceptions, and who reviews the corpus and when. |
| 8.2 | Local rules and citations | Maintainer; whoever cites a clause | Required, with recommended parts | Mark your own extra rules as local. Recommended: when you cite a rule, give the KADS version, and say which requirement you mean if the clause holds several. |
| 8.3 | Versioning of KADS | The editors of KADS | Required | How KADS numbers its own versions and what counts as breaking. Adopters need to know that breaking changes are marked, that renumbering is mapped, and, if they declare a version on a derived document, that (c) to (f) say what its parts mean (8.4). |
| 8.4 | Derived documents | Maintainer | Required | Your adoption note and local extensions name the KADS version they follow. If one carries a version of its own, the number is a promise about the change, read as KADS reads its own: patch means nothing material changed; minor means something new to read, a relaxation, or a moved pin; breaking means the corpus could now fail one of its rules or a rule changed meaning. Moving the pin is breaking when the KADS changelog marks a release between the old pin and the new one breaking, unless your note records that none of the marked changes applies to your corpus. A released version never changes its content, and a copy that is still a draft says so, in the number or beside it. |
| 8.5 | Review record | Reviewer for the record; maintainer for keeping it with the adoption note | Required | Record who reviewed the claim, when, against which version, and what remains open. |
| 8.6 | Changing KADS | Maintainer for the project's copy; whoever finds the problem for the proposal | Recommended | Do not edit your copy of KADS, except to add a proposal file by the route KADS names, without moving your project off a released version. Record a local departure as an exception or a local rule, and send a change proposal with its evidence. |

## Examples

Each example shows text that follows a clause, text that does not, and why the difference matters. All are constructed for teaching and describe no real project.

### Clause 1.1: a document explains itself, and talks about itself last

Compliant:

```text
# Configuration reference

Every setting of the export service, with its type, default, and effect.
Applies to version 2.3. For how to change a setting, see the operations
guide.

... the settings ...

## About this page
Generated from config/schema.json. To change it, edit the schema.
```

Not compliant:

```text
# Configuration reference

Last updated by the platform team. History: rewritten in March,
restructured in June. To contribute, open a merge request.

timeout_s: 30
```

Why: the reader came for the settings. A page that opens with its own history makes them hunt for what it is, and a page that never says what it is can only be used by people who already know.

### Clause 1.2: purpose and scope can be found

Compliant:

```text
# Rotate the signing key

For operators of the release pipeline, version 3 and later.
```

Not compliant:

```text
# Notes

Remember to do the key thing before Friday.
```

Why: a reader who cannot tell what a page is for, or whether it applies to their version, either ignores it or applies it wrongly.

### Clause 1.4: a consequential term has one meaning per scope

Compliant:

```text
"Available" in this report means the test account provisioned the service
in the stated region. Where a row means only "listed in the catalog", the
row says "listed".
```

Not compliant:

```text
| Region A | available |     (provisioned in the test)
| Region B | available |     (seen in the catalog, never provisioned)
```

Why: the reader acts on the word. Two meanings behind one word in one table produce a wrong decision that no later sentence can repair.

### Clause 2.1: one canonical home

Compliant:

```text
README:  "Production architecture is described in architecture/production.md."
```

Not compliant:

```text
The production architecture is described, separately and slightly
differently, in README.md, runbook.md, and onboarding.md.
```

Why: three copies drift apart, and nobody can say which one is right.

### Clause 2.1: what counts as one subject

The clause asks for one home per independently maintained subject. The test: can this description be changed, reviewed, and dated as a unit, without that change being part of a change to another description?

| Case | Subject? | Why |
|---|---|---|
| The procedure to restore the billing database, version 3 and later | Yes | Its steps change on their own occasions; the runbook page is its home |
| One configuration value, such as the default timeout | Yes | It changes alone; its home is one row of the configuration table, which is a canonical table (2.1) |
| An interface | Yes | Its contract changes as a unit; the client guide that explains how to use it is a different subject that depends on it and is reviewed after a change (2.2, 8.1), not the same subject |
| A decision | Yes | Its status and reasons change alone; the decision record is its home |
| A research finding | Yes | The report's answer is its description; a later report that revises it supersedes it (4.2) |
| A whole subsystem | Yes, and so are its parts | Subjects nest; the architecture page is the home of the subsystem, while its interface has its own home |
| A document described by another document | Yes, as a subject of that other document | This specification is the subject of the clause guide. A page is not a subject merely because it holds knowledge about one |
| One sentence inside a procedure | No | It cannot be changed as a unit apart from the procedure; changing it is changing the procedure |

### Clause 2.2: a summary is no firmer than its source

Compliant:

```text
Report:  "Hypothesis: the timeouts come from connection-pool exhaustion.
          Not yet tested."
Index:   "Timeouts: pool exhaustion suspected, untested (report)."
```

Not compliant:

```text
Report:  "Hypothesis: the timeouts come from connection-pool exhaustion.
          Not yet tested."
Index:   "Timeouts are caused by connection-pool exhaustion (report)."
```

Why: each restatement that drops a qualifier makes a guess look like a finding, and the link to the source does not undo that for a reader who does not follow it.

### Clause 2.3: maintained documents are reachable from the entry point

Compliant:

```text
README.md -> docs/README.md -> docs/runbooks/README.md -> restore-v2.md
```

Not compliant:

```text
docs/runbooks/failover.md exists, is maintained, and no page links to it.
```

Why: a page no one can navigate to is found only by people who already know it exists, and it goes stale without anyone noticing. Evidence and artifacts need no separate link; they are reached through the page or manifest that cites them.

### Clause 3.1: a material claim shows its basis

Compliant:

```text
The exporter retries three times (src/export/retry.py, line 41, at
commit 9f2c1e).
```

Not compliant:

```text
The exporter retries a few times.
```

Why: a reader who must act on the number needs to be able to check it, and to notice when the code has changed.

### Clause 3.1 (c): an uninspected source should be identified

Compliant:

```text
The numbering scheme originated in an earlier specification (stated in a
secondary source; the specification itself is paywalled and was not
inspected).
```

Not compliant:

```text
Clause 7.5.3.2 of the standard requires obsolete documents to be marked.
(written from memory; the clause says no such thing)
```

Why: a citation tells the reader that someone looked. A citation recalled from memory or copied from another work may be wrong in exactly the detail the claim depends on, and it gives no warning. The clause is a SHOULD because a reviewer cannot tell from the page whether a source was opened; an unmarked citation therefore proves nothing either way.

### Clause 3.2: assumption and hypothesis stay distinguishable

Compliant:

```text
Observed: the request returned HTTP 403 at 14:02.
Assumed: the service account had the role listed in the ticket (not checked).
Inferred: the role does not grant write access to this bucket.
```

Not compliant:

```text
The request failed because the role does not grant write access.
```

Why: the second form hides that the conclusion rests on an unchecked assumption. If the assumption is false, the reader has no way to see which part to re-examine.

### Clause 3.3: nothing invented

Compliant:

```text
Collected by: unknown. Collection date: unknown; the file was found in
the shared drive on 2026-09-01.
```

Not compliant:

```text
Collected by the operations team on 2026-08-15.
(written because that seemed likely)
```

Why: a plausible invented detail is worse than a gap, because nobody goes looking for what they think they already know.

### Clause 3.4: a verification claim says what, against what, and when

Compliant:

```text
Verified: steps 1 to 6 executed as written, against staging cluster
version 7.1.1, on 2026-09-28, by the on-call engineer.
```

Also compliant, for an older note whose details are lost:

```text
Tested at some point before 2025; what was tested and against which
version is not recorded.
```

Not compliant:

```text
Status: verified.
Last tested: recently.
```

Why: "verified" without its object and date cannot be checked and silently outlives the system it was true for. A page that makes no such claim owes nothing under this clause, and a link to a method section that carries the details satisfies it.

### Clause 3.5: what counts as agent-drafted

The test is whether an automated agent produced, or changed the meaning of, content whose error could change what a reader does or believes. Volume does not matter; meaning does.

| Case | Agent-drafted? | Why |
|---|---|---|
| Spelling corrected by a tool | No | Meaning preserved |
| Reformatted by a tool | No | Meaning preserved |
| Summarized by an agent | Yes | A summary selects and omits; that shapes meaning |
| Translated by an agent | Yes, unless a person checked that the meaning is the same | A translation can shift a normative or technical distinction |
| Human reasoning reworded by an agent | No, if a person checked that it says the same; yes if in doubt | The test is what the change did to the meaning |
| One safety-critical step added by an agent to a human-written procedure | Yes | One material instruction is enough |
| Most of the text generated by an agent around claims a person supplied verbatim | Treat as yes | The connecting text may itself instruct or conclude; say which content the person supplied |
| A conclusion proposed by an agent and then edited by a person | Yes, with the verification stated | The agent produced the conclusion; the edit is the verification clause 3.5 asks to be described |

The disclosure is one line per document, so doubt resolves toward disclosing.

### Clause 3.5: review by automated agents is named as such

Compliant:

```text
Drafted by: an automated agent. Reviewed by: six automated agents
(automated review). Author of record: the repository maintainer.
Verified by a person: nothing yet.
```

Not compliant:

```text
Independently reviewed.
```

Why: a second agent is not a person and may share the first agent's blind spots. The reader decides how much weight to give the review only if told what kind it was.

### Clause 4.1: superseded content says so where the reader meets it

Compliant:

```text
# Restore a backup (superseded by restore-v2.md)

Superseded on 2026-09-30. Use restore-v2.md, "Restore a backup, version 2".
```

Compliant, for evidence that must not be altered:

```text
results/2026-09-12-1/README.md
  The procedure recorded in session.log was withdrawn on 2026-09-30.
  Current procedure: docs/restore-v2.md. The log is preserved unaltered.
```

Not compliant:

```text
docs/README.md        "restore.md is deprecated; see restore-v2.md"
docs/restore.md       (no mention of its status anywhere on the page)
```

Why: a reader who arrives by search, a bookmark, or a retrieved excerpt never sees the entry point. The title is used because it is the part most likely to travel with any excerpt of the page.

### Clause 4.2: a replaced finding keeps its meaning

Compliant:

```text
Finding (2026-06): the service is unavailable in region B.
Replaced on 2026-09-14: available through the newer interface; the
June test used the older one. See the September report.
```

Not compliant:

```text
The service is available in region B.
(the June finding was edited to say the opposite, with no trace)
```

Why: someone acted on the June finding. They need to see that it changed and why.

### Clause 6.2: an irreversible effect is stated at the step that causes it

Compliant:

```text
4. This step deletes the volume and cannot be undone. Confirm that the
   snapshot from step 2 is listed before continuing.
   Run: volume delete <volume-id>
```

Not compliant:

```text
Warnings: some steps are destructive.            (top of page)
...
4. Run: volume delete <volume-id>
5. Note: step 4 cannot be undone.
```

Why: under time pressure a reader jumps to the step. A warning placed after the action, or only at the top of the page, is read too late or not at all. Part (b) asks for the way to avoid or recover, as the compliant example gives.

### Clause 7.1.5: an accepted decision gives its reasons

Compliant:

```text
Status: accepted. Authorized by the platform lead on 2026-09-12.
Reasons: the managed queue removes two on-call pages a month (link to
the incident list); cost is within the budget in the planning note.
```

Also compliant:

```text
Status: accepted. Authorized by the previous team lead, date unknown.
Reasons not recorded.
```

Not compliant with the recommendation:

```text
Status: accepted.
```

Why: a decision without reasons cannot be re-examined when circumstances change. Saying that the reasons are lost is cheap and tells the next reader not to search for them.

### Clause 7.2.6: no failure observed is a negative result

Compliant:

```text
No errors in 14 days of production traffic at about 200 requests per
second. Errors would appear in the 5xx rate alert, which last fired on
2026-08-02. Batch imports did not run in this period.
```

Not compliant:

```text
Stable in production; no issues.
```

Why: absence of failure says something only about what was exercised and what could have been seen.

### Clause 8.2: a reference names the requirement concerned

Compliant:

```text
Exception to clause 6.2(a): the vendor-supplied recovery procedure in
docs/vendor/ is preserved verbatim and keeps its warnings in a section at
the top; a note above it lists the destructive steps.
```

Not compliant:

```text
Exception to clause 6.1.
```

Why: clause 6.1 holds two lettered requirements. An exception that does not say which one it concerns cannot be reviewed.

### Clause 8.6: the copy of KADS is not edited; a proposal is sent

Compliant:

```text
docs/README.md (the project's adoption note)
  Exceptions: clause 2.3, docs/legacy/, expires 2026-12-31.
standards/kads/        pinned at tag v0.9.0
standards/kads/proposals/2026-10-04-reachability-in-archives.md
  A new file on a proposal branch, sent as a merge request.
  The project's pin stays on the tag.
```

Not compliant:

```text
standards/kads/docs/specification.md
  (clause 2.3 deleted locally because it did not fit the archive)
```

Why: whoever edits the copy sees one project. They do not see why the rule exists or who else relies on it, and after the edit "we follow KADS 0.9.0" is no longer true, with nothing to show it.

### Conformance: a list of exceptions shows dates

Compliant:

```text
Exceptions
- Clause 2.3, docs/legacy/: expires 2026-12-31.
- Clause 4.1(b), archived runbooks: expired 2026-06-30, not renewed.
```

Not compliant:

```text
Exceptions
- Clause 2.3, docs/legacy/.
```

Why: a list without dates cannot show that an acceptance has lapsed. Keeping a lapsed exception in the list, as the compliant example does, is advice in the consequence guide; no clause requires it.
