# Proposal: decision and readiness assurance for KADS (not adopted as written; see the evaluation record)

**Status:** proposal for challenge. Nothing here is adopted, and draft wording quoted here is not a rule.  
**Against:** KADS 0.6.0 (commit e93b3c0), candidates in [candidates.md](candidates.md).  
**Authorship:** drafted on 2026-10-03 by an automated agent acting as proposal agent. No person has verified this text (clause 3.3.4). The repository maintainer is the author of record; what the maintainer has examined is not recorded.

## Position on the framing question

KADS governs recorded knowledge (clause 1.1) and grants no authority to approve decisions (clause 3.6.3). This proposal therefore does not let KADS tell a team to hold a review, staff a role, classify every change, or block a deployment. Every proposed requirement has the form "a record of X makes Y discoverable" or "a record MUST NOT present Z as in force". Where a candidate is worded as a process rule (P-03, P-07, P-08, P-10), the proposal keeps the record half and says openly that the process half is not delivered. The effect on behavior is indirect and is the same lever that clauses 3.3.5 and 3.5.4 (c) already use: when the absence of evidence, challenge, recovery, or follow-up has to be written down, people tend to supply the thing instead of writing its absence.

## Research findings

How to read the "inspected" column (clause 3.3.6). "Fetched" means the page was retrieved on 2026-10-03 through a fetch tool that returns a model-made extraction of the page, not the page itself. Passages in quotation marks are as that tool returned them; they were not compared character by character with the source, and section numbers are as the tool reported them. "Prior knowledge" means nothing was opened. "Unverified" means only a search-result summary or reseller abstract was seen. No paid standard was inspected.

| Source | Mechanism taken | Inspected on 2026-10-03 | URL |
|---|---|---|---|
| NASA software classification (NPR 7150.2D, Appendix D (classes A to F) and Chapter 2 (sections 2.2.x, Requirements Mapping Matrix)) | Classify once by consequence of failure; the class selects which requirements apply; an ambiguous case takes the higher class; relief from a requirement is recorded against the same matrix and signed by a named authority. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page. Appendix D and Chapter 2 only. The extraction reported classes A to F and the sentence that requirements and rigor are 'scaled back for lower software classes' and that an ambiguous case takes 'the higher of the classes'. The mapping matrix itself (Appendix C) was not opened. | https://nodis3.gsfc.nasa.gov/displayDir.cfm?Internal_ID=N_PR_7150_002D_&page_name=AppendixD |
| NASA life-cycle reviews and readiness reviews (NPR 7123.1D, Appendix G (entrance and success criteria; ORR, MRR/FRR, CDR, PDR; G.1.2 tailoring)) | A readiness review has entrance criteria (what must exist before the question is asked) and success criteria (what a GO asserts), so GO is a conclusion against stated criteria. Tailoring of criteria is expected. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page. Appendix G only; the criteria tables were summarized by the tool, and the quoted success criteria were not checked against the tables. | https://nodis3.gsfc.nasa.gov/displayDir.cfm?Internal_ID=N_PR_7123_001D_&page_name=AppendixG |
| NASA Technical Authority, Formal Dissent, waivers and deviations (NPR 7120.5F, Chapter 3, sections 3.3 (Technical Authority), 3.4 (Formal Dissent), 3.5 (tailoring, waivers, deviations, Non-Applicable)) | (1) Three positions on a decision: agree, disagree but support, or disagree and raise a Formal Dissent, which is documented and carried upward. (2) Relief from a requirement is dispositioned by the level that set the requirement. (3) A requirement that cannot apply is recorded as Non-Applicable instead of being silently skipped. (4) Authority independent of the programme. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page. Chapter 3 only. Section numbers are as the tool reported them. | https://nodis3.gsfc.nasa.gov/displayDir.cfm?Internal_ID=N_PR_7120_005F_&page_name=Chapter3 |
| Rogers Commission report on Challenger (Report of the Presidential Commission on the Space Shuttle Challenger Accident, Volume 1, Chapter V (findings 1 to 4) and Chapter VI) | Observed failures, not a mechanism: a launch constraint waived for every later flight without the waiver being visible upward; an anomaly accepted because earlier flights with it had succeeded; a problem closed in tracking while unresolved; an engineering objection that did not reach the deciders. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page. Chapters V and VI. Finding 2 as returned: 'The waiving of launch constraints appears to have been at the expense of flight safety. There was no system which made it imperative that launch constraints and waivers of launch constraints be considered by all levels of management.' The phrase 'normalization of deviance' in the Chapter VI extraction is the tool's gloss, not the Commission's wording. | https://www.nasa.gov/history/rogersrep/v1ch5.htm |
| Columbia Accident Investigation Board report (CAIB Report, Volume 1 (2003), chapters 6 to 8) | Reported lesson: foam loss reclassified from a requirement violation to an 'in-family', accepted risk as flights returned safely. | unverified: the report was not opened. A search result summarizing a secondary slide deck was read; no passage of the report was inspected. | https://www.nasa.gov/columbia/caib/ |
| Vaughan, normalization of deviance (Diane Vaughan, The Challenger Launch Decision (University of Chicago Press, 1996)) | Names the pattern: each accepted anomaly becomes the baseline for accepting the next. | no: prior knowledge | none given |
| ISO/IEC/IEEE 15026-2 assurance case (ISO/IEC/IEEE 15026-2:2022, Systems and software assurance, Part 2: Assurance case) | A claim is separated from the argument and from the evidence, and assumptions are explicit. | unverified: paid standard, not inspected. A search-result abstract from resellers was read: an assurance case has a top-level claim, argumentation, evidence, and explicit assumptions, and the standard constrains structure and existence of contents, not their quality. The iso.org URL is from prior knowledge and was not opened. | https://www.iso.org/standard/80625.html |
| Google SRE: Production Readiness Review (Site Reliability Engineering (O'Reilly, 2016), chapter 32, The Evolving SRE Engagement Model) | A service-specific checklist used to verify operational readiness; the chapter reports that the review did not scale: lead times of quarters and effort proportional to the number of services. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://sre.google/sre-book/evolving-sre-engagement-model/ |
| Google SRE: launch checklist (Site Reliability Engineering, chapter 27, Reliable Product Launches at Scale) | Checklist admission rule: 'Every question's importance must be substantiated, ideally by a previous launch disaster.' Low-risk launches get 'an almost trivial checklist'. Gradual rollouts and feature flags limit exposure. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://sre.google/sre-book/reliable-product-launches/ |
| Google SRE: postmortem culture (Site Reliability Engineering, chapter 15, Postmortem Culture: Learning from Failure) | Postmortem triggers defined in advance; blameless writing; 'An unreviewed postmortem might as well never have existed'; the goal includes 'that effective preventive actions are put in place'. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://sre.google/sre-book/postmortem-culture/ |
| Google SRE workbook: canarying (The Site Reliability Workbook (O'Reilly, 2018), chapter 16, Canarying Releases) | Partial, time-limited deployment with an evaluation decided beforehand; exposure is proportional to the traffic reached. This is the mechanism usually called progressive delivery; that term itself is cited from prior knowledge. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://sre.google/workbook/canarying-releases/ |
| Principles of Chaos Engineering (principlesofchaos.org) | Confidence comes from trying to disprove a steady-state hypothesis under injected failure, not from the absence of incidents. 'Minimize Blast Radius' is a stated principle. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://principlesofchaos.org/ |
| FMEA (IEC 60812:2018, Failure modes and effects analysis (FMEA and FMECA)) | Ask of each element: how can it fail, what is the effect, how is it detected. | unverified: paid standard, not inspected. The IEC webstore abstract was read through a search result: FMEA establishes how items or processes might fail and identifies effects, and the 2018 edition covers tailoring. | https://webstore.iec.ch/publication/26359 |
| ITIL change types (ITIL 4, Change Enablement practice) | Standard changes are pre-authorized and need no per-change assessment; emergency changes may defer documentation until after the change. | unverified: the ITIL publication is paid and was not inspected. Definitions of standard, normal, and emergency change were read in search-result summaries of vendor pages. | none given |
| Architecture decision records (Michael Nygard, Documenting Architecture Decisions (2011)) | Title, context, decision, status, consequences in 'one or two pages'; a replaced record is kept and marked. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions |
| IETF rough consensus (RFC 7282, On Consensus and Humming in the IETF (2014)) | Issues are 'addressed, but not necessarily accommodated'; 'It's the existence of the unaddressed open issue, not the number of people, which is determinative'. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://www.rfc-editor.org/rfc/rfc7282 |
| IETF standards process (RFC 2026, The Internet Standards Process, Revision 3 (1996), sections 4.1, 4.2.1, 6.5) | Advancement requires implementation and operational experience; an Experimental designation exists for work published without that experience. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page. RFC 6410 later reduced the maturity levels to two; that is prior knowledge and was not inspected. | https://www.rfc-editor.org/rfc/rfc2026 |
| GitLab database incident of 2017-01-31 (GitLab, Postmortem of database outage of January 31 (2017)) | Observed case: backups believed to exist had been failing silently and restore had never been tested; the postmortem lists improvement actions with owners. | yes: page fetched 2026-10-03 through a fetch tool that returns a model-made extraction; quotations are as that tool returned them and were not compared character by character with the page | https://about.gitlab.com/blog/postmortem-of-database-outage-of-january-31/ |
| NASA IV&V, DevSecOps, software safety standards (NASA IV&V programme; NASA-STD-8739.8; general DevSecOps practice) | Independence of the examiner from the developer, scaled with class. | no: prior knowledge. Nothing was opened and no mechanism beyond those above was extracted. | none given |
| KADS history (CHANGELOG.md 0.6.0; docs/reviews/2026-10-02-adoption-feedback.md; decisions/standards/README.md and records J-004, J-018, J-029; docs/conformance.md) | The existing exception rule (conformance), the status rule (4.6), the unexecuted-procedure rule (3.5.4 c), keyword counts in the changelog, and the admission test. | yes: read in this repository on 2026-10-03 at commit e93b3c0 | none given |

### What each borrowed mechanism is worth to KADS

| Source | Problem it solves and minimum useful version | Bureaucratic if | How KADS constrains it |
|---|---|---|---|
| NASA software classification | A small number of classes defined by consequence, a tie rule (higher wins), and a table of what each class adds. | Six classes, a matrix of more than a hundred requirement rows, and signature chains for every relief. | Three levels, the lowest of which requires nothing; KADS defines the levels by consequence and leaves criteria and classifier to the adoption note; the level selects record content, not process. |
| NASA life-cycle reviews and readiness reviews | State the claim that 'ready' asserts and the evidence for it, separately from the decision to proceed. | A review board, a fixed review sequence, and a criteria table per review. | KADS records the claim, its evidence, and the choice as distinct statements in one decision record (clause 7.3 a, b). It does not require that a review be held. |
| NASA Technical Authority, Formal Dissent, waivers and deviations | A dissent that could change the choice is written down with the reason it did not prevail; an exception names the requirement and who accepted the risk. | An independent authority chain, appeal levels up to the head of the organization, and separate waiver and deviation forms. | KADS keeps only the record: disagreement recorded before acceptance stays in the record (7.3 h); an exception names requirement, risk, and acceptor (7.4 a). No veto, no appeal chain, no distinction between waiver and deviation. |
| Rogers Commission report on Challenger | Exceptions visible and time-limited; dissent preserved; 'it worked before' scoped to what was observed. | Not applicable; this is a source of observed cases. | Used as the observed public case for P-04, P-05, P-09, and M-14. |
| Columbia Accident Investigation Board report | Same as Rogers: absence of failure scoped to what was observed. | Not applicable. | Cited only as an unverified second instance behind P-05. |
| Vaughan, normalization of deviance | A recorded exception carries an expiry and is not shown as in force after it. | Not applicable. | Supports 7.4 c. Not inspected, so no quotation is used. |
| ISO/IEC/IEEE 15026-2 assurance case | Claim, evidence, assumptions as three distinguishable statements in one record. | A full argument tree with typed nodes, notation (GSN or CAE), and a maintained safety case document. | KADS takes the three-part separation only (7.3 a to c). It adds no node types; clause 3.3.2 already requires the kinds of statement to stay distinguishable. Like 15026-2 as described, the profile constrains existence of content, not its quality. |
| Google SRE: Production Readiness Review | A short list of readiness questions answered by the owning team. | A central review team that every launch must queue for. | KADS states questions a record answers; it creates no reviewing body. The reported scaling failure is the argument for requiring nothing at the routine level. |
| Google SRE: launch checklist | Each question on the readiness list traces to a failure it prevents; low-risk changes skip the list. | Checklist items accumulate and are never retired. | The eight questions of M-13 are reduced to the eight fields of 7.3, each tied to a candidate and a cited case; the admission test in CONTRIBUTING already plays the same role for KADS rules. |
| Google SRE: postmortem culture | Each lesson has a visible disposition. | A postmortem for every alert; action items tracked in a second system copied into the document. | KADS requires a disposition per lesson with a link to where the change or the tracking item lives (7.5 a). It defines no trigger; triggers are a project matter under clause 3.4.3. |
| Google SRE workbook: canarying | The record says how exposure is limited and how 'bad' would be recognized. | Mandating canaries for changes that cannot be partially deployed. | KADS names no technique. 7.3 e and f ask how the effect is contained and how failure is detected; a canary is one acceptable answer. |
| Principles of Chaos Engineering | A statement that nothing failed says what was observed and how a failure would have shown. | Requiring fault injection as evidence. | 7.3 i scopes a no-failure claim. KADS does not require experiments. |
| FMEA | Three questions answered in prose for the change as a whole. | Worksheets with severity, occurrence, and detection scores and risk priority numbers per component. | 7.3 f asks the failure and detection questions once per critical change, in prose. No scoring; clause 3.1.3 would apply to any local score. |
| ITIL change types | A class of change that needs no record, and permission to write the record after an urgent change. | A change advisory board that every normal change waits for. | The routine level is the pre-authorized class. A project MAY map its change types to the levels (7.2). Writing the record after an urgent change is allowed because KADS dates statements separately (nomenclature: decision date versus recording date). |
| Architecture decision records | Rationale in the same short record as the decision. | A template with a dozen mandatory headings. | Already the basis of the KADS decision outline. The proposal adds one sentence to clause 4.6 and one optional block to the outline. |
| IETF rough consensus | An objection is recorded with the reason it did not prevail; counts of approvers are not evidence. | Formal consensus calls for ordinary decisions. | 7.3 h and the sentence that absence of recorded disagreement does not establish agreement. No approval counts anywhere in the profile. |
| IETF standards process | A rule admitted without an observed case says so and carries a review condition. | A multi-stage maturity ladder for every clause. | No status vocabulary for KADS rules. The admission test already demands 'observed or anticipated only'; M-20 adds one sentence to CONTRIBUTING. |
| GitLab database incident of 2017-01-31 | A recovery statement says whether the path was exercised. | Not applicable; observed case. | Observed public case for P-07 and for the link from 7.3 e to clauses 3.3.5 and 3.5.4 c. |
| NASA IV&V, DevSecOps, software safety standards | The record says who examined the reasoning and how they relate to its authors. | A mandatory independent organization. | 7.3 g is disclosure only, consistent with record J-029, which rejected an independence requirement. |
| KADS history | Reuse of these in place of new objects. | Not applicable. | Every proposed clause names the existing clause it extends. |

Three findings shaped the design more than the rest.

1. Every source that scales rigor does it by a small classification made once, with a class that needs almost nothing (NPR 7150.2D lower classes; the SRE "almost trivial checklist"; the pre-authorized standard change, not inspected). None of them is a continuous score.
2. The two shuttle reports describe failures of records, not only of process: a waiver that was not visible, a quiet period read as proof, an objection that did not travel, a problem closed while open. Each is something a record rule can address.
3. The SRE book reports that a central readiness review did not scale. That is direct evidence against any design in which KADS creates a reviewing body or a mandatory review step.

## Integrated design

### (a) Where everything lives

One optional profile, specification section 7, "Assurance profile", five clauses. One sentence added to clause 4.6. No change to the common core (section 3). Everything else is guidance: one block added to the decision and ADR outlines, two new outlines, paragraphs in the decision guide, the relationship registry, foundations, and CONTRIBUTING.

Why one profile and not five addenda: decision assurance, production readiness, exceptions, incident learning, and high-assurance engineering share one spine, a decision record whose required content grows with level. A readiness statement is a decision to proceed. An exception is a decision to depart from a requirement. "High assurance" is the critical level. Only the incident record is a different object, and it is the existing investigation record. Five addenda would ask an adopter five questions and repeat the fields; one profile asks one.

Why not Core: the brief requires that Core be adoptable without assurance practice, and admission question 4 requires a core rule to make sense for a three-page repository.

Proposed text of section 7 (all of it):

> **7.1** Use this profile when a project wants a later reader to be able to reconstruct, for its consequential decisions, changes, exceptions, and incidents: what was believed, on what evidence, which risks were accepted and by whom, and what happened afterwards. The profile states what a record makes discoverable. It does not require that a review be held, that a role be staffed, or that a change be approved (clause 3.6.3), and it requires nothing for a decision or change at the routine level. It can be used with or without tracked records.
>
> **7.2** (a) A project applying this profile MUST state in its adoption note the criteria by which it assigns the levels routine, significant, and critical, and who assigns them. (b) A record made under clause 7.3 MUST state its level and the factor that decided it. (c) Where criteria point to different levels, the higher SHOULD be assigned. A project MAY map existing local classes, such as change types or severity classes, to these levels.
>
> **7.3** A record of a decision to make or proceed with a change at the significant or critical level MUST make the following discoverable, on the page or through links:
> (a) the claim the decision rests on, such as that the change is ready, stated separately from the choice to proceed;
> (b) the evidence for that claim and what the evidence does not cover;
> (c) the assumptions relied on;
> (d) the known risks that remain, and who accepted them;
> (e) how the effect will be undone or contained, or that it cannot be.
> At the critical level the record MUST also make discoverable:
> (f) how the change could fail and how the failure would be detected;
> (g) who other than its authors examined the reasoning and what they found, or that no one did;
> (h) each disagreement recorded before acceptance that could change the choice, with the reason it did not prevail.
> (i) Where the evidence in (b) is that no failure has been observed, the record MUST state what was observed, over what period or exposure, and how a failure would have been detected.
> The absence of recorded disagreement does not establish agreement. Evidence is linked, not copied (clause 3.2.1).
>
> **7.4** (a) An exception MUST identify the requirement departed from, its scope, the reason, the risk accepted, who accepted it, and an expiry date or review condition. (b) An exception stated to be permanent SHOULD say why the requirement is not changed instead. (c) An exception whose expiry date has passed without a recorded renewal MUST NOT be presented as in force. (d) Exceptions in force SHOULD be listed where the requirement is stated or be reachable from the corpus entry point. An exception to a KADS clause is the exception that conformance already requires; this clause adds no field to it.
>
> **7.5** (a) A record of an incident investigation MUST state, for each lesson it draws, one disposition: a change made, with a link to it; a change pending, with a link to where it is tracked; a risk accepted, naming who accepted it; or no change, with the reason. (b) Where an incident shows that an assumption or evidence relied on by a recorded decision did not hold, the incident record SHOULD link to that decision. (c) A record at the critical level SHOULD state when and how its outcome will be checked, and later what was observed.

Amendment to clause 4.6, one sentence after "An accepted decision MUST identify who or what authorized the choice, and when it takes effect.":

> An accepted decision MUST state the reasons for the choice, or state that they are not recorded.

Two terms added to section 2:

> - **Assurance level:** a project's classification of a decision or change by the consequence of its being wrong: routine, significant, or critical (clause 7.2). It sets how much a record makes discoverable. It is not a measure of quality or of approval.
> - **Exception:** a recorded, accepted departure from a requirement the project otherwise treats as binding, for a stated scope.

### (b) Assurance levels, factors, and who classifies

| Level | Definition (proposed for clause 7.2, as a list under the clause) | What the profile requires |
|---|---|---|
| routine | Being wrong has an effect confined to what the deciding team can itself detect and undo by a path it has used before. | Nothing. No record is required by this profile. |
| significant | Being wrong would materially affect users, data, security, cost, or obligations outside that team, and the effect can be detected and undone or contained by a known path. | 7.3 (a) to (e), and (i) when it applies. |
| critical | Being wrong could cause an effect that cannot be undone, or one that present means cannot detect or contain. | 7.3 (a) to (h), (i) when it applies, and 7.5 (c) as a recommendation. |

Two factors decide the level: reversibility, and reach beyond what the deciding team can itself restore. The other factors in the brief are reasons a change has that reach or lacks that reversibility, and belong in the guide as prompts: data integrity, security, financial exposure, regulatory obligation, customer impact, weak observability, uncertainty, and recovery complexity each raise the level when present. Weak observability and high uncertainty appear in the definition of critical ("present means cannot detect"). No scoring is proposed; a score would fall under clause 3.1.3 and invite arithmetic in place of judgment.

Who classifies: the project says in its adoption note (7.2 a). The proposed default in the guide is that the author of record of the decision assigns the level, and whoever accepts the decision under clause 4.6 may raise it. Lowering a level after it was recorded is a material change and keeps its reason (nomenclature: "A material status change MUST include its reason" is the model). Exceptions and incident records are not leveled: their fields are few and always the same.

### (c) What becomes required at which level

| Field or question | Source | routine | significant | critical |
|---|---|---|---|---|
| What is decided, who authorized it, effective date | 4.6, existing, tracked decisions only | as today | as today | as today |
| Reasons for the choice, or that they are not recorded | 4.6, proposed sentence | accepted tracked decisions | yes | yes |
| Level and deciding factor | 7.2 b | no | MUST | MUST |
| Claim separate from choice | 7.3 a | no | MUST | MUST |
| Evidence and what it does not cover | 7.3 b | no | MUST | MUST |
| Assumptions | 7.3 c | no | MUST | MUST |
| Remaining risks and who accepted them | 7.3 d | no | MUST | MUST |
| Undo or containment, or that there is none | 7.3 e | no | MUST | MUST |
| Scope of a no-failure claim | 7.3 i | no | MUST when such evidence is offered | MUST when such evidence is offered |
| Failure and detection | 7.3 f | no | no | MUST |
| Examination by others, or that none occurred | 7.3 g | no | no | MUST |
| Recorded disagreement and why it did not prevail | 7.3 h | no | guide advice | MUST |
| Outcome check | 7.5 c | no | no | SHOULD |
| Exception: six fields | 7.4 a | whenever an exception is recorded | same | same |
| Incident: disposition per lesson | 7.5 a | whenever an incident investigation is recorded | same | same |

"No" means the profile asks nothing; it does not forbid.

### (d) Reuse of existing KADS objects

| Need | Existing object reused | What is added |
|---|---|---|
| Decision with assurance content | Decision record (`D` or mapped `ADR`), clause 4.6 | The assurance block as a section |
| Readiness, go or no-go | The same decision record; the choice is "proceed with change X". The readiness claim is a conclusion inside it, or a conclusion record (`C`) if a project tracks it | Nothing |
| Evidence | Evidence records, test records, or native artifacts under clause 3.6.1, linked | Nothing |
| Assumption | Question record in status `open`, linked with `depends-on` (nomenclature, existing paragraph) or a sentence in the decision | Nothing |
| Risk | A sentence in 7.3 (d); a question record if the project tracks it | Nothing |
| Exception | Decision record whose choice is the departure; for a KADS clause, the conformance exception | Fixed label "Exception to:"; expiry rule 7.4 c |
| Expired exception | Status `deprecated`, or `superseded` by a renewal record; a dated renewal note in the same record is enough | Nothing |
| Incident | Investigation record (`J`) | Disposition per lesson |
| Lesson that changes a requirement, test, or runbook | The changed document, linked; clause 3.4.1 preserves what it replaced | Nothing |
| Dissent | Text in the decision record; clause 3.3.2 | Nothing |

The eleven candidate relationships against the existing eleven relations:

| Candidate | Expressed today as | New? |
|---|---|---|
| decision supported-by evidence | `supported-by`, or `evidenced-by` for raw output | No |
| decision assumes assumption | `depends-on` a question record | No |
| decision mitigates risk | Text in the decision; `answers` a question record if the risk is tracked as one | No; a stretch of `answers`, see M-17 |
| decision supersedes decision | `supersedes` | No |
| exception deviates-from requirement | Field label "Exception to:" with a link | Not a registry relation; a fixed label. This is the one candidate with a real case for a relation, see M-17 |
| exception accepted-by authority | The authority statement of clause 4.6 | No; a field, not a relation between records |
| incident invalidates assumption | `contradicts`; the assumption's question record becomes `answered` | No |
| incident changes requirement | Lesson `implemented-by` the changed requirement; the change is `supported-by` the incident record | No |
| incident produces evidence | `evidenced-by`, read from the target ("Evidence for") | No |
| readiness evaluates change | Not needed: readiness is the decision; the decision is `implemented-by` the change | No |
| dissent challenges decision | Text in the record; a separate dissenting record `contradicts` the decision | No |

Result: zero relations added. Nine are expressible outright, two are record fields.

### (e) Templates

Three texts. The first is a block for the existing decision and ADR outlines, and is also the readiness template. The other two are new files. All are informative.

**1. Assurance block (insert into `templates/decision.md` and `templates/adr.md` after "Authority and effect"; delete for routine decisions)**

```markdown
## Assurance

**Level:** <significant or critical>, because <the factor that decided it>.

<Significant and critical. One or two sentences each; link, do not copy.>

- **Claim:** <what must be true for this choice to be sound, for example "the migration is ready to run". The choice itself is in the decision section.>
- **Evidence:** <links to runs, tests, reviews, measurements. What they do not cover. If the evidence is "no failure seen": what was watched, for how long or how much traffic, and how a failure would have shown.>
- **Assumptions:** <what is taken as true without evidence. Link a question record if tracked.>
- **Remaining risk:** <known risks not removed, and who accepted each.>
- **Undo or contain:** <the path, and whether it has been executed (clauses 3.3.5, 3.5.4), or "cannot be undone".>

<Critical only.>

- **Failure and detection:** <how this could fail, and what would show it.>
- **Examined by:** <who other than the authors examined the reasoning, their relation to the authors, what they found. Or "no one". Name automated review as such.>
- **Disagreement:** <each recorded objection that could change the choice and why it did not prevail. Or "none recorded", which does not mean everyone agreed.>
- **Outcome check:** <when and how the result will be checked. Later: what was observed.>
```

**2. Exception (`templates/exception.md`)**

```markdown
# <D-ID>  -  Exception: <requirement, in a few words>

**Type:** decision  
**Status:** <proposed or accepted>  
**Updated:** <YYYY-MM-DD>

**Exception to:** <link to the requirement, by clause or identifier>  
**Scope:** <systems, versions, or period covered>  
**Expires:** <YYYY-MM-DD, or the review condition. If permanent: why the requirement is not changed instead.>  
**Accepted by:** <who accepted the risk, and when. While proposed, say so.>

## Departure and reason

<What is done instead, and why the requirement cannot be met in this scope.>

## Risk accepted

<What could happen because of the departure. Mitigation in place, if any, with links.>

## Renewal and end

<Each renewal: date, who, new expiry. When ended: date and what restored compliance. An exception past its expiry with no renewal is not in force.>
```

**3. Incident (`templates/incident.md`)**

```markdown
# <J-ID>  -  Incident: <what happened, in a few words>

**Type:** investigation  
**Status:** <active or complete>  
**Updated:** <YYYY-MM-DD>

## What happened

<Effect, scope, start and end times with offsets. Link the timeline and telemetry; do not copy them. Describe actions and conditions, not blame.>

## What we believed and what was true

<Which assumption, evidence, or decision did not hold? Link each affected decision record.>

## Lessons and dispositions

| Lesson | Disposition | Where |
|---|---|---|
| <one finding> | <changed, pending, risk accepted, or no change> | <link to the change or the tracking item; who accepted the risk; or the reason for no change> |
```

### (f) Worked examples

Constructed cases; no project is described.

**1. Routine deployment.** A stateless service gets a dependency patch through the usual pipeline with automatic rollback the team has used many times. Level: routine. The profile requires nothing. The commit and pipeline run are the record.

**2. Schema migration.** A column is split in a customer-facing database. Level: significant, because other teams' services read the table and the migration can be reversed from the retained old column. The pull request description carries the block: claim "migration is ready"; evidence: link to the dry run on a production copy, which did not cover peak write load; assumption: no reader depends on column order; remaining risk: 30 seconds of write lock, accepted by the service owner; undo: reverse script, executed once on the copy on a stated date. Five short lines and three links.

**3. Authentication change.** Token lifetime and refresh logic are changed. Level: significant by reach, raised to critical by the project's criteria because a fault could silently admit expired sessions and present monitoring would not show it. Adds: failure and detection ("expired token accepted; detected only by the new audit query, linked"); examined by a named engineer from another team, who found one missed path, now fixed; disagreement: one objection that the rollout should wait for the audit dashboard, not accepted because the query runs hourly, recorded with that reason; outcome check in fourteen days.

**4. Production incident.** A queue backlog causes two hours of delayed notifications. An investigation record lists three lessons: the alert threshold assumed a traffic level that no longer holds, changed, link to the alert rule; the runbook step was wrong, changed, link; capacity headroom, no change, with the reason that the new alert gives enough warning. It links to the capacity decision whose assumption failed (7.5 b). No level is needed.

**5. Temporary exception.** A legacy service cannot meet the project's rule that all services rotate credentials every 90 days. One exception record: exception to that rule; scope, one service; reason; risk accepted by the security lead; expires on a stated date three months out. After that date the index of exceptions in force no longer lists it unless a renewal note is added (7.4 c).

**6. Irreversible, high blast radius.** Customer data in a retired region is to be deleted. Level: critical, because it cannot be undone. All of 7.3: claim "no live reference remains"; evidence: reference scan and 30 days of access logs showing no reads, with the statement required by (i) that the logs cover API reads only and that a batch reader would have appeared in a different log, also checked; assumptions; remaining risk accepted by the data owner by name; undo: "cannot be undone; a final export is retained for 90 days, restore from it executed on a stated date"; failure and detection; examination by someone outside the team; a recorded objection asking for a longer retention and why 90 days was chosen; outcome check at day 90. About one page, mostly links.

Evidence grows from nothing, to three links and five sentences, to a page with named examiners and a scoped negative result.

### (g) What this design adds

| Item | Count | Detail |
|---|---|---|
| Clauses | 5 new, 1 amended | 7.1 to 7.5; one sentence in 4.6. None in the common core. Specification goes from 48 to 53 clauses. |
| MUST | 8 | 7.2 a, 7.2 b, 7.3 first list, 7.3 critical list, 7.3 i, 7.4 a, 7.5 a, and the 4.6 sentence |
| MUST NOT | 1 | 7.4 c |
| SHOULD | 5 | 7.2 c, 7.4 b, 7.4 d, 7.5 b, 7.5 c |
| MAY | 1 | 7.2 |
| Defined terms | 2 | assurance level, exception |
| Record types | 0 | |
| Statuses | 0 | |
| Relations | 0 | one fixed field label, "Exception to:" |
| Templates | 3 | 2 new files; 1 block in two existing outlines |
| Required fields | 17 | level 1; significant 5; critical 3; conditional 1; exception 6, the same six conformance already lists; incident 1 per lesson. The 4.6 sentence adds 1 to every accepted tracked decision. |
| Profiles | 1 | adds one decision to every adoption |

Only the 4.6 sentence is breaking for an existing conformant corpus, and only for one that uses tracked decision records.

If the challengers find this too large, the order of removal that loses least is: 7.5 (c); 7.4 (d); 7.4 (b); the incident outline, folded into the investigation outline; then 7.5 (b). The irreducible part is 7.2, 7.3, 7.4 (a) and (c), 7.5 (a), and the 4.6 sentence: 5 clauses, 8 MUST, 1 MUST NOT, 1 SHOULD. The fallback below that is the 4.6 sentence plus guidance, with section 7 recorded as a deferred proposal.

## Candidates

Wording quoted below is proposed wording, not a rule. Where a candidate cites a lettered item, the full clause is in the integrated design, part (a).

### P-01  -  Rigor proportional to consequence

- **Problem solved:** One fixed level of documentation is either too heavy for small changes or too light for dangerous ones, so teams either abandon it or apply it as ritual.
- **Failure mode prevented:** A password-policy change and a typo fix receive the same record; or every change must queue for the same review, as the SRE book reports for the simple PRR model (lead times of quarters).
- **Observed case:** Public: Google SRE chapter 32 (PRR did not scale) and chapter 27 (low-risk launches moved to 'an almost trivial checklist'). KADS history: four challengers judged the first 0.6.0 draft too large. In KADS adoption: anticipated only.
- **Behavior encouraged:** Authors spend recording effort where being wrong is costly and nothing where it is not.
- **Strongest rationale and precedent:** NPR 7150.2D scales requirements by class; the SRE launch checklist does the same informally. The principle is also the brief's guiding idea and matches the KADS design constraint in foundations.md.
- **Minimum mechanism:** State the principle once in the design rationale; make it operative only through 7.2 and the table in 7.3. No separate rule.
- **Strength and layer:** ADVISORY, GUIDANCE
- **Proposed wording:** No normative text. One sentence for docs/foundations.md under Design constraint: 'Where KADS asks for more from a record, it asks in proportion to the consequence of the record being wrong; the assurance profile (section 7) is the only place where that scale is explicit.'
- **Existing clause that could carry it:** docs/foundations.md, Design constraint paragraph.
- **Tradeoffs:** A principle with no clause is easy to ignore; a clause would duplicate 7.2.
- **Weakest point of this case:** Proportionality is already implicit in 'material claim' (section 2); a challenger can say the sentence adds nothing.
- **Admission test:** (1) Failure: Uniform ceremony leads to abandonment or ritual. Observed publicly (SRE PRR scaling); anticipated only in KADS adoption. (2) Property: None directly; it is a design constraint on the standard, not on a corpus. (5) Detection: Not detectable as a rule; that is why it is guidance. (6) Cost: Nothing on upgrade. Nothing for a ten-line how-to.

### P-02  -  No significant decision without rationale

- **Problem solved:** A reader finds what was decided and who decided it but not why, so cannot tell whether the decision still applies when conditions change.
- **Failure mode prevented:** A decision is reopened or silently reversed because nobody can tell which constraint it answered; or it is kept after its reason has gone.
- **Observed case:** KADS history: docs/decision-guide.md already instructs authors reconstructing old decisions to 'mark unknown authority or rationale', which records that the gap occurs. Clause 4.6 requires authority and effective date and is silent on reasons. No adopter report: anticipated in adoption.
- **Behavior encouraged:** Reasons are written at the time of the choice, or their absence is stated.
- **Strongest rationale and precedent:** Nygard's ADR puts context and consequences beside the decision in one or two pages. Clause 4.6 already makes two decision fields mandatory; rationale is the third and the one the epistemic test in the brief depends on.
- **Minimum mechanism:** One sentence in clause 4.6, with the escape 'or state that they are not recorded' so that historical decisions can conform without invention (clause 3.3.3).
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Add to clause 4.6 after the authority sentence: 'An accepted decision MUST state the reasons for the choice, or state that they are not recorded.'
- **Existing clause that could carry it:** Clause 4.6 (tracked-record profile). No new clause.
- **Tradeoffs:** Breaking for tracked-record corpora whose accepted decisions carry no reasons; the migration is one line per such record. Does not reach decisions that are not tracked records.
- **Weakest point of this case:** The requirement checks presence, not quality: 'because we agreed' conforms. And 'significant' is not defined outside section 7, so the sentence binds every accepted tracked decision, including small ones.
- **Admission test:** (1) Failure: A later reader cannot assess whether a decision still holds. Observed as a known gap in the decision guide; no adopter case. (2) Property: History is preserved; a material claim has an identifiable basis. (5) Detection: Reading one page: an accepted decision with no reasons and no statement of their absence. (6) Cost: On upgrade: add reasons or 'reasons not recorded' to each accepted tracked decision. A ten-line how-to: nothing.

### P-03  -  No GO without evidence

- **Problem solved:** A statement that a change is ready is written as a decision ('approved to ship') with no claim that could be checked, so approval substitutes for evidence.
- **Failure mode prevented:** The reader cannot separate 'we believed it works, on this evidence' from 'someone allowed it', and after a failure cannot tell which was wrong.
- **Observed case:** Public: Rogers Commission, Volume 1, Chapter V, finding 4 (a recommendation reversed 'contrary to the views of its engineers'): the GO existed, the supporting claim did not. In KADS adoption: anticipated only.
- **Behavior encouraged:** GO is written as a conclusion with evidence, followed by a separately attributed choice.
- **Strongest rationale and precedent:** NPR 7123.1D Appendix G gives every readiness review success criteria, so that GO asserts something. ISO/IEC/IEEE 15026-2 (not inspected) separates claim, argument, and evidence. KADS already separates finding, recommendation, and decision in the decision guide, and clause 5.6 forbids representing execution as satisfaction of a criterion.
- **Minimum mechanism:** Clause 7.3 (a) and (b): the claim is stated separately from the choice, with its evidence and what the evidence does not cover.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.3 as given in the integrated design. [items (a) and (b)]
- **Existing clause that could carry it:** Clause 3.3.1 already requires a basis for material factual claims; 7.3 (a) makes the readiness claim explicit so that 3.3.1 has something to bind.
- **Tradeoffs:** Adds two statements to every significant decision record. Does not stop a team from shipping without evidence; it makes the absence visible.
- **Weakest point of this case:** KADS cannot enforce the principle as worded. A record that says 'claim: ready; evidence: none' conforms. The benefit is only that this is now legible.
- **Admission test:** (1) Failure: Approval is read as evidence. Observed publicly (Challenger); anticipated in adoption. (2) Property: A material claim has an identifiable basis; nothing is stated more firmly than its support. (5) Detection: Reading one page: a record at significant level whose claim and evidence are absent or merged with the approval. (6) Cost: Nothing on upgrade unless the profile is adopted. A ten-line how-to: nothing.

### P-04  -  No exception without explicit risk acceptance

- **Problem solved:** Departures from a rule accumulate as habits. Nobody chose them, nobody owns the risk, and they do not end.
- **Failure mode prevented:** A temporary workaround becomes permanent; a requirement is believed to hold when it has been waived for months.
- **Observed case:** Public: Rogers Commission, Chapter V, finding 2, on waived launch constraints, and Chapter VI on a constraint waived for each subsequent flight. KADS history: conformance.md already requires an exception record for departures from KADS clauses; no case of a missing one is recorded.
- **Behavior encouraged:** A departure is written down once, with the person or role who accepted the risk and an end date.
- **Strongest rationale and precedent:** NPR 7120.5F section 3.5 dispositions relief at the level that set the requirement. KADS conformance already demands clause, scope, reason, consequence, responsible role, and review condition. 7.4 extends that existing object from KADS clauses to any requirement a project treats as binding.
- **Minimum mechanism:** Clause 7.4 (a): six fields, the same six that conformance already lists.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.4 as given in the integrated design. [item (a)]
- **Existing clause that could carry it:** docs/conformance.md, Review outcome, second paragraph: the same fields, limited there to KADS clauses.
- **Tradeoffs:** Writing exceptions down can legitimize them. A team with many informal departures faces a backlog when it adopts the profile.
- **Weakest point of this case:** KADS has no observed case of an unrecorded exception in an adopting project, and whether 'a requirement the project treats as binding' is identifiable enough for a reviewer is untested.
- **Admission test:** (1) Failure: A reader relies on a requirement that is not in force for some scope. Observed publicly; anticipated in adoption. (2) Property: A statement's scope is known; current guidance can be found. (5) Detection: Reading one exception record for the six fields. An unrecorded exception is not detectable by reading; that part stays outside the rule. (6) Cost: Nothing on upgrade unless the profile is adopted; then each known exception gets the six fields.

### P-05  -  Absence of failure is not evidence of correctness

- **Problem solved:** 'No incidents so far' is offered as evidence that a change, design, or exception is safe, without saying whether a failure would have been noticed.
- **Failure mode prevented:** Each uneventful repetition raises confidence in a condition that was never tested; the anomaly becomes the baseline.
- **Observed case:** Public: Rogers Commission, Chapter VI (O-ring erosion accepted as experience accumulated; the comparison on the eve of launch covered only flights with damage). CAIB on foam loss: unverified, not inspected. KADS history: clause 5.7 was adopted from adopter lesson 3, where a negative result was stated more broadly than the inspection supported; this is the same error applied to failure.
- **Behavior encouraged:** A no-failure statement carries its scope: what was watched, for how long, and how a failure would have appeared.
- **Strongest rationale and precedent:** Chaos engineering (principlesofchaos.org) builds confidence by trying to disprove a steady-state hypothesis. Clause 5.7 already scopes negative results in research reports; a no-failure claim is a negative result outside a research report.
- **Minimum mechanism:** Clause 7.3 (i), one conditional sentence. It binds only when the evidence offered is absence of failure.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.3 as given in the integrated design. [item (i)]
- **Existing clause that could carry it:** Clause 5.7 could carry it if the decision record were treated as a research report; it is cleaner to cite 5.7 from the guide and state the rule where decision evidence is listed.
- **Tradeoffs:** Honest teams with good monitoring write one more sentence. The rule cannot make anyone look for failures.
- **Weakest point of this case:** Arguably already covered by 3.3.1 plus 5.7; a challenger can call it a restatement. It is kept because the Challenger case is exactly this error made by competent people.
- **Admission test:** (1) Failure: A reader takes a quiet period as proof. Observed publicly and, in the form of over-broad negative results, in KADS adoption (lesson 3). (2) Property: Nothing is stated more firmly than its support. (5) Detection: Reading one page: a no-failure statement with no observation scope or detection means. (6) Cost: Nothing unless the profile is adopted.

### P-06  -  Critical changes consider off-nominal behavior

- **Problem solved:** Records of critical changes describe the intended path only, so the reader cannot tell whether failure was thought about or how it would have been noticed.
- **Failure mode prevented:** A failure occurs that nobody had named, with no detection in place, and the record gives a later investigator nothing to compare against.
- **Observed case:** Public: GitLab postmortem of 2017-01-31 (backup failures went unnoticed because the failure notifications were themselves rejected). In KADS adoption: anticipated only.
- **Behavior encouraged:** The author of a critical change writes down how it could fail and how that would be seen.
- **Strongest rationale and precedent:** FMEA (IEC 60812, not inspected) asks failure mode, effect, detection. The SRE PRR checklist asks whether failures are instrumented. The brief's six questions reduce to two that a record can answer: how can it fail, how would we know. Propagation and containment are answered in 7.3 (e).
- **Minimum mechanism:** Clause 7.3 (f), critical level only, prose, no worksheet.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.3 as given in the integrated design. [item (f)]
- **Existing clause that could carry it:** Clause 3.5.4 (a) covers irreversible effects of procedure steps; it does not reach a decision record.
- **Tradeoffs:** At critical level only, so a significant change may still ship with no failure analysis recorded. A weak answer ('could fail in unknown ways; monitoring') conforms.
- **Weakest point of this case:** This is the candidate closest to prescribing engineering thought instead of record content. The defence is that it asks for a statement, not an analysis method.
- **Admission test:** (1) Failure: An investigator cannot tell what the deciders foresaw. Anticipated in adoption; observed publicly. (2) Property: A material claim has an identifiable basis (the claim being that the change is ready). (5) Detection: Reading one page: a critical record with no failure and detection statement. (6) Cost: Nothing unless the profile is adopted.

### P-07  -  Recovery designed before deployment

- **Problem solved:** A change is recorded as ready with no statement of how it would be undone, or with a recovery path that was never exercised.
- **Failure mode prevented:** Rollback is found not to exist, or not to work, at the moment it is needed; an irreversible step is discovered during the change.
- **Observed case:** Public: GitLab 2017-01-31, where no usable backup existed and the postmortem asks 'Why was the backup procedure not tested on a regular basis?'. KADS: clause 3.5.4 (c) already addresses unexecuted procedures; no adopter case.
- **Behavior encouraged:** The record states the recovery path, or says plainly that there is none, before the change is accepted.
- **Strongest rationale and precedent:** SRE canarying and staged rollout limit exposure; clause 3.5.4 already requires irreversible effects to be stated in procedures. Irreversibility is one of the two decisive classification factors in 7.2, which is how 'irreversibility raises assurance' is implemented.
- **Minimum mechanism:** Clause 7.3 (e) at significant and critical level. Whether the path was exercised is not a new rule: a statement that recovery was tested falls under clause 3.3.5, and an untested runbook under 3.5.4 (c). The guide says so.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.3 as given in the integrated design. [item (e)]; guidance sentence for the decision guide: 'A recovery path named in a decision record is a procedure; say whether it has been executed (clauses 3.3.5 and 3.5.4 c).'
- **Existing clause that could carry it:** Clause 3.5.4 (b) and (c) carry the procedure side already.
- **Tradeoffs:** The record can state a recovery path that is fiction. KADS names no technique (flags, canaries, backups), so the brief's list lives only in guidance.
- **Weakest point of this case:** 'Designed before deployment' is a timing requirement on engineering; the record rule only requires the statement in the decision record. A record written afterwards conforms if it is honest about dates.
- **Admission test:** (1) Failure: A reader assumes a change can be reversed. Observed publicly. (2) Property: A statement's scope is known; nothing is stated more firmly than its support. (5) Detection: Reading one page: no recovery statement, or 'tested' without the 3.3.5 particulars. (6) Cost: Nothing unless the profile is adopted.

### P-08  -  High-risk decisions receive independent challenge

- **Problem solved:** A reader cannot tell whether anyone other than the authors examined the reasoning behind a critical decision, and takes an approval for an examination.
- **Failure mode prevented:** A self-reviewed, or agent-reviewed, critical decision reads as independently checked.
- **Observed case:** KADS history: the 0.6.0 gate found review claims written without knowledge of what was reviewed (changelog 0.6.0, Corrected), and record J-029 notes that review by a second agent can be presented as independent review. No adopter case.
- **Behavior encouraged:** Authors of critical decisions seek a challenge because its absence must be written down.
- **Strongest rationale and precedent:** NASA Technical Authority (NPR 7120.5F section 3.3) provides independent oversight; IV&V scales independence with class (prior knowledge). J-029 rejected an independence requirement as governance outside KADS and set its reopening condition as 'that would be a profile'. This is that profile, and it still asks for disclosure only.
- **Minimum mechanism:** Clause 7.3 (g): who other than the authors examined the reasoning and what they found, or that no one did. Clause 3.3.4 already forces automated review to be named as such.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.3 as given in the integrated design. [item (g)]
- **Existing clause that could carry it:** Clause 3.3.5 covers statements that a review occurred; it does not require saying that none occurred. 7.3 (g) adds only the negative statement, at critical level.
- **Tradeoffs:** The principle says 'require'; the mechanism only discloses. A team can write 'no one did' and conform.
- **Weakest point of this case:** A challenger will say this fails the candidate as written. The defence: clause 3.6.3 says KADS does not grant authority to approve decisions, and record J-029 rejected an independence requirement on that ground in the 0.6.0 evaluation of 2026-10-03.
- **Admission test:** (1) Failure: A reader over-trusts an unexamined critical decision. Observed in KADS's own history as invented review statements. (2) Property: Nothing is stated more firmly than its support. (5) Detection: Reading one page: a critical record silent on examination. (6) Cost: Nothing unless the profile is adopted.

### P-09  -  Technical dissent stays traceable

- **Problem solved:** Disagreement raised before a decision disappears from the accepted record, so the decision reads as unanimous.
- **Failure mode prevented:** A later reader cannot find the objection that turned out to be right, or learns of it only from memory.
- **Observed case:** Public: Rogers Commission, Chapter V: the deciders 'were unaware ... of the continuing opposition of the engineers' (as quoted in a search result of that chapter) and finding 4. KADS history: decisions/standards/README.md keeps 'Recorded dissents that did not prevail' for the 0.6.0 evaluation; that is the practice, not a failure.
- **Behavior encouraged:** Objections are written into the record with the reason they did not prevail; nobody has to win to be recorded.
- **Strongest rationale and precedent:** RFC 7282: issues are addressed, not necessarily accommodated, and numbers do not settle it. NPR 7120.5F section 3.4 gives three positions including disagree-but-support. KADS clause 3.3.2 already requires known contradictions to be disclosed, and both decision outlines mention dissent.
- **Minimum mechanism:** Clause 7.3 (h) plus the non-requirement sentence 'The absence of recorded disagreement does not establish agreement.' No veto, no escalation path, no dissent record type.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.3 as given in the integrated design. [item (h) and the sentence on absence of recorded disagreement]
- **Existing clause that could carry it:** Clause 3.3.2 ('Known contradictions ... MUST be disclosed') arguably covers it; 7.3 (h) makes the application to decisions explicit at critical level. For lower levels the decision guide sentence stays advisory.
- **Tradeoffs:** Binds only disagreement that was recorded somewhere before acceptance; oral dissent never written down is outside it. At significant level it stays advisory.
- **Weakest point of this case:** Detection requires comparing the accepted record with earlier drafts or discussion, which is 'comparing two', not 'reading one page'.
- **Admission test:** (1) Failure: A decision reads as uncontested. Observed publicly. (2) Property: History is preserved; known contradictions are disclosed. (5) Detection: Comparing the accepted record with its draft history or the linked discussion. (6) Cost: Nothing unless the profile is adopted.

### P-10  -  Incidents change the system, not only the documentation

- **Problem solved:** An incident write-up lists lessons and is filed; nothing shows whether any lesson changed a requirement, test, monitor, or runbook.
- **Failure mode prevented:** The same incident recurs; the postmortem exists and is 'complete'.
- **Observed case:** Public: Rogers Commission, Chapter VI (the O-ring problem was closed in tracking on request while unresolved). SRE book chapter 15: 'An unreviewed postmortem might as well never have existed.' KADS adoption feedback of 2026-10-02 is the positive form: six lessons, each with a disposition and a location. No adopter failure case.
- **Behavior encouraged:** Each lesson ends in a visible disposition, including 'no change, because'.
- **Strongest rationale and precedent:** The SRE postmortem goal includes that preventive actions are put in place. KADS's own adoption-feedback note already uses a lesson, disposition, where table.
- **Minimum mechanism:** Clause 7.5 (a): one disposition per lesson, four allowed values, each with its link or reason. The incident record is an investigation record; no new type.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.5 as given in the integrated design. [item (a)]
- **Existing clause that could carry it:** No existing clause addresses lessons. Clause 3.4.3 names an incident as a review trigger, which is the hook.
- **Tradeoffs:** KADS cannot make the change happen. 'Pending, tracked at X' can stay pending forever; the rule only keeps that visible.
- **Weakest point of this case:** The candidate's strong form ('not closed until') is a process rule on closure that KADS cannot own. The proposal deliberately weakens it to disclosure.
- **Admission test:** (1) Failure: A reader assumes a known lesson was applied. Observed publicly; the positive practice is observed in KADS. (2) Property: Current guidance can be found; history is preserved. (5) Detection: Reading one page: a lesson with no disposition. (6) Cost: Nothing unless the profile is adopted.

### M-11  -  Three assurance levels

- **Problem solved:** Without a shared scale, 'proportional' is decided afresh by every author and cannot be reviewed.
- **Failure mode prevented:** A dangerous change is treated as ordinary because nothing forced the question; or everything is treated as dangerous.
- **Observed case:** Public: NPR 7150.2D classes; SRE low-risk launch category (30 percent of reviews by 2008, as the tool extracted). In KADS adoption: anticipated only.
- **Behavior encouraged:** The author asks two questions before writing: can it be undone, and how far does it reach.
- **Strongest rationale and precedent:** Three levels is the smallest scale with a level that requires nothing, a level that requires the basics, and a level for the irreversible. NASA uses six; ITIL three change types (not inspected).
- **Minimum mechanism:** Clause 7.2 with three one-line definitions. Two decisive factors in the definitions (reversibility; reach beyond what the team can itself restore). The other eight factors of the brief are examples in the guide of what raises a level. The project states criteria and classifier in its adoption note; the default classifier is the author of record of the decision, and the accepting authority can raise the level.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.2 as given in the integrated design.
- **Existing clause that could carry it:** None; this is the one genuinely new concept. The adoption note (clause 6.1) carries the criteria.
- **Tradeoffs:** Classification is itself a decision before every decision. Levels invite gaming downward. The profile cannot detect a critical change left unrecorded as routine.
- **Weakest point of this case:** A reviewer cannot detect under-classification of something never recorded. The level is a new defined term and must pass admission question 7 with only public cases.
- **Admission test:** (1) Failure: Recording effort is misallocated. Anticipated in adoption. (2) Property: A statement's scope is known (the level tells the reader how much to expect from the record). (5) Detection: Reading the adoption note for criteria; reading one record for its level and deciding factor. (6) Cost: Nothing unless adopted. On adoption: one paragraph in the adoption note.

### M-12  -  Decision assurance structure

- **Problem solved:** The parts of a justified decision (claim, evidence, assumptions, risk, authority, dissent, outcome) are scattered or missing, so reconstruction fails.
- **Failure mode prevented:** Six months later the choice is known but not what was believed or which risk was knowingly taken.
- **Observed case:** Same public cases as P-03 and P-09. KADS: the decision outline already has authority, rationale, alternatives, validation, and revisit sections; assumptions and accepted risk are mentioned but not required.
- **Behavior encouraged:** Authors fill a short fixed set of statements whose number grows with level.
- **Strongest rationale and precedent:** ISO/IEC/IEEE 15026-2 (not inspected): claim, argument, evidence, assumptions. Nygard: short record. Clause 4.6 already carries decision, authority, and effective date; clause 5.2 is the precedent for a 'MUST make the following discoverable' list.
- **Minimum mechanism:** Clause 7.3: five items at significant, three more at critical, one conditional. Of the brief's nine fields: decision and authority are clause 4.6; rationale is the 4.6 amendment; outcome is 7.5 (c); the rest are 7.3.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.3 as given in the integrated design.
- **Existing clause that could carry it:** Clause 4.6 carries three of the nine fields already; putting all of them there would impose them on every tracked decision, which violates proportionality.
- **Tradeoffs:** Eight lettered items is the largest clause in the specification after 5.2. 'Evidence referenced, not copied' is clause 3.2.1 restated.
- **Weakest point of this case:** The list checks presence, not adequacy; a challenger can call it a template promoted to a rule.
- **Admission test:** (1) Failure: Decisions cannot be reconstructed. Observed publicly; anticipated in adoption. (2) Property: A material claim has an identifiable basis; history is preserved. (5) Detection: Reading one page against the lettered list. (6) Cost: Nothing unless adopted.

### M-13  -  Readiness record

- **Problem solved:** Readiness is asserted in chat or a ticket and leaves no reconstructable statement.
- **Failure mode prevented:** After a failed launch nobody can say what 'ready' meant.
- **Observed case:** Public: NPR 7123.1D Appendix G gives readiness reviews explicit success criteria; SRE chapter 27 on launch checklists. In KADS adoption: anticipated only.
- **Behavior encouraged:** The team answers the readiness questions in the record of the decision to proceed.
- **Strongest rationale and precedent:** The eight questions of the brief map one to one onto existing fields: what is changing (decision statement, 4.6); why we believe it works (7.3 a); evidence (7.3 b); what can go wrong (7.3 d, f); detection (7.3 f); contain or recover (7.3 e); who accepts residual risk (7.3 d); unresolved dissent (7.3 h).
- **Minimum mechanism:** No readiness record type and no readiness template. Readiness is the decision to proceed, written in a decision record with the assurance block. A project that wants a separate page uses the same block.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** No separate wording; clause 7.3 is the readiness rule. Guide sentence: 'A readiness or go/no-go statement is a decision to proceed; record it as a decision with the assurance block. The claim that the change is ready is a conclusion and needs its evidence; the choice to proceed needs its authority.'
- **Existing clause that could carry it:** Clause 7.3 and templates/decision.md.
- **Tradeoffs:** Teams with an existing launch checklist tool must map it, not copy it. A decision record per significant deployment may feel heavy; the pull request description can be the record.
- **Weakest point of this case:** If the readiness record is just a decision record, a challenger can say M-13 was not adopted at all. That is accurate: the proposal rejects the object and keeps the questions.
- **Admission test:** (1) Failure: Readiness cannot be reconstructed. Anticipated in adoption. (2) Property: A material claim has an identifiable basis. (5) Detection: Reading one page. (6) Cost: Nothing; no new object.

### M-14  -  Exception object

- **Problem solved:** Exceptions are invisible, ownerless, and permanent by default.
- **Failure mode prevented:** A requirement is read as in force when it is not; an expired waiver keeps being relied on.
- **Observed case:** Public: Rogers Commission, Chapter V finding 2 and Chapter VI (constraint waived flight after flight). Vaughan (not inspected) names the pattern. KADS: README adoption note has an Exceptions row; clause-examples.md shows 'Exception to clause 3.5.4(a)'. No adopter failure.
- **Behavior encouraged:** Exceptions are few, dated, owned, and easy to find.
- **Strongest rationale and precedent:** KADS conformance already defines the exception with six fields. NPR 7120.5F adds the Non-Applicable disposition, which answers 'when is a permanent deviation legitimate': when the requirement cannot apply to the case; otherwise change the requirement.
- **Minimum mechanism:** Clause 7.4. The exception is a decision record (type decision) with fixed field spellings; no new type, no new status (an expired exception is 'deprecated' or superseded by its renewal), no new relation. Of the eleven fields in the brief, id, status, and approved_by come from 4.2 and 4.6; evidence and mitigation are optional prose.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.4 as given in the integrated design.
- **Existing clause that could carry it:** docs/conformance.md Review outcome carries the fields for KADS clauses. 7.4 adds expiry behaviour (c) and visibility (d).
- **Tradeoffs:** 'Expire unless renewed' is implemented as a rule about presentation, not about enforcement. Visibility is a SHOULD.
- **Weakest point of this case:** 7.4 (c) needs a date; an exception with only a review condition never trips it. That is the hole through which permanence returns.
- **Admission test:** (1) Failure: A reader relies on a waived requirement or an expired waiver. Observed publicly. (2) Property: Current guidance can be found; a statement's scope is known. (5) Detection: Reading one page: fields present; expiry date compared with today and with any renewal note. (6) Cost: Nothing unless adopted; then known exceptions get an expiry or review condition.

### M-15  -  Roles

- **Problem solved:** Records say 'approved' without saying who did what, so one person's signature reads as several independent checks.
- **Failure mode prevented:** Approval counts stand in for scrutiny.
- **Observed case:** KADS history: invented 'reviewed by the maintainer' statements corrected in 0.6.0. No adopter case.
- **Behavior encouraged:** Records name the people or roles behind acceptance, risk acceptance, and examination, and say when they are the same person.
- **Strongest rationale and precedent:** Clause 4.6 already names the authority; 3.3.4 the author of record; 7.3 (d) and (g) the risk acceptor and the examiner. RFC 7282 is the precedent against counting.
- **Minimum mechanism:** No role vocabulary. A paragraph in the decision guide: the five names in the brief are functions, one person may hold several, and the record says who held which. 'Challenger' is plain language for the examiner in 7.3 (g).
- **Strength and layer:** ADVISORY, GUIDANCE
- **Proposed wording:** No normative text. Guide paragraph: 'Author, reviewer, challenger, approver, and risk owner are functions, not posts. At lower levels one person may hold all of them. A record names who held each function that its level requires it to state, and says so when two are the same person or when one is an automated agent (clause 3.3.4). The number of approvers is not evidence.'
- **Existing clause that could carry it:** docs/decision-guide.md.
- **Tradeoffs:** Without defined roles, projects will use different words. That is acceptable; KADS maps local terms elsewhere too.
- **Weakest point of this case:** Nothing normative results, so a challenger may ask why it is a candidate at all. It is kept as guidance because the profile's fields presuppose the functions.
- **Admission test:** (1) Failure: Approval is mistaken for scrutiny. Observed in KADS history. (2) Property: Nothing is stated more firmly than its support. (5) Detection: Not a rule; no detection needed. (6) Cost: Nothing.

### M-16  -  Incident learning loop

- **Problem solved:** Incident analysis is not connected to the decisions and assumptions it invalidates.
- **Failure mode prevented:** A decision record keeps an assumption that an incident disproved; the next reader trusts it.
- **Observed case:** Public: GitLab 2017 lists improvement actions with owners. KADS: adopter lesson 3 produced clause 5.7 through a recorded disposition. No adopter failure case.
- **Behavior encouraged:** Incident authors link back to the decision or assumption that failed, and forward to the change.
- **Strongest rationale and precedent:** The nomenclature already says that links to an assumption's question record 'are the review list when the question is answered against the assumption'. An incident is such an answer.
- **Minimum mechanism:** Clause 7.5 (a) carries the valid outcomes: of the brief's eight, six are 'change made' with different targets, plus 'risk accepted' and 'no change'; 'pending' is added for honesty. 7.5 (b) links to the affected decision. 7.5 (c) asks critical records to say when their outcome will be checked. The incident record is an investigation record.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** Clause 7.5 as given in the integrated design.
- **Existing clause that could carry it:** templates/investigation.md gains no section; a separate incident outline is offered because blameless framing and dispositions need prompts.
- **Tradeoffs:** 7.5 (b) and (c) are SHOULD because a reviewer cannot detect a missing link to a decision they do not know exists.
- **Weakest point of this case:** 7.5 (c), outcome follow-up, has no observed case and the weakest detection; it is the first item to drop if the profile must shrink.
- **Admission test:** (1) Failure: Disproved assumptions stay in force. Anticipated in adoption. (2) Property: History is preserved; current guidance can be found. (5) Detection: (a) reading one page; (b) and (c) not reliably detectable, hence SHOULD. (6) Cost: Nothing unless adopted.

### M-17  -  Typed relationships

- **Problem solved:** Assurance records need to point at evidence, assumptions, requirements, and each other in a way a reader and a text search can follow.
- **Failure mode prevented:** Links exist but their meaning is unclear, or eleven new relation names are added and nobody applies them consistently.
- **Observed case:** KADS history: J-018 rejected all relation additions in 0.6.0, with one recorded dissent (refines). No real document has yet shown a reading the existing eleven relations cannot express.
- **Behavior encouraged:** Authors use the existing vocabulary and two fixed field labels.
- **Strongest rationale and precedent:** Admission question 7 demands a reader question and a real document. Nine of the eleven candidates are expressible today; two are fields of a record, not relations between records.
- **Minimum mechanism:** Add no relation. Mapping: decision supported-by evidence = supported-by or evidenced-by. Decision assumes assumption = depends-on a question record (already in the nomenclature). Decision supersedes decision = supersedes. Incident invalidates assumption = contradicts, and the question record is answered against the assumption. Incident changes requirement = the lesson is implemented-by the changed requirement; the requirement change is supported-by the incident. Incident produces evidence = inverse of evidenced-by. Readiness evaluates change = not needed, readiness is the decision; the decision is implemented-by the change. Dissent challenges decision = text in the record; a separate dissenting record contradicts the decision. Exception accepted-by authority = the authority field of clause 4.6, not a relation. Decision mitigates risk = text in 7.3 (d); if the risk is tracked as a question record, the decision answers it for a stated scope. Exception deviates-from requirement = the fixed field label 'Exception to:' with a link, a spelling KADS already uses in clause-examples.md.
- **Strength and layer:** ADVISORY, GUIDANCE
- **Proposed wording:** No normative text. One paragraph in registry/relationships.md, informative: the mapping above, and the fixed spelling 'Exception to:' so that a text search for it lists every exception.
- **Existing clause that could carry it:** registry/relationships.md, advisory paragraph.
- **Tradeoffs:** 'Exception to:' is a relation in everything but name. Using 'answers' for mitigation stretches its meaning.
- **Weakest point of this case:** A challenger can fairly say deviates-from is the one case where the vocabulary cannot answer 'which exceptions exist against this requirement', and that a fixed label avoids the admission test instead of passing it. If so, the fallback is one relation, 'excepts', with required target, and nothing else.
- **Admission test:** (1) Failure: Relation sprawl or unreadable links. Anticipated only. (2) Property: None broken today. (5) Detection: Search for the fixed label. (6) Cost: Nothing.

### M-18  -  Architecture: Core versus addenda

- **Problem solved:** Five addenda would add five adoption decisions and overlapping fields; putting everything in Core would violate the brief.
- **Failure mode prevented:** Adopters cannot tell which parts apply; or Core users are forced into assurance practice.
- **Observed case:** KADS history: the Procedure profile of five clauses was dropped from 0.6.0 and all challengers found the draft too large; admission question 3 warns that 'a profile also adds a decision to every adoption'.
- **Behavior encouraged:** One opt-in decision, one place to read.
- **Strongest rationale and precedent:** The five candidate addenda share one spine: a decision record whose content grows with level. Exceptions and incidents are the same record types KADS already has. One profile is therefore enough, and Core is untouched.
- **Minimum mechanism:** One optional profile, specification section 7, 'Assurance profile', five clauses. One sentence added to clause 4.6. Everything else is guidance. The common core (section 3) receives no change.
- **Strength and layer:** NORMATIVE, PROFILE
- **Proposed wording:** 7.1 Use this profile when a project wants a later reader to be able to reconstruct, for its consequential decisions, changes, exceptions, and incidents: what was believed, on what evidence, which risks were accepted and by whom, and what happened afterwards. The profile states what a record makes discoverable. It does not require that a review be held, that a role be staffed, or that a change be approved (clause 3.6.3), and it requires nothing for a decision or change at the routine level. It can be used with or without tracked records.
- **Existing clause that could carry it:** Section 4 could host 7.3 to 7.5 as clauses 4.7 to 4.9, avoiding a new profile. Rejected because it would bind every tracked-record adopter to assurance content.
- **Tradeoffs:** A third profile is a third adoption decision. Five clauses equal the size of the Procedure profile that was dropped.
- **Weakest point of this case:** The last round removed a profile of exactly this size for thin evidence, and this one rests on public incidents, not adopter cases. The honest fallback is: 4.6 sentence plus guidance only, with the profile text kept as a recorded deferred proposal.
- **Admission test:** (1) Failure: Assurance content either leaks into Core or fragments. Observed in KADS history as the reason the previous draft was cut. (2) Property: Not a corpus property; a design constraint. (5) Detection: Reading the adoption note for the profile declaration. (6) Cost: Nothing for existing corpora except the 4.6 sentence if they use tracked decisions.

### M-19  -  Templates

- **Problem solved:** Without prompts, authors forget fields; with four new templates, the same decision gets written four times.
- **Failure mode prevented:** Document proliferation; abandoned templates.
- **Observed case:** KADS history: the templates directory already has eleven outlines. Anticipated only.
- **Behavior encouraged:** Authors add a block to a record they already write.
- **Strongest rationale and precedent:** The brief prefers a section or metadata block over a separate document.
- **Minimum mechanism:** One assurance block inserted into the existing decision and ADR outlines (this is the Decision and the Readiness template), one exception outline, one incident outline. Two new files, one amended.
- **Strength and layer:** ADVISORY, GUIDANCE
- **Proposed wording:** No normative text. Full template text is in the integrated design, part (e).
- **Existing clause that could carry it:** templates/decision.md and templates/adr.md gain the block; templates/investigation.md could carry the incident outline but its prompts differ enough to justify a file.
- **Tradeoffs:** Two more files in a directory of eleven.
- **Weakest point of this case:** The incident outline could be a section of the investigation outline; a minimalist challenger will say so and is probably right.
- **Admission test:** (1) Failure: Missing fields or duplicated documents. Anticipated only. (2) Property: None; templates are informative. (5) Detection: Not applicable. (6) Cost: Nothing.

### M-20  -  Lifecycle states for KADS's own principles

- **Problem solved:** A rule that merely sounds reasonable becomes normative and is then hard to remove.
- **Failure mode prevented:** KADS accumulates clauses with no operational evidence and no review date.
- **Observed case:** KADS history: three 0.6.0 rules were adopted with wording the six challengers never saw, one with no observed failure (3.3.4 addition), as the standards evaluation records. The limits section says most changes rest on argument.
- **Behavior encouraged:** Every clause admitted without an observed case carries that fact and a reopening condition where a reader of the changelog sees it.
- **Strongest rationale and precedent:** RFC 2026 separates designation from operational experience and has an Experimental category. KADS already has: decision statuses proposed, accepted, rejected, superseded; a 'Reopen when' column; admission question 1 ('observed or anticipated only').
- **Minimum mechanism:** No new statuses. One sentence in CONTRIBUTING and one column in the changelog entry: basis observed or anticipated. 'Challenged' and 'revised' are events, not states; 'experimental' is expressed as 'anticipated only, review at the next minor release after the first adopter report'.
- **Strength and layer:** ADVISORY, GUIDANCE
- **Proposed wording:** CONTRIBUTING, after the admission test: 'A rule admitted on an anticipated failure only is listed as such in the changelog with the condition that will trigger its review. Until an observed case is recorded it is a candidate for removal at each release review.'
- **Existing clause that could carry it:** CONTRIBUTING.md, Admission test section; the changelog format.
- **Tradeoffs:** No status means no single word to search for. The whole section 7 would itself be 'anticipated only' in adoption.
- **Weakest point of this case:** Six states were asked for and none is delivered; a challenger can say the candidate is rejected in substance. It is, on admission question 7: no reader question arose in a real document that 'proposed, accepted, superseded' plus a reopen condition cannot answer.
- **Admission test:** (1) Failure: Unevidenced rules become permanent. Observed in KADS's own evaluation limits. (2) Property: Nothing is stated more firmly than its support (applied to KADS itself). (5) Detection: Reading the changelog entry. (6) Cost: Nothing for adopters.

### M-21  -  Dogfooding evidence

- **Problem solved:** KADS has one adopter and no routine for learning whether its rules help.
- **Failure mode prevented:** Rules stay because nobody asked whether they still earn their place.
- **Observed case:** KADS history: docs/reviews/2026-10-02-adoption-feedback.md is the only adoption evidence; decisions/standards/README.md, Limits, says so.
- **Behavior encouraged:** At each release the maintainer asks of each clause with a fired reopening condition: would we add this today? Deletion is recorded as a valid outcome.
- **Strongest rationale and precedent:** The SRE launch checklist needs 'continuous attention' and prunes obsolete items. CONTRIBUTING already says requirements are reviewed 'when an adoption exposes ambiguity'.
- **Minimum mechanism:** Two sentences in CONTRIBUTING under Review route, and the ten signals of the brief listed in the adoption guide as optional things an adopter may report. No metrics requirement, no tooling.
- **Strength and layer:** ADVISORY, GUIDANCE
- **Proposed wording:** CONTRIBUTING, Review route: 'Before each minor release, review every clause whose reopening condition has occurred and every clause still marked anticipated only, asking whether it would be added today. Retiring a clause is a valid outcome and is recorded like any other decision.'
- **Existing clause that could carry it:** CONTRIBUTING.md, Review route.
- **Tradeoffs:** Without measurement the review is opinion. With one adopter there is little signal.
- **Weakest point of this case:** Signals such as 'time to locate decisions' cannot be collected without instrumentation KADS refuses to require; the list may be decoration.
- **Admission test:** (1) Failure: The standard grows monotonically. Anticipated; the previous draft's size is the nearest observed case. (2) Property: Not a corpus property. (5) Detection: Reading the release's review record. (6) Cost: Nothing for adopters.

### M-22  -  Complexity accounting per version

- **Problem solved:** Growth of the standard is invisible release to release.
- **Failure mode prevented:** Each release adds a little; nobody sees the total.
- **Observed case:** KADS history: the 0.6.0 changelog already carries a table of clauses and keyword counts for 0.5.0 and 0.6.0 (43 to 48 clauses, 64 to 68 MUST), and CONTRIBUTING release step 2 already asks for 'the clause and keyword counts'.
- **Behavior encouraged:** The maintainer sees and publishes the net change in every release.
- **Strongest rationale and precedent:** The practice exists and was the instrument by which the previous draft was judged too large.
- **Minimum mechanism:** Extend the existing table: add defined terms, record types, statuses, relations, templates, and a removed column. One edited sentence in CONTRIBUTING release step 2.
- **Strength and layer:** ADVISORY, GUIDANCE
- **Proposed wording:** CONTRIBUTING release step 2, replace 'the clause and keyword counts' with: 'the counts of clauses, keywords, defined terms, record types, statuses, relations, and templates, each as added and removed'.
- **Existing clause that could carry it:** CONTRIBUTING.md release steps; CHANGELOG.md table.
- **Tradeoffs:** Counts are a proxy; a single long clause can hide much. Required-field counts are judgment calls.
- **Weakest point of this case:** It is already done; the increment is small enough that a challenger may call it a patch, not a candidate.
- **Admission test:** (1) Failure: Unnoticed growth. Observed: the previous draft. (2) Property: Not a corpus property. (5) Detection: Reading the changelog table. (6) Cost: Nothing for adopters.
