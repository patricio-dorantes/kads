# KADS specification

This document is the complete set of rules of the Knowledge Administration and Documentation Standard (KADS), version 0.9.0. KADS is a standard for writing technical documentation and research reports that a reader can find, understand, check, and keep current.

Read this document when you need the exact wording of a rule. If you are new to KADS, start with the [README](../README.md), which shows the idea in one example, and keep the [clause guide](clause-guide.md) open beside this page: it restates every clause in plain words and shows what following it looks like.

## How to read this document

The rules are numbered from the general to the specific. Eight numbered propositions state what KADS holds; they are not themselves requirements. Beneath each one, a paragraph marked Why gives its reason and is not a rule; the clauses make it precise, and a deeper number is a more specific statement under the one above it: clause 2.3 makes proposition 2 precise, and clause 7.1.3 belongs to the first of the two optional profiles under proposition 7. A profile binds only a project that declares it (8.1). Clause numbers can change between versions, so a citation names the version (8.2).

KADS governs how technical knowledge is organized, presented, traced to its basis, and maintained. It does not prescribe a repository layout, a research method, a publishing platform, or tooling, and it grants no authority to execute commands or approve decisions.

A clause looks like this: a number, a short name, the role that has to act, and then the requirement.

> **number** *short name* (role that acts). The requirement, with its keyword in capitals.

**Keywords.** KADS adopts from [RFC 2119](https://www.rfc-editor.org/rfc/rfc2119) and [RFC 8174](https://www.rfc-editor.org/rfc/rfc8174) the meanings of **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT**, and **MAY**, and the rule that only their uppercase forms, in normative documents, carry those meanings; it adopts nothing else from those documents. In short: the first pair states what is required or forbidden, the second pair what is recommended or advised against, and the last what is permitted. A SHOULD may be departed from for a reason appropriate to the context; the reason belongs with the departure.

**Roles.** Each clause names, in parentheses after its name, the role that carries the requirement: the author, the maintainer, or the reviewer, as defined under Terms at the end of this document. Clause 8.3 binds the editors of KADS, meaning whoever maintains this standard. One person may hold all three roles. Where a clause names two roles, the parentheses say which part belongs to which.

**Which documents are rules.** This specification and [conformance](conformance.md) are normative, meaning they state rules. The [nomenclature](../registry/nomenclature.md) and [relationship vocabulary](../registry/relationships.md) are normative when using the tracked-record profile. Other documents are informative, meaning they explain and advise. If a guide, a template, or an example conflicts with these requirements, the requirements take precedence.

## 1. Knowledge is written for a reader who arrives with nothing else.

*Why.* A reader reaches a page by search, by a link, or through an excerpt, not by reading a collection in order; a page that cannot be understood on its own is understood only by people who already know its content.

**1.1** *Self-explanatory documents* (author). (a) A document SHOULD open by saying what it is, what question it answers, and what it applies to, in words a reader with no other context can follow. (b) A document's history, authorship, and contribution instructions SHOULD follow the content the reader came for. (c) A document MAY rely on its corpus for scope that it shares with every other document there, provided it says what it is and links to where that scope is stated.

**1.2** *Purpose and scope* (author; maintainer for the entry point). (a) Documentation MUST make its purpose and applicable scope discoverable. (b) The entry point MUST direct readers to current guidance and distinguish historical or superseded content.

**1.3** *Answer first* (author). A document SHOULD answer the reader's immediate question before requiring traversal of supporting content.

**1.4** *Consequential terms* (author). Evaluative terms or scores that materially affect interpretation or action MUST have discoverable criteria and meanings within their scope. Such a term MUST NOT carry two meanings within one scope unless the difference is stated where the term is used.

## 2. Each subject has one home.

*Why.* Two maintained copies of one fact drift apart, and then nobody can say which is right; a summary, a generated page, or a repeated figure is a view of its source and has to say so.

**2.1** *One canonical home* (maintainer for naming the home; author for not presenting a copy as authoritative). (a) Each independently maintained subject MUST have an identifiable canonical home within its scope. (b) Other pages MAY summarize or quote it with a link and any necessary scope qualification; they MUST NOT present independently maintained copies as equally authoritative for the same scope. (c) A table or diagram MAY be a canonical home; its meaning and necessary context MUST then be accessible to its intended readers, and supporting prose need not duplicate every entry or edge.

**2.2** *Summaries and derived views* (author). (a) A summary MUST preserve material qualifications. (b) Authors MUST review affected summaries when changing canonical content, or label them as dated snapshots. (c) A snapshot MUST identify its source and the date or revision it represents. (d) A summary, index, or other derived view MUST NOT state a claim more firmly than its source does: what the source presents as an inference, assumption, hypothesis, recommendation, or proposal keeps that standing when restated.

**2.3** *Reachability* (maintainer). Each maintained document SHOULD be reachable by links from the corpus entry point. Preserved evidence and artifacts need no separate link; they are reached through the document or manifest that cites them.

**2.4** *Generated views* (author; maintainer for the edit boundary). (a) A generated or transformed view MUST identify its maintained sources and relevant transformations. (b) Projects SHOULD make the authored/generated boundary and the correct edit location clear.

## 3. A claim is no stronger than its support.

*Why.* A reader acts on what a document says, and what was observed, inferred, assumed, and decided carry different weight; a restatement that drops the difference turns a guess into a fact, and an answer whose reasoning cannot be reached cannot be checked.

**3.1** *A basis for every material claim* (author). (a) Material factual claims MUST have an identifiable basis: relevant code, an authoritative reference, an observation, a derivation, or an explicit assumption awaiting verification. (b) A citation SHOULD point to the specific passage, version, or artifact needed to assess the claim. (c) A source cited without having been inspected for the claim it supports SHOULD be identified as such, at the citation or in a source list the citation leads to; the absence of such identification does not establish that a source was inspected. (d) Where a material claim rests on reasoning or a method that the document does not itself contain, the document SHOULD say where that reasoning or method is recorded, or that it is not recorded.

**3.2** *Kinds of statement stay distinct* (author). (a) Observation, inference, assumption, hypothesis, recommendation, and decision MUST remain distinguishable wherever combining them would mislead. (b) Unsupported material claims MUST be marked as unverified or provisional. (c) Known contradictions and limitations that affect interpretation MUST be disclosed.

**3.3** *Nothing invented* (author). (a) An author MUST NOT invent sources, execution results, collection dates, approval, or confidence. (b) Missing information MUST be marked unknown, omitted when immaterial, or recorded as an open question.

**3.4** *Verification claims* (whoever writes the statement: author or reviewer). (a) A statement that documentation content was verified, reviewed, tested, or executed MUST say, or link to, what was checked, against which version or environment, and when or by which recurring process, or state which of these is not recorded. (b) An edit, including one that changes an edit date or revision, is not such a statement and does not establish that technical content was revalidated.

**3.5** *Agent-drafted content and automated review* (author; whoever states a review). (a) An agent-drafted document or record MUST identify an author of record. (b) It SHOULD state which content was generated and which was verified by a person, and how. (c) Wherever a review of any content is stated, a review performed only by automated agents MUST be identified as automated review.

**3.6** *Artifacts behind claims* (author). (a) For an artifact used to substantiate a material claim, its location, relevant version or temporal scope, role, and interpretation limits MUST be discoverable. (b) Intended configuration MUST NOT be presented as observed deployed state without supporting evidence.

## 4. Current guidance is kept apart from history.

*Why.* An old page found by search is followed as if it were current, and a finding that was quietly overwritten leaves whoever acted on it with no way to see that it changed.

**4.1** *Superseded content* (the author who supersedes it; maintainer for an older archive). (a) When content is superseded or withdrawn as current guidance, it MUST say so in visible text where a reader who opens it directly will meet it: within that content and before the rest of it, or, for content preserved unaltered, in a note at the same location. (b) The statement MUST point to the current guidance where that exists. (c) For a document, the statement SHOULD appear in the title or top-level heading. (d) The absence of such a statement does not establish that content is current. Content that was superseded before the corpus adopted this clause MAY instead be identified collectively at the entry point, by location or date boundary, as content whose currency has not been reviewed.

**4.2** *Corrections and replaced findings* (author). (a) Current guidance MAY be corrected in place. (b) A change that reverses a recorded decision or materially replaces a historical finding MUST preserve the prior meaning and explain what replaced it and why; version history with a direct revision reference MAY provide that preservation, and separate records are not mandatory for every edit.

**4.3** *Dated facts* (author). (a) Where the date, revision, or measurement interval is material to a fact that changes over time, the fact MUST identify it. (b) Where the method or conditions under which such a fact was established differ from current ones in a way that affects interpretation, the fact MUST identify them.

## 5. Evidence is kept as it was collected.

*Why.* Evidence that was tidied, overwritten by a later run, or quietly redacted can no longer support the claim it was collected for. Clauses 5.1 and 5.2 bind only where a corpus holds evidence.

**5.1** *Evidence kept as collected* (the author who stores or alters evidence). (a) Evidence SHOULD be preserved as collected. (b) A correction, transformation, or redaction that affects interpretation MUST be disclosed where a reader of the affected content will encounter it: in the content itself, or in a note or manifest at the same location; the disclosure MUST state what kind of content was changed or removed, when, why, and any effect on interpretation, without reproducing the removed content. (c) Necessary removal for access, privacy, or retention reasons MUST leave a description of the resulting evidence gap when safe to do so.

**5.2** *Run identity* (maintainer for the scheme; the author who stores a run). (a) A preserved run or collection of evidence MUST have an identifier that distinguishes it from every other one in the corpus. (b) The storage layout MUST NOT allow a later run to occupy or overwrite the location of an earlier one. (c) A storage label identifies a run; it is not its collection time, which is recorded separately.

## 6. A procedure can be followed and its result recognized.

*Why.* A reader following a procedure acts under time pressure, often from the step they jumped to, and a reader of a figure acts on it without its author at hand; each has to carry what the reader needs at the point they need it, and a link has to lead where it says.

**6.1** *Procedures and quantities* (author). (a) A technical procedure MUST state material prerequisites, actions, and an observable completion condition. (b) A quantitative result MUST expose units, scope, time or revision, and source, and its denominators and aggregation MUST be explained when needed to interpret it.

**6.2** *Irreversible steps* (author). (a) A procedure step that can cause loss of data, loss of service, or another effect that cannot be undone MUST state that effect in or immediately before the step. (b) The statement SHOULD give the way to avoid or recover from the effect where one exists.

**6.3** *Links and references* (author). (a) Internal links MUST resolve. (b) A material external reference MUST be identifiable even if access is restricted, and restrictions or known unavailability MUST be stated.

## 7. Structure is added only where it pays.

*Why.* A short procedure needs no identifier, and a page that is linked once needs no record; identifiers, lifecycle states, and relationship labels help only where records are referenced across moves or their history matters.

### 7.1 The tracked-record profile

Clauses 7.1.1 to 7.1.5 bind the tracked records of a project that declares this profile (8.1).

**7.1.1** *Record fields* (author). Each tracked record MUST have an ID, type, title, status, and updated date, recorded once in visible text or metadata; version history MAY supply the updated date.

**7.1.2** *Identifiers* (author; maintainer for the namespace). (a) IDs MUST be unique within a declared namespace, survive moves and title changes, and never be reassigned. (b) Cross-namespace references MUST identify the destination corpus and resolve to a location. (c) IDs follow the [nomenclature](../registry/nomenclature.md) or a documented local extension or mapping.

**7.1.3** *Relationships* (author). A material relationship MUST have an explicit meaning, from the [relationship vocabulary](../registry/relationships.md) or a documented local extension, and a resolvable target.

**7.1.4** *Supersession* (author). A record that replaces another MUST identify what it supersedes; the statement that 4.1 requires on the superseded record is the same relation read from the other end.

**7.1.5** *Status and decisions* (author). (a) Status MUST describe the record's lifecycle and MUST NOT imply truth, approval, implementation, or validation that has not been separately established. (b) Where a record assesses certainty or reports a test outcome, that assessment or outcome MUST be separate from its status. (c) An accepted decision MUST identify who or what authorized the choice and when it takes effect, and SHOULD state the reasons for the choice, link to where they are recorded, or state that they are not recorded.

### 7.2 The research-report profile

Clauses 7.2.1 to 7.2.6 bind a report of findings from an investigation, experiment, benchmark, source review, or other technical research, in a project that declares this profile (8.1). The profile can be used with or without tracked records.

**7.2.1** *What a report contains* (author). A report MUST make the following discoverable, in one page or through links:

- question and scope;
- method, relevant inputs, environment or source-selection criteria;
- observations or results separated from interpretation;
- reasoning from results to each material conclusion;
- sources and provenance sufficient to assess the evidence;
- material limitations, conflicting evidence, and unresolved uncertainty;
- a current answer, including an inconclusive or negative result when warranted.

**7.2.2** *Reproducibility* (author). (a) A repeatable experiment MUST describe enough of its method for a suitably equipped reader to attempt it; a source review need not invent an experiment. (b) Barriers to reproduction MUST be stated.

**7.2.3** *Test reports* (author). (a) A test report MUST distinguish execution state, observed behavior, and assessment against a stated criterion. (b) If a criterion was chosen after observing results, that fact MUST be stated. (c) Changing the criterion MUST NOT silently change the interpretation of a historical run.

**7.2.4** *Scorecards* (author). (a) For requirement evaluations or scorecards, the criteria, scale, weighting, denominator, and exclusion policy MUST be discoverable when they affect the result. (b) Unevaluated, blocked, failed, and not-applicable cases MUST remain distinguishable wherever present, including their effect on aggregation.

**7.2.5** *Inherited and observed values* (author). Inherited values, source assertions, and direct observations MUST remain distinguishable when that difference affects the claim.

**7.2.6** *Negative results* (author). (a) A negative result, such as not found, not supported, rejected, or unreachable, MUST be scoped to the interface, version, credentials, and location actually inspected, and MUST NOT be stated as the general absence of a capability without evidence covering the other routes by which that capability could be reached. (b) When a different method later yields a different result, the earlier conclusion MUST be revised or superseded under 4.2 with the change attributed to the method; the earlier observation remains a valid record of what that method returned. (c) A statement that no failure was observed is a negative result: its scope includes what was observed, over what period or exposure, and how a failure would have been detected.

## 8. A project says what it follows.

*Why.* "We follow KADS" means nothing unless a reader can tell which version, which documents, which optional rules, and which departures; the same holds for KADS itself, whose versions are numbered so that a project can pin one.

**8.1** *Claiming conformance* (maintainer). A project claiming conformance MUST declare, in the form that [conformance](conformance.md) describes: (a) the KADS version; (b) the covered corpus; (c) the profiles applied; (d) its local exceptions; (e) a maintainer or review route for the corpus, and the conditions that trigger review, such as a release, incident, new evidence, or changed dependency.

**8.2** *Local rules and citations* (maintainer; whoever cites a clause). (a) Project extensions MUST be identified as local rules. (b) A reference to a clause SHOULD name the KADS version it refers to, for example "KADS 0.9.0, clause 3.4", and, where the clause holds more than one requirement, SHOULD identify the requirement concerned, by its letter or by quoting it.

**8.3** *Versioning of KADS* (the editors of KADS). (a) KADS versions follow [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html) in the meaning of MAJOR, MINOR, and PATCH; what counts as breaking is defined in (c), not by that document. (b) A released version MUST be identifiable by an immutable reference, MUST NOT change after release, and MUST be described in the changelog. (c) A change that could make a conformant corpus nonconformant, or that changes the meaning of an existing clause, status, or relation, is a breaking change; retiring or relaxing a requirement is not. (d) While the major version is 0, a breaking change MUST increment the minor version and MUST be identified as breaking in the changelog; from 1.0.0 it MUST increment the major version. (e) New clauses, vocabulary, guidance, or templates increment the minor version. (f) Clarifications, corrections, and link repairs that do not change normative meaning increment the patch version. (g) Clause numbers MAY change between versions; a version that renumbers MUST say so in its changelog and map every old number to its new one.

**8.4** *Derived documents* (maintainer). (a) A document derived from KADS, such as an adoption note, a local extension, or an adapted template or guide, MUST pin the KADS version it derives from. (b) Where it declares a version of its own, that version MUST follow Semantic Versioning 2.0.0 with the classes of 8.3 (c) to (f) read for the document and the corpus it covers, material meaning in place of normative meaning and the document itself or its recorded history in place of the changelog; a version that has been released MUST NOT identify changed content, and a copy that carries a version not yet released MUST say so, by a pre-release identifier or by a statement beside the version. (c) A change of the pinned KADS version is at least a minor change to the document, and is breaking at least when a KADS version after the old pin and up to the new one identifies a breaking change, unless the document records that none of those changes applies to the covered corpus.

**8.5** *Review record* (reviewer for the record; maintainer for keeping it with the adoption note). A project MUST record its review of a conformance claim as described in [conformance](conformance.md), referencing clauses by identifier where an exception or unresolved finding applies.

**8.6** *Changing KADS* (maintainer for the project's copy; whoever finds the problem for the proposal). (a) A project that includes a copy of KADS SHOULD NOT alter that copy, beyond adding a proposal file for its editors by the route KADS names, and provided the version the project declares stays a released one; a local departure is recorded in the project's own corpus as an exception or as a local rule. (b) Where a rule of KADS appears wrong, unclear, or missing, the project SHOULD send a change proposal with its evidence to the editors of KADS.

## Terms

Roles:

- **Author:** whoever writes or changes a document or record, whether a person or an automated agent.
- **Maintainer:** whoever is responsible for a corpus as a whole: its entry point, its adoption note, and its review route. The rules sometimes say "project" for the same role.
- **Reviewer:** whoever assesses a document, or a claim that a corpus follows KADS.
- **Author of record:** the accountable person or role who takes responsibility for a document's content, whoever or whatever drafted it.

Things:

- **Corpus:** the body of documentation covered by a project's adoption statement.
- **Entry point:** the document from which a reader is expected to start, such as a README or an index page.
- **Scope:** the version, environment, audience, period, or other condition under which a statement, record, or canonical home applies.
- **Subject:** a distinct matter that a corpus describes within a scope, such as a procedure, a configuration value, an interface, a decision, a finding, or a subsystem. The subject, the knowledge maintained about it, and the document, table, or sentence that represents that knowledge are three different things; a representation is a subject only when knowledge is maintained about it. A subject is independently maintained when its authoritative description can be changed, reviewed, and dated as a unit, without that change being part of a change to another subject's description. Whether other descriptions must then be reviewed is a matter of derived views (2.2) and review triggers (8.1), not of identity.
- **Canonical home:** the maintained location authoritative for a subject in a stated scope. It can be a page, section, table, diagram, or external source.
- **Tracked record:** a unit of maintained knowledge, such as a decision, finding, or question, given stable identity and explicit lifecycle metadata.
- **Profile:** an optional set of requirements added to the common core for a kind of work: the tracked-record profile (7.1) and the research-report profile (7.2). Profiles are not maturity levels.
- **Adoption note:** the statement by which a project declares the KADS version it follows, the corpus covered, the profiles applied, and its local mappings, exceptions, and review route. Its outline is in the [adoption guide](adoption-guide.md).
- **Namespace:** the boundary within which tracked-record IDs are unique, normally a project or named corpus.
- **Evidence:** content used to support or challenge a claim, interpreted with its provenance and limitations.
- **Artifact:** a resource produced or used in technical work, such as code, a configuration, a dataset, a run output, or a report.
- **Derived view:** a summary, excerpt, or transformation of information maintained elsewhere.
- **Material claim:** a claim whose error could change a reader's action, interpretation, or trust in a result. The adjective "material" has the same sense wherever the rules use it, as in material qualification or material limitation.
- **Agent-drafted:** a document or record is agent-drafted when an automated agent produced, or changed the meaning of, material content in it, including by selection or omission. A transformation that preserves material meaning does not by itself make content agent-drafted. When it is unclear whether an agent shaped the meaning, the content is treated as agent-drafted.

## About this specification

- **Version:** 0.9.0. The canonical value is the content of [`VERSION`](../VERSION).
- **Status:** released as the tag `v0.9.0`; a copy that differs from that tag is a draft of a later version. Before 1.0, requirements can still change between minor versions; the [changelog](../CHANGELOG.md) marks each breaking change and gives migration steps.
- **License:** [CC BY 4.0](../LICENSE).
- **Why the rules are what they are:** the [knowledge model](knowledge-model.md) and the [design rationale](foundations.md) explain the ideas; the [decision records](../decisions/README.md) hold what was considered, accepted, and rejected. How rules are added and removed is in [Contributing](../CONTRIBUTING.md).
