# J-032  -  Decision and readiness assurance (profile deferred; guidance and three attachments accepted)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Namespace:** `kads-design`  
**Result:** KADS 0.7.0

**Authorship and review.** Everything here was produced by automated agents on 2026-10-03: one proposal agent, seven challengers who did not see each other's reports, a synthesis step by the orchestrating agent, and one final gate reviewer. That is automated review, not verification by a person (clause 3.3.4). The repository maintainer is the author of record. The maintainer's act of tagging and publishing `v0.7.0` is the ratification of these dispositions; what the maintainer personally examined is not recorded here.

This file is a record of an evaluation, not a rule. Draft clause wording quoted in it, in particular a draft "section 7", was not adopted. The only rules are in the [specification](../../docs/specification.md) and [conformance](../../docs/conformance.md). Raw material is preserved in the [evidence bundle](evidence/2026-10-03-2/README.md).

## Question

A brief supplied by the maintainer asked whether KADS should take on a lightweight model of engineering decision and readiness assurance, drawn from high-assurance practice: rationale, evidence proportional to consequence, explicit risk acceptance, off-nominal reasoning, recovery, independent challenge, traceable dissent, and incident learning. It listed ten principles and twelve mechanisms and required that each be challenged before any was kept.

## Answer

Most of the ideas are sound and most of them are already implied by existing clauses. None has been used by a KADS adopter. The proposal agent packaged them as an optional "Assurance profile" of five clauses. Two of the seven challengers (principle, implementation) recommended against a numbered profile outright. Three more (cognitive load, domain transfer, architecture consistency) gave deferral or guidance only as their preferred or alternative outcome for this release. Two (failure mode and abuse, normative language) recommended a reduced and reworded profile. On candidate M-18 four challengers placed the content in a profile and three in guidance. The synthesis sides with deferral.

What KADS 0.7.0 does instead:

1. **One informative guide**, [Recording decisions in proportion to consequence](../../docs/consequence-guide.md), carries the surviving ideas as prompts with six worked examples. It adds no requirement.
2. **Three attachments to normative text that already existed.** Clause 4.6: an accepted decision SHOULD state its reasons, link to them, or say they are not recorded. Clause 5.7: a statement that no failure was observed is a negative result. Conformance: one exception definition, with an expiry date or review condition that every list must show, and a definition of a lapsed exception.
3. **Three retirements and two simplifications**, so that the specification has one fewer active clause and one fewer lettered requirement than before, although its text is about 66 words longer: clause 3.5.3, clause 3.5.4 (c), and the separate ADR outline are retired; the `updated` date may come from version history; the exception field list has one spelling.
4. **Rules about KADS's own evolution** in CONTRIBUTING: a rule admitted on an anticipated failure is marked so, each minor release that adds a rule reviews existing ones and names a retirement candidate, and the changelog accounts for what was added and removed.

The profile is deferred, not rejected. See "Reopen when" below.

## The three decisions, kept separate

For each candidate the challengers answered three questions separately: is the principle valid, how should it be expressed, and where should it live. Across the 22 candidates and seven challengers, validity was rarely denied (one INVALID, for new relations). Expression and placement are where the proposal lost: on every principle from P-03 to P-10 at least two challengers moved the placement from the profile to guidance, and the two whose remit was whether the thing should exist at all, principle and implementation, did so for all of them.

## A. Research findings

Mechanisms worth retaining, each reduced to its minimum:

- **Scaling by class** (NASA software classification; Google launch checklists): ask less of low-consequence work. Minimum version: two questions about reach and reversibility. Bureaucratic if it becomes a label that someone must assign and defend.
- **Claim, argument, evidence** (assurance cases; not inspected): separate what is concluded from what was chosen. Minimum: one sentence each. Bureaucratic if it becomes a structured case for ordinary changes.
- **Waivers that stay visible** (Rogers Commission finding on waived launch constraints): an exception is seen by those who rely on the requirement. Minimum: a date and a list that shows lapsed entries. Bureaucratic if renewal becomes automatic.
- **Formal dissent** (NASA NPR 7120.5F section 3.4): disagreement is recorded and can travel. Minimum for a record: the concern and why it did not prevail. The escalation right and the rule against retribution that accompany it are governance and stay outside KADS.
- **Postmortem actions** (Google SRE postmortem practice): lessons lead somewhere. Minimum: a link per lesson. Bureaucratic if every incident must produce a change.
- **Canary** (Google SRE workbook: a partial, time-limited deployment and its evaluation; stating the abort condition beforehand is the proposal's addition): the native software form of "recovery designed first". KADS links to it and does not restate it.
- **Decision records** (Nygard): already adopted by KADS.
- **Operational experience before standard status** (IETF process): a rule should not become mandatory because it sounds reasonable. Adopted as the basis mark in CONTRIBUTING.

The domain transfer challenger checked the proposal's factual claims against sources. Of 25 checks, 9 were correct, 10 partly correct, and 6 could not be verified; none was wholly wrong. Three of the proposal's "findings that shaped the design" were stated more firmly than their sources support: the lowest NASA software classes were not inspected, the shuttle reports describe failures of authority and propagation at least as much as failures of records, and the Google chapter on production readiness ends in frameworks, not in abandoning review.

| Source checked | Verdict | Passage inspected on 2026-10-03 |
|---|---|---|
| NPR 7150.2D, Appendix D | CORRECT | Yes |
| NPR 7150.2D, Chapter 2, sections 2.2.x | PARTLY | Yes |
| NPR 7150.2D, Appendix C (Requirements Mapping Matrix) | UNVERIFIED | No |
| NPR 7123.1D, Appendix G | PARTLY | Yes |
| NPR 7120.5F, Chapter 3, section 3.3 (Technical Authority) | CORRECT | Yes |
| NPR 7120.5F, Chapter 3, section 3.4 (Formal Dissent) | CORRECT | Yes |
| NPR 7120.5F, Chapter 3, section 3.5 (tailoring, waivers, deviations, Non-Applicable) | CORRECT | Yes |
| Rogers Commission report, Volume 1, Chapter V | CORRECT | Yes |
| Rogers Commission report, Volume 1, Chapter VI | PARTLY | Yes |
| Columbia Accident Investigation Board report, Volume 1 | PARTLY | Yes |
| Diane Vaughan, The Challenger Launch Decision | UNVERIFIED | No |
| ISO/IEC/IEEE 15026-2:2022 | UNVERIFIED | No |
| IEC 60812:2018 | PARTLY | Yes |
| ITIL 4, Change Enablement practice | UNVERIFIED | No |
| Google SRE book, chapter 32 | PARTLY | Yes |
| Google SRE book, chapter 27 | CORRECT | Yes |
| Google SRE book, chapter 15 | CORRECT | Yes |
| Google SRE workbook, chapter 16 | PARTLY | Yes |
| Progressive delivery (term) | UNVERIFIED | No |
| Principles of Chaos Engineering | PARTLY | Yes |
| Michael Nygard, Documenting Architecture Decisions | CORRECT | Yes |
| RFC 7282 | CORRECT | Yes |
| RFC 2026, sections 4.1, 4.2.1, 6.5 | PARTLY | Yes |
| GitLab postmortem of 2017-01-31 | PARTLY | Yes |
| NASA IV&V, NASA-STD-8739.8, DevSecOps | UNVERIFIED | No |

Full citations and corrections are in `challenge-domain.json` in the evidence bundle. Works cited by KADS itself are on the [sources](../../docs/sources.md) page.

## B. Principle challenge matrix

| ID | Candidate | Intended benefit | Strongest objection (quoted) | Tradeoff accepted | Scope | Final disposition and where it lives |
|---|---|---|---|---|---|---|
| P-01 | Rigor proportional to consequence | Authors spend recording effort where being wrong is costly and nothing where it is not. | Principle: Proportionality depends on an ex ante consequence estimate made by the people with the least information and the strongest incentive to estimate low. | Proportionality is advice, so a team that wants to under-record can | Any recorded decision or change | ACCEPT WITH REFINEMENT. Optional guidance. Design rationale; the two questions in the consequence guide. Challenger placements: guidance 7. |
| P-02 | No significant decision without rationale | Reasons are written at the time of the choice, or their absence is stated. | Normative language: A MUST with the escape 'or state that they are not recorded' is a SHOULD in effect and a breaking change in cost, with no observed case. 'Significant' in the candidate is not in the sentence at all; it binds every accepted tracked decision. | A SHOULD binds less than the MUST that six challengers retained, but it breaks no existing corpus | Accepted decision records | ACCEPT WITH REFINEMENT. Tracked-record profile, clause 4.6, as a SHOULD. One sentence in clause 4.6. Challenger placements: profile 7. |
| P-03 | No GO without evidence | GO is written as a conclusion with evidence, followed by a separately attributed choice. | Principle: 'GO is a conclusion, not an opinion' is false as stated: GO is a choice under uncertainty that includes risk appetite, cost of delay and values, and the proposal itself concedes this by separating claim from choice. | No rule says a go decision needs evidence; clauses 3.3.1 and 3.3.2 already require a basis and the distinction | Decisions to proceed with a change | DOWNGRADE. Optional guidance. Consequence guide: a decision to proceed is a conclusion and a choice. Challenger placements: profile 5, guidance 2. |
| P-04 | No exception without explicit risk acceptance | A departure is written down once, with the person or role who accepted the risk and an end date. | Architecture consistency: The exception already exists as a normative object in conformance.md. 7.4 creates a second one with a different field list, a different home (decision record versus adoption-note entry), and different lifecycle (expiry versus condition for review). | Binds exceptions to KADS clauses only; departures from a project's own rules are guidance | Exceptions | ACCEPT WITH REFINEMENT. Normative, in conformance (one exception definition). Conformance, Review outcome: expiry date or condition for review; lists show it; lapse defined. Challenger placements: profile 4, guidance 2, core 1. |
| P-05 | Absence of failure is not evidence of correctness | A no-failure statement carries its scope: what was watched, for how long, and how a failure would have appeared. | Principle: As worded the principle is wrong. Absence of failure is evidence, with weight set by exposure and by the power to detect a failure; long operational history at scale is frequently the best evidence available and safety practice recognizes field-experience arguments (prior knowledge, not inspected). | Binds only where the research-report profile is applied, where it is breaking; elsewhere it is advice | Statements that no failure was observed | ACCEPT WITH REFINEMENT. Research-report profile, clause 5.7, clarification. One sentence in clause 5.7; consequence guide. Challenger placements: profile 5, guidance 2. |
| P-06 | Critical changes consider off-nominal behavior | The author of a critical change writes down how it could fail and how that would be seen. | Principle: It is a sound engineering habit and not a documentation property. Clause 1.1 says KADS does not prescribe method; asking a record to contain a failure analysis is asking for the analysis. | Failure analysis stays a prompt; KADS does not prescribe engineering method (clause 1.1) | Changes that cannot be undone or whose failure would go unnoticed | DOWNGRADE. Optional guidance. Consequence guide prompts. Challenger placements: profile 4, guidance 3. |
| P-07 | Recovery designed before deployment | The record states the recovery path, or says plainly that there is none, before the change is accepted. | Principle: 'Designed before deployment' is a timing rule on engineering that the proposal itself admits it cannot deliver. The record half invites fiction: a stated rollback that was never run is more dangerous than an admitted absence, because the reader relies on it. | Recovery is disclosed, not required; an untested rollback is recorded as an assumption | Changes with effects beyond the deciding team | DOWNGRADE. Optional guidance. Consequence guide; decision outline prompt on undoing. Challenger placements: profile 5, guidance 2. |
| P-08 | High-risk decisions receive independent challenge | Authors of critical decisions seek a challenge because its absence must be written down. | Principle: Rejected as J-029 in the 0.6.0 evaluation with the reopening condition 'an adopter in a regulated domain needs an independence rule'. No such adopter exists; the proposal treats the phrase 'that would be a profile' as permission. | No independence requirement, as in the 0.6.0 evaluation (J-029) | Hard-to-reverse decisions | DOWNGRADE. Optional guidance. Consequence guide: examination disclosed under clauses 3.3.4 and 3.3.5. Challenger placements: profile 4, guidance 3. |
| P-09 | Technical dissent stays traceable | Objections are written into the record with the reason they did not prevail; nobody has to win to be recorded. | Failure mode and abuse: The clause's own filters, 'recorded before acceptance' and 'could change the choice', are applied by the person the dissent is against. The mechanism also raises the personal cost of objecting by making it permanent and attributable. | Dissent raised outside the record stays outside it; KADS gives no escalation right | Decisions with a recorded disagreement | DOWNGRADE. Optional guidance. Consequence guide; decision outline prompt; clause 3.3.2 already covers known contradictions. Challenger placements: profile 4, guidance 3. |
| P-10 | Incidents change the system, not only the documentation | Each lesson ends in a visible disposition, including 'no change, because'. | Principle: The principle carries an action bias. 'Incidents shall change the system' makes change the default and 'no change' the outcome that needs defending, yet control added per incident is how alerting, runbooks and process grow without limit, the same monotonic growth M-22 exists to resist in KADS itself. | No closure rule; "no change" is explicitly legitimate | Incident investigations | DOWNGRADE. Optional guidance. Consequence guide: a disposition for each lesson, by link. Challenger placements: profile 5, guidance 2. |
| M-11 | Three assurance levels | The author asks two questions before writing: can it be undone, and how far does it reach. | Failure mode and abuse: Under-classification is the cheapest evasion of the whole profile and is undetectable for routine, which by design leaves no record. A MUST that cannot be seen violated should not gate the other MUSTs. | No stored label and no classifier, so nothing can be audited by level | All | REJECT named levels; ACCEPT two questions as guidance. Optional guidance. Consequence guide, "How much to write". Challenger placements: profile 4, guidance 2, none 1. |
| M-12 | Decision assurance structure | Authors fill a short fixed set of statements whose number grows with level. | Normative language: Three MUST keywords carry 16 requirements; five lettered items hold two each, so 7.3 (d) still cannot be cited as one requirement, which is the purpose of lettering under CONTRIBUTING and J-026. | Fields are prompts, so a record may omit them | Decision records | DOWNGRADE. Optional guidance. Prompts merged into the existing decision outline; no block, no required fields. Challenger placements: profile 5, guidance 2. |
| M-13 | Readiness record | The team answers the readiness questions in the record of the decision to proceed. | Architecture consistency: Rejecting the readiness object is right, but 'readiness is the decision' ignores that readiness recurs per deployment while a decision record is per choice. | No readiness artifact exists to point at | Go or no-go decisions | REJECT as a separate object. Rejected; idea kept as guidance. A go decision is recorded as a decision. Challenger placements: guidance 7. |
| M-14 | Exception object | Exceptions are few, dated, owned, and easy to find. | Architecture consistency: Second exception concept, as under P-04. The proposed exception outline is typed decision but drops 'Authority and effect', so an accepted exception has no effective date and fails clause 4.6; 'Accepted by' and the 4.6 authority are two names for what is, for an exception, one fact. | One definition serves KADS clauses; project rules reuse it by choice | Exceptions | ACCEPT WITH REFINEMENT. Normative, in conformance. The existing exception definition, extended; no new object or outline. Challenger placements: profile 4, guidance 2, core 1. |
| M-15 | Roles | Records name the people or roles behind acceptance, risk acceptance, and examination, and say when they are the same person. | Failure mode and abuse: Even as guidance, named functions in records are attribution. The guide paragraph says 'names who held each function' and should say a role is enough. | Roles are not defined terms | Decisions and incidents | DOWNGRADE. Optional guidance. Consequence guide: functions, not posts; a role is enough. Challenger placements: guidance 6, none 1. |
| M-16 | Incident learning loop | Incident authors link back to the decision or assumption that failed, and forward to the change. | Implementation: templates/incident.md declares 'Type: investigation' but drops the investigation outline's shape (current answer, method, observations, analysis) and demands a J identifier where the incident tracker already issued one. The nomenclature says to keep existing identifiers through a mapping. | Lesson state lives in the tracker, so the corpus alone does not show whether a lesson was acted on | Incident investigations | DOWNGRADE. Optional guidance. Consequence guide, "Incidents and lessons". Challenger placements: guidance 4, profile 3. |
| M-17 | Typed relationships | Authors use the existing vocabulary and two fixed field labels. | Architecture consistency: Zero new relations is right, but four mappings are forced and the proposal would print them in the normative registry. (1) mitigates as answers: answers means 'resolves the target question'; a mitigated risk is not resolved, and the question record would move to answered. | Some links are written as plain links with context | Relationship vocabulary | REJECT. Rejected. No relation added; no mapping published in the registry. Challenger placements: guidance 5, none 2. |
| M-18 | Architecture: Core versus addenda | One opt-in decision, one place to read. | Principle: One profile is better than five addenda, but the right number today is zero. The previous round removed a profile of the same size for thin evidence; this one has none from adopters, cannot be exercised in the KADS repository itself (no deployments, no incidents), and was researched through model-made extractions with four of it ... | Adopters who want a conformance profile for decisions do not get one | Architecture of the standard | DEFER the profile; ACCEPT guidance now. Deferred. One informative guide; three attachments to existing normative text. Challenger placements: profile 4, guidance 3. |
| M-19 | Templates | Authors add a block to a record they already write. | Implementation: The template texts contain instructions that will be left in and sections that will be empty. '<Significant and critical. One or two sentences each; link, do not copy.>' and '<Critical only.>' are not placeholders; by the CommonMark inline HTML grammar a line like '<Critical only.>' is shaped like a tag and is likely to render a ... | One fewer outline; no dedicated exception or incident outline | Outlines | ACCEPT WITH REFINEMENT. Optional guidance. No new outline; the ADR outline is merged into the decision outline; exception and lesson snippets are in the guide. Challenger placements: guidance 7. |
| M-20 | Lifecycle states for KADS's own principles | Every clause admitted without an observed case carries that fact and a reopening condition where a reader of the changelog sees it. | Implementation: A 'basis: observed or anticipated' column in the changelog is another hand-maintained state with no trigger: nothing fires when an adopter report arrives. And 'candidate for removal at each release review' collides with CONTRIBUTING's table, where removing a clause is a breaking change that retires a number. | No "experimental" status, which clause 6.2 could not give a meaning | KADS rules | REJECT lifecycle states; ACCEPT a basis mark. Optional guidance (CONTRIBUTING). CONTRIBUTING: a rule admitted on an anticipated failure is marked so. Challenger placements: guidance 7. |
| M-21 | Dogfooding evidence | At each release the maintainer asks of each clause with a fired reopening condition: would we add this today? Deletion is recorded as a valid outcome. | Cognitive load: The ten signals listed in the adoption guide are ten things an adopter is invited to track with no instrument for any of them. A list of unmeasurable metrics in a guide is decoration that lengthens the guide. The release review question is the useful half. | The ten adoption signals were dropped as uncollectable without instrumentation | KADS rules | ACCEPT WITH REFINEMENT. Optional guidance (CONTRIBUTING). CONTRIBUTING: review before each minor release that adds a rule; name a retirement candidate. Challenger placements: guidance 7. |
| M-22 | Complexity accounting per version | The maintainer sees and publishes the net change in every release. | Normative language: Counting keywords rewards packing many requirements under one MUST, which this proposal does (8 keywords, about 28 requirements). | Keyword counts understate load; the table also counts lettered requirements | KADS releases | ACCEPT. Optional guidance (CONTRIBUTING). CONTRIBUTING release steps; complexity table in the changelog. Challenger placements: guidance 5, tooling 2. |

## Synthesis

```yaml
decision: >
  Defer the optional profile. Publish the ideas as one informative guide.
  Attach three small normative changes to existing text. Retire three
  things and simplify two.
rationale: >
  No adopter has used any of it. The admission test in CONTRIBUTING keeps
  rules resting on anticipated failures out of MUST, and the same basis
  removed a Procedure profile from 0.6.0. A numbered section would spend
  permanent clause identifiers (clause 1.4) on untested text.
evidence:
  - seven challenger reports and one proposal, in the evidence bundle
  - the 0.6.0 evaluation, which set the precedent on profiles
  - KADS's own history as the only observed cases available
accepted_objections:
  - A self-assigned level cannot be checked by a reader, so nothing
    mandatory may depend on it (abuse, cognitive load, normative language).
  - A second exception concept beside the one in conformance would drift;
    keep one definition (architecture, implementation, cognitive load).
  - Hiding an exception when it lapses conceals the most dangerous state;
    a lapsed exception stays visible (all seven); implemented as a MUST
    that lists show dates and a definition of lapse, with keeping the
    lapsed entry listed as guidance only.
  - Requirements that say MUST state force a second document; a link to
    the native system must satisfy them (implementation).
  - Named persons as risk acceptors, examiners, and dissenters build a
    blame chain; a role is enough (abuse).
  - Forced mappings onto existing relations would change their meaning;
    publish none (architecture).
  - The name "Assurance" would be quoted as a property of the adopter;
    the guide is not called that (abuse).
  - A release should account for what it removes as well as what it adds,
    and this one should remove something (cognitive load).
rejected_objections:
  - Keep the 4.6 sentence as a MUST, as proposed (six challengers
    retained the keyword; none argued it against a SHOULD). Rejected:
    no observed case exists and no reader is harmed by its absence, so
    the admission test allows only a SHOULD. This also keeps it
    non-breaking, as the normative language challenger argued.
  - "Simplify clause 6.3 on versioning of derived documents" (three
    challengers). Rejected: the maintainer decided on 2026-10-02 that
    Semantic Versioning is always enforced in KADS and derived documents.
  - "Collapse the 31 records of the 0.6.0 evaluation into one table"
    (three challengers). Not done: the earlier brief required a record
    per principle. This evaluation uses one file, as they asked.
  - "Retire clause 3.6.4" (abuse). Rejected: it rests on an observed
    case in the adoption feedback of 2026-10-02.
  - "Merge evidenced-by into supported-by; retire related-to" (cognitive
    load, domain transfer, principle). Deferred: changing relation
    meanings is breaking and no adopter has reported the confusion.
assumptions:
  - Teams that want these records will follow prompts without a rule.
  - An adopter will eventually report which prompts it needed.
tradeoffs: >
  A project cannot claim conformance to a decision-assurance profile,
  because none exists. The guide can be ignored at no cost.
scope: KADS 0.7.0; reconsider at the next minor release that has adopter input.
confidence: >
  Moderate that deferral is right; low that the guide's prompts are the
  right set, since no one has used them.
follow_up:
  - Review at the next minor release, per CONTRIBUTING.
  - Clause 3.3.6 was the existing rule that came closest to retirement
    in this round; two challengers showed it producing boilerplate.
  - Clause 6.2 calls a change of meaning of an existing clause breaking.
    This version reads a retirement or relaxation as leaving the meaning
    of what remains unchanged. Settle the wording of 6.2 next release.
  - A lowercase "must" in conformance ("must remain visibly limited")
    carries a requirement; fix it in the lettering pass before 1.0.
```

## Dissent preserved

These objections were written by the challengers to be kept whether or not they prevailed. Clause numbers 7.1 to 7.5 in them refer to the proposal's draft profile, which was not adopted.

- **Failure mode and abuse:** The level as a self-assigned label should not gate MUSTs. Until under-classification can be seen by a reader, clause 7.2 (b) fails admission question 5 and everything conditioned on it inherits the failure. I would not ship section 7 with the level as proposed even if every other rewording is accepted.
- **Failure mode and abuse:** The profile should not be called 'Assurance'. The name will be quoted as a property of the adopter. This is a harm caused by the standard, not by its abusers.
- **Failure mode and abuse:** Naming persons as risk acceptors, examiners and dissenters in a permanent corpus is incompatible with the blameless framing the incident outline asks for two templates later. Roles must be sufficient everywhere, and 7.5 (b) should not be normative while names are.
- **Failure mode and abuse:** 7.4 (c) as proposed makes the corpus less truthful at the moment an exception lapses. Presentation rules that hide a continuing departure are worse than no expiry rule.
- **Failure mode and abuse:** 7.3 (f) and 7.4 (d) ask for content that is a reconnaissance aid. The proposal contains no security consideration at all; a profile that records unmitigated risks should not be published without one.
- **Failure mode and abuse:** The public incidents cited (Challenger, GitLab) are precedent for the problems, not evidence that these record rules work under pressure. Every clause in section 7 is 'anticipated only' in the sense of admission question 1, and the changelog should say so for each.
- **Failure mode and abuse:** A disclosure rule whose honest negative answer ('no one did', 'not recorded', 'none recorded') costs nothing changes behavior only where people already care. The proposal's stated lever, that people will supply the thing instead of writing its absence, is asserted without a case.
- **Architecture consistency:** There must be exactly one exception concept and one field list, in docs/conformance.md. Clause 7.4 as drafted is a second concept; its claim to list 'the same six' fields is inaccurate, and with the adoption-note outline and the proposed template there would be four divergent lists.
- **Architecture consistency:** The profile depends on the tracked-record profile in practice. Saying 'with or without tracked records' is a claim the proposal's own reuse table refutes; publish the dependency or supply untracked equivalents in the clause.
- **Architecture consistency:** An accepted risk has no canonical home in this design. It is restated as a sentence in the decision (7.3 d), as a field in the exception (7.4 a), and as a disposition in the incident (7.5 a), with a possibly different acceptor each time. Risk acceptance is a decision; the incident and any other record must link to the decision or exception that records it. The incident disposition 'risk accepted, naming who accepted it' is otherwise an exception that never expires.
- **Architecture consistency:** Do not publish the eleven-row mapping in registry/relationships.md. Four rows (mitigates as answers, changes as implemented-by, challenges as contradicts, produces as inverse evidenced-by) stretch registry meanings, and changing the meaning of a relation is breaking under clause 6.2. 'Exception to:' is a field of the exception, not a registry entry.
- **Architecture consistency:** Clause 7.4(c) makes a corpus nonconformant by the passage of time with no edit and contradicts the record's own status field. Use the interpretive form of 3.1.4(d) and 3.5.4(c) and require the date to be visible wherever the exception is listed.
- **Architecture consistency:** An incident investigation falls under clause 5.1 where the research-report profile is applied. A separate incident outline that omits method and limitations is a second, incompatible outline for type J. Status complete will coexist with pending lessons; say so in the clause or the P-10 failure remains conformant.
- **Architecture consistency:** No new template files and no Assurance block. Five of its nine prompts already exist in the decision and ADR outlines; add the four missing prompts to the sections where their neighbours live.
- **Architecture consistency:** Reopening and review conditions have one home, decisions/standards/. The changelog links to it; it must not carry its own copy. Anticipated-only clause text should wait in docs/adr/ as a proposed ADR, not enter the numbered specification, because clause 1.4 makes every later removal a permanently retired number.
- **Architecture consistency:** The level name 'significant' conflicts with 'architecturally significant' in the decision guide (costly to reverse). Under the proposed definitions an architecturally significant decision is critical, not significant. Clause 3.1.3 forbids one term carrying two meanings in one scope without saying so.
- **Cognitive load:** Burden estimates below are mine, derived from the proposal's templates and worked examples; they were not measured in any project. Lines are counted beyond what a competent pull request, change ticket, or postmortem already contains.
- **Cognitive load:** Routine deployment: 0 lines written. Hidden cost: the engineer still has to decide the change is routine against adoption-note criteria; that decision is unrecorded and uncheckable. If the corpus uses tracked decisions, the 4.6 sentence adds 1 line per accepted decision. Nothing duplicated.
- **Cognitive load:** Schema migration (significant): 6 lines (level, claim, evidence, assumptions, remaining risk, undo) and about 3 links. Duplicates of the pull request: claim (the title), evidence links (CI and dry-run already linked), undo (rollback section). New information: what the evidence does not cover, assumptions, named risk acceptor. So about 3 of 6 lines are restatement.
- **Cognitive load:** Auth change (critical): 10 lines at decision time plus a return visit for the outcome. Duplicates: the three above, plus 'examined by' (review system) and 'disagreement' (review thread). New: detection sentence, evidence gaps, assumptions, risk acceptor, outcome check. About 5 of 10 restate native records, and the level itself took a sentence of argument in the proposal's own example.
- **Cognitive load:** Production incident: one row of three cells per lesson, typically 3 to 6 rows, plus one back-link to a decision. The rows with ticket links duplicate the postmortem action list; only 'risk accepted' and 'no change, because' rows are new. The word 'pending' is a copied volatile status.
- **Cognitive load:** Temporary exception: 8 to 10 lines in a new file with four time-dependent fields, 1 line in a list of exceptions in force, and an edit at every renewal and at expiry. Duplicates any existing waiver entry in a risk register or the ticket that tracks the remediation. The expiry-day edit is the one that will not be made.
- **Cognitive load:** Irreversible high-blast-radius change: about one page, 10 fields, 15 to 25 lines, plus a day-90 return. Where a change-approval ticket exists, risk, backout, test evidence, and approvers duplicate it. New and worth writing: the scoped no-read observation, the statement that it cannot be undone, the retained export and its restore test, and the named data owner. That is 4 to 6 lines, which is what the reduced clause would ask for.
- **Cognitive load:** A level label stored on a record should not exist. If the maintainer keeps levels, I ask that the record state only the deciding condition in words ('cannot be undone', 'other teams read this table') and that no document or index ever aggregate records by level name.
- **Cognitive load:** No hand-maintained list of exceptions in force, anywhere. A list that is wrong in either direction is worse than a search.
- **Cognitive load:** The MUST count understates growth. By the proposal's own table the package adds 17 required fields; counted as lettered requirements, section 7 adds about 16 mandatory items, not 8. Complexity accounting that reports 8 is itself an instance of stating a claim less firmly than its source.
- **Cognitive load:** The brief asks for negative complexity growth. No candidate in the package removes anything from KADS 0.6.0. A release that adds a profile and retires nothing should be recorded as failing that constraint, whatever its other merits.
- **Domain transfer:** Clause 7.4 (c) as drafted, with worked example 5, removes a still-continuing departure from the list of exceptions in force on the day its acceptance lapses. That reproduces the invisibility the Rogers Commission criticized. If 7.4 (c) is adopted unchanged, this objection should stay on record.
- **Domain transfer:** The proposal's finding 2 ('the two shuttle reports describe failures of records') is an interpretation that selects what a documentation standard can fix. The Rogers report says a written recommendation existed and did not reach the deciders; the CAIB's remedy for waivers was an independent authority with sole waiver power (R7.5-1). KADS can decline to build authority, but should not cite these reports as evidence that record rules address the failure.
- **Domain transfer:** No rule in section 7 has an observed case in a software team of ordinary size. Every observed case is from an organization with launch irreversibility, loss of life, and a multi-level authority chain, or from Google. Under the admission test these are 'anticipated only' for KADS adopters and the MUSTs are not earned.
- **Domain transfer:** Classification by the author at the time of writing is the weakest point of M-11 and no wording fixes it; only classification by kind of change, stated in advance, matches any cited precedent.
- **Domain transfer:** Several attributions lend prestige without support and should be corrected before any of this text is published: Vaughan for expiry dates; ISO/IEC/IEEE 15026-2 for a per-change field list; RFC 2026 Experimental for rule probation; RFC 2026 section 6.5 for anything; SRE chapter 15 'unreviewed postmortem' for lesson disposition; principlesofchaos.org for 'not from the absence of incidents'; GitLab for 'actions with owners'; NPR 7123.1D Appendix G for mandatory success criteria (they are 'recommended best practices').
- **Domain transfer:** My own verification has limits that should travel with these fact checks: pages were downloaded and searched by string, not read end to end; PDF text extraction scrambles columns so CAIB page numbers are unconfirmed; chapter author names, licences, and the GitLab publication date are from prior knowledge; no paid standard, the Vaughan book, ITIL, NASA-STD-8739.8, or NPR 7150.2D Appendix C was opened.
- **Implementation:** Do not publish clause numbers 7.1 to 7.5 in this release. Identifiers are permanent (clause 1.4), no adopter has used the text, and section 7 already denotes the dropped Procedure profile in the preserved 0.6.0 evidence. An unnumbered informative guide loses nothing and burns nothing.
- **Implementation:** An expired, unrenewed exception whose departure continues is the most dangerous state the profile addresses, and the proposed design makes it disappear from the list. Any design that is adopted must show that state as EXPIRED, derived from the date, without requiring anyone to edit a file.
- **Implementation:** Files that should NOT be added to this repository: templates/exception.md, templates/incident.md, an 'Assurance' section inside templates/decision.md or templates/adr.md, any tools/ script for assurance checks, an exceptions index or risk register file, a pull request template, and 22 new J record files.
- **Implementation:** Files to add or change if my recommendation is followed: add docs/assurance-guide.md (informative; three snippets; a table mapping each record kind to its usual native system; the tested expiry search as a snippet); add one record under decisions/ holding the deferred section 7 text and the dispositions of P-01 to M-22; change docs/specification.md clause 4.6 only; change docs/conformance.md (4.6 checklist row), docs/clause-guide.md (4.6 entry), templates/investigation.md (one lesson prompt), docs/decision-guide.md (two sentences), docs/adoption-guide.md (one optional outline line 'Assurance records: <system per record kind; level criteria or link; how to list exceptions>'), README.md (start-here row; adoption note unchanged because no profile is created), CHANGELOG.md, CONTRIBUTING.md (counting commands).
- **Implementation:** Which checks could be scripted and which must stay human, if a profile is ever adopted. Scriptable, and suitable for an optional aid: expiry date earlier than today on a date-only field; presence of the fixed labels a stated level requires; a lesson row with no link and no text; placeholders left in a copied template. Adopter pipeline only, never a KADS tool: deriving or checking the level from changed paths or labels. Human only: whether the level is right, whether evidence supports the claim, whether an examination was real, whether all dissent is present, whether an incident touches an earlier decision.
- **Implementation:** Canonical home in practice, per record kind: decision to proceed is the pull request or change ticket plus the approval event; exception is the suppression, waiver object or risk-register entry; incident lessons are the incident tracker's action items; level criteria are path, label or change-type rules in configuration. For all four the native system is canonical and a Markdown file is the fallback for teams without one. The proposal's wording lets only 7.3 be satisfied natively.
- **Implementation:** The six worked examples avoid every hard lifecycle case: no pending lesson, no exception after its expiry with the departure continuing, no outcome check coming due, no evidence link that has expired, no irreversible follow-up step to a reversible change. Each example should be rewritten as the actual file or description text and then shown again six months later.
- **Normative language:** The 4.6 sentence should not be a MUST. With its escape it secures nothing a SHOULD under clause 1.2 does not, and it is the only breaking change in the package, resting on no observed case.
- **Normative language:** 7.4 (c) as a prohibition on 'presenting as in force' should not be adopted in any wording: it makes conformance depend on the calendar and rewards records that say an exception ended while the departure continues. A non-inference sentence plus visible expiry dates protects the reader better.
- **Normative language:** Keyword counts must not be used as the measure of this proposal's size. The honest figure as written is about 28 MUST requirements, 1 MUST NOT, 6 SHOULD, 1 MAY.
- **Normative language:** Scope by self-declaration is a real weakness that wording cannot remove: under any drafting, a record that states no level owes nothing, and a reviewer can detect under-classification only by comparing the record with the adoption-note criteria. The profile should say this openly in 7.1 instead of implying coverage of 'consequential decisions'.
- **Normative language:** Section number 7 and clause numbers 7.2 to 7.6 were used by the unadopted Procedure profile draft that decisions/standards still cites. Clause 1.4 is not literally violated because the draft was never released, but reuse makes existing citations ambiguous; the release must disambiguate or renumber.
- **Normative language:** Adding 'Exception' to section 2 changes the reading of an existing term in 6.1, 6.4, and conformance; under 6.2 that may be a change of meaning of an existing clause and should be assessed as potentially breaking, not as a pure addition.
- **Normative language:** Every disclosure item in 7.3 should carry an explicit negative alternative ('or that none ...'). Without it, silence and compliance are indistinguishable and the MUST fails admission question 5.
- **Principle:** Scope: a documentation standard should not contain an assurance profile. Clause 1.1 excludes method, 3.6.3 excludes authority, and 7.3 (d) to (g) and 7.4 (a) are requirements about what engineers consider and how a project waives its own policies, phrased as record content. The research-report profile is not a precedent: a report is the knowledge product, while a deployment decision is an operational transaction whose records live outside the corpus. If this content is wanted, it belongs in a team's engineering handbook or a separate companion document that cites KADS, where it can be wrong without making KADS conformance mean less.
- **Principle:** What would change my mind on scope: (1) two independent adopters, each documenting a case where a consequential decision could not be reconstructed although 3.3.1, 3.3.2, 3.3.5 and 4.6 were satisfied; (2) evidence from a trial of the guidance block that the fields are filled with non-boilerplate content and are actually consulted after an incident; (3) an adopter who needs a conformance claim, not just a template, for an external party. One of these would justify a SHOULD-level profile; all three a MUST-level one.
- **Principle:** The public cases are used as prestige, not evidence. NASA's record regime was heavier than anything proposed and did not prevent either accident; the Rogers and CAIB material shows failures of judgment, hierarchy and burden of proof inside a fully documented process. Citing them supports 'records are not sufficient', and says nothing on whether lighter records in a software team are causal. My statements about Vaughan, CAIB, field-experience arguments in safety practice, and reviewer complacency are from prior knowledge and were not inspected for this report.
- **Principle:** A profile whose lowest level requires nothing, and whose trigger is self-classification of events outside the corpus, can be conformed to with no records at all. Any MUST inside it fails the admission test's detection condition for the case that matters (the consequential change that was not recorded). 'Conforms to the Assurance profile' would therefore be stated more firmly than its support, which is the property KADS exists to protect.
- **Principle:** J-029 was closed with a specific reopening condition that has not occurred. Reopening it by relabeling the request as a profile sets the precedent that reopening conditions do not bind, which devalues every 'Reopen when' cell in the standards index.
- **Principle:** 7.4 (c) as drafted makes a corpus less truthful: an expired exception whose departure continues must remain visible as expired, never drop out of the list.
- **Principle:** Principles P-03, P-05 and P-10 are false or biased as worded, and the proposal quietly replaces each with a different, weaker statement. If any text is adopted, the slogans must not appear in KADS, even in foundations, because slogans are what teams follow mechanically.
- **Principle:** This report is automated review by a single agent given an adversarial role; it is not verification by a person (clause 3.3.4). It read candidates.md, proposal.md, the specification, conformance, the admission test, J-029, the standards index, the relationship registry, the nomenclature types table, and templates/decision.md at commit e93b3c0, and nothing else.

How each was disposed of: the objections to the draft profile's levels, name, exception clause, lapsed-exception rule, and section numbering prevailed, since the profile was not adopted. The objections that named persons build a blame chain, and that the public cases are precedent and not evidence, are reflected in the guide's wording. The normative language objection that the 4.6 sentence should not be a MUST prevailed. These did not prevail and stand as dissent: that a documentation standard should carry none of this even as guidance (principle); that the 4.6 sentence keep its MUST (retained by six challengers); that reopening conditions live only in `decisions/standards/` (architecture); that clause 5.7 reach beyond the research-report profile (architecture); that each example be shown again six months later (implementation); and that the shuttle reports not be cited for record rules (domain transfer, principle).

## C. Architecture

```text
KADS specification
  common core (sections 1, 3, 6)          unchanged in scope
  tracked-record profile (section 4)      4.6 gains the reasons sentence
  research-report profile (section 5)     5.7 names "no failure observed"
conformance                               one exception definition, with lapse
guides (informative)
  consequence guide                       new: prompts, examples, no rules
  decision outline                        absorbs the ADR outline and the prompts
CONTRIBUTING                              basis mark, pre-release review, accounting
decisions/assurance/                      this record and its evidence
```

No addenda were created. The brief's candidate list of five addenda would have given five places to look for one idea. A user can adopt the common core and never open the guide.

## D. Normative changes, exactly

- Clause 4.6, added: "An accepted decision SHOULD state the reasons for the choice, link to where they are recorded, or state that they are not recorded."
- Clause 5.7, added: "A statement that no failure was observed is a negative result under this clause: its scope includes what was observed, over what period or exposure, and how a failure would have been detected." The sentence has no keyword of its own and binds through the first MUST of the clause, so it is breaking for research-report corpora whose no-failure statements omit those.
- Clause 4.2, added: "Where the corpus is under version control, the version history MAY supply it."
- Clause 3.5.3: retired. Clause 3.5.4 (c): retired.
- Conformance, Review outcome: "An exception MUST record the affected clause identifier and scope, reason, consequence, responsible role, and an expiry date or a condition for review. This is the only definition of an exception in KADS; the adoption-note outline and the guides refer to it. A list or summary of exceptions MUST show each exception's expiry date or condition for review. An exception whose expiry date has passed with no recorded renewal has lapsed, which establishes neither that the departure has ended nor that it is still accepted."

## E. Outlines

No outline was added. The [decision outline](../../templates/decision.md) now serves architecture decision records too and carries prompts for assumptions, what the evidence does not cover, undoing, remaining risk, and disagreement. Snippets for an exception and for incident lessons are in the guide, written to be pasted into a pull request, a suppression comment, or an incident tracker.

## F. Relationships

None added. Of the eleven candidate relationships, `supported-by` and `supersedes` already exist, an assumption worth tracking is a question that a decision `depends-on`, and acceptance by an authority is a field of clause 4.6, not a link. The architecture challenger found four proposed mappings forced (mitigates, changes, challenges, produces) and warned that publishing them in the normative registry would change the meaning of existing relations. They are written as plain links with context.

## G. Examples

Six worked examples, from a routine deployment that records nothing to an irreversible table drop that records nine lines, are in the [guide](../../docs/consequence-guide.md#six-examples). Examples for the changed clauses are in [clause examples](../../docs/clause-guide.md).

## H. Cognitive-load review

Every new source of overhead in 0.7.0, and why it is kept:

| New thing a user meets | Cost | Why kept |
|---|---|---|
| The reasons sentence in clause 4.6 | One line per accepted decision, or "Reasons not recorded." | A decision without reasons cannot be re-examined; the escape makes it cheap |
| A list of exceptions shows dates | One date per listed exception | A lapsed exception that looks current is invisible in the way the Rogers finding on waivers describes; the finding concerns visibility to management, not expiry |
| One more guide | Reading it, if wanted | It replaces a profile; nothing in it is required |
| Admission and release rules in CONTRIBUTING | Borne by KADS maintainers only | They are what keeps the standard from growing unexamined |

What 0.7.0 removes: one clause, one lettered requirement, one outline, a hand-maintained date where version history exists, and two divergent spellings of the exception fields. The complexity table is in the [changelog](../../CHANGELOG.md).

Not added, although proposed: named levels and a stored level label, a level classifier, an "Assurance" block, 17 required fields, exception and incident outlines, a readiness record, an exceptions index, five profile clauses, any relation, any status, any defined term, any script.

## Existing rules challenged

The challengers were asked to nominate existing rules for retirement. Outcomes:

| Nomination | By | Outcome |
|---|---|---|
| Clause 3.5.3, simplest representation | Cognitive load | Retired; undetectable, and the representation guide says it |
| Clause 3.5.4 (c), unexecuted procedure says so | Abuse, domain transfer | Retired; clause 3.3.5 governs execution claims and an absent statement proves nothing |
| Separate ADR outline | Architecture, cognitive load | Retired; merged into the decision outline |
| `updated` as a hand-kept field, clause 4.2 | Cognitive load, implementation | Simplified; version history may supply it |
| Three spellings of the exception fields | Four challengers | Merged into the conformance definition |
| Outline placeholders shaped like HTML tags | Implementation | Fixed; they are now escaped so that they render |
| CONTRIBUTING called removal of a clause breaking | Implementation | Fixed; removal cannot make a conformant corpus nonconformant |
| README claim that one requirement is checkable by script | Implementation | Fixed |
| Clause 6.3, versioning of derived documents | Cognitive load, normative language, principle | Kept; maintainer decision of 2026-10-02 |
| Clause 3.6.4, mechanical freshness checks | Abuse | Kept; observed case in adoption feedback |
| Clause 3.3.6, uninspected sources | Abuse, principle | Kept for now; closest to retirement, to be reviewed next release |
| Clauses 3.4.4 and 3.4.5 in the common core | Cognitive load | Kept; observed cases in adoption feedback |
| Relations `evidenced-by`, `tested-by`, `related-to` | Cognitive load, domain transfer, principle | Kept; a change of relation meaning is breaking and unreported by adopters |
| Status vocabulary size; evidence access statuses | Cognitive load, principle | Kept; not examined in depth this round |
| Agent instruction snippet | Cognitive load, implementation | Kept; the 0.6.0 evaluation asked for it to be complete and versioned |
| 31 separate records in `decisions/standards/` | Cognitive load, implementation, principle | Kept; required by the earlier brief. This evaluation is one file |
| Number of outlines | Abuse, domain transfer, principle | Reduced by one; further merging deferred |
| Clauses 3.3.2, 4.6, 3.4.3 hold several requirements unlettered | Normative language | Deferred with J-026 to the restructuring before 1.0 |

Nominations not listed above were not examined in this round and remain in the challenger files: clause 3.3.4 second half; clause 6.4 self-review; placement of clause 5.7; the ADR sentence in clause 4.6; the repeated non-inference sentences; the metadata block of the outlines; two homes for design decisions; the limitation field list in the evaluation guide.

## Basis of rules admitted without an observed case

Under CONTRIBUTING, "observed" means observed in KADS's own history or in a corpus applying KADS. Public incidents are precedent. As of 0.7.0 these normative rules rest on an anticipated failure only, and are candidates for review at each minor release:

| Rule | Admitted in | Ground | Record | Review when |
|---|---|---|---|---|
| 3.1.4, superseded material says so | 0.6.0 | Harm to a reader acting on withdrawn guidance | J-027 | Next minor release |
| 3.5.4 (a) and (b), irreversible effects at the step | 0.6.0 | Harm to a reader executing the step | J-004 | Next minor release |
| 3.3.4, review by agents named as automated | 0.6.0 | Harm to a reader who takes it for human review | J-029 | Next minor release |
| 3.5.5, reachability | 0.6.0 | Recommendation only | J-021 | Next minor release |
| 4.6, reasons of an accepted decision | 0.7.0 | Recommendation only | this record | Next minor release; sooner if an adopter reports "Reasons not recorded." used as boilerplate |
| Conformance, exception lists show dates; lapse | 0.7.0 | Harm to a reader who takes a lapsed acceptance as current | this record | Next minor release; sooner when any adopter keeps a list of exceptions |

The four rules admitted in 0.6.0 were not re-examined in this round except where a challenger nominated them, as with 3.5.4 (c), which was retired. The review that CONTRIBUTING asks for is owed at the next minor release.

## I. Migration and adoption

Required when moving from 0.6.0: where the corpus lists or summarizes exceptions to KADS clauses, show each one's expiry date or condition for review; and, under the research-report profile, give each statement that no failure was observed its period or exposure and how a failure would have been detected.

Recommended: add reasons, a link to them, or "Reasons not recorded." to accepted decision records. Use the conformance words for exception fields in the adoption note. Point any link to the retired ADR outline at the decision outline.

Optional, and incremental: read the guide; try its two questions on the next change whose effect reaches another team; paste the exception snippet where suppressions already live; add lesson dispositions to the next incident write-up. None of this requires adopting the tracked-record profile.

No migration is needed for the retirements: a corpus that followed clause 3.5.3 or 3.5.4 (c) still conforms.

## Reopen when

An adopter applies the guide to real decisions and reports which prompts it needed as requirements, with at least one case where a consequential decision could not be reconstructed although clauses 3.3.1, 3.3.2, 3.3.5, and 4.6 were satisfied. Two independent adopters would justify a profile; one would justify a clause.

## Limits

No adopter has used any of this. All reviewers were automated agents sharing a model with the proposal agent, which limits their independence. The instructions the proposal agent received are not preserved; the challengers' instructions are. Burden estimates quoted from the cognitive load challenger were derived from the proposal's templates, not measured in a project. Paid or restricted works (ISO/IEC/IEEE 15026, IEC 60812 beyond its abstract, ITIL, Vaughan's book) were not inspected.
