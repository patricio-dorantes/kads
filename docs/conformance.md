# Review and conformance

This page says how to check a document or a collection of documents against KADS, and what a project states in order to claim that it follows KADS. It is for reviewers, and for maintainers making that claim. Together with the [specification](specification.md) it is one of the two documents that state rules.

This document is normative. KADS uses a common core with profiles chosen by the work being documented. Profiles are not maturity levels: adding metadata does not make documentation more trustworthy.

Clause numbers below refer to the [specification](specification.md). Reference them in exceptions, review records, and discussion so that a finding can be traced to the requirement it concerns. Each clause is restated in plain words, with examples, in the [clause guide](clause-guide.md).

## Select the scope

Every adoption uses the common requirements under propositions 1 to 6 and 8 of the [specification](specification.md). Add the tracked-record profile (7.1) for independently managed records. Add the research-report profile (7.2) for technical research findings. A project may apply different profiles to different parts of its corpus.

A conformance claim MUST identify (clause 8.1):

- KADS version and, when available, pinned commit or tag;
- covered paths or documents;
- applicable profiles;
- local extensions and exceptions, each naming the affected clause;
- maintainer or review route and review triggers.

An adoption note MAY live in an existing documentation index. A separate policy file is not required. The adoption note is a derived document and follows clause 8.4: it pins the KADS version it follows and, if it declares a version of its own, that version follows 8.4 (b).

## Manual review

Review the artifact as a reader, and follow the links needed to assess its material claims. Use the applicable questions below; no validation command is required. The optional [link check](../tools/check-links.sh) covers only the mechanical part of clause 6.3 and, with `--orphans`, of clause 2.3. It establishes nothing else.

### Common core

| Question | Clauses |
|---|---|
| Is the purpose, audience where relevant, and technical scope clear? | 1.2 |
| Does the document open by saying what it is, what it answers, and what it applies to, and keep notes about itself for the end? | 1.1 |
| Can the reader find current guidance and distinguish it from history? | 1.2, 4.2 |
| Does superseded or withdrawn content say so where a reader opening it directly will see it, and point to what replaced it, or is a legacy archive identified at the entry point? | 4.1 |
| Does each maintained subject have a clear canonical home? | 2.1 |
| Do summaries preserve qualifications and link to their sources? | 2.2 |
| Do material claims have an identifiable basis, with unknowns and contradictions exposed? | 3.1, 3.2, 3.3 |
| Where a material answer rests on reasoning or a method kept elsewhere, can the reader reach it, or is it stated that it was not recorded? | 3.1 |
| Are observation, inference, assumption, hypothesis, and choice distinguishable, and do summaries state claims no more firmly than their sources? | 3.2, 2.2 |
| Does each statement that content was verified, reviewed, tested, or executed say or link to what was checked, against what, and when, or say what is not recorded? | 3.4 |
| Are sources that were cited without being inspected identified as such? | 3.1 |
| Where an agent drafted the content, is there an author of record, is generated content distinguished from verified content, and is review by automated agents identified as such? | 3.5 |
| Do changing facts and quantitative results have the necessary scope, dates, units, and sources? | 4.3, 6.1 |
| Were replaced findings and decisions preserved with an explanation, and were evidence changes or removals disclosed? | 4.2, 5.1 |
| Does each preserved run have an identifier that cannot collide with another run, in a location a later run cannot overwrite? | 5.2 |
| Are redactions, corrections, and removals recorded where a reader of the affected evidence will find them? | 5.1 |
| Can a procedure be followed and its completion recognized? | 6.1 |
| Is each effect that cannot be undone stated in or immediately before the step that causes it, with recovery where one exists? | 6.2 |
| Can each maintained document be reached by links from the entry point? | 2.3 |
| Do internal links work, and are source access limitations disclosed? | 6.3 |
| Is there a review route with its triggers, and were affected summaries considered? | 8.1, 2.2 |
| Are consequential terms and evaluation criteria clear in their local context, with no such term carrying two unexplained meanings in one scope? | 1.4 |
| For artifacts supporting claims, are location, version/scope, role, and limits discoverable? | 3.6 |
| Are generated sources and transformations identifiable, and intent separate from observed state? | 3.6, 2.4 |
| Where the method and conditions under which a fact was established differ from current ones in a way that matters, are they identified? | 4.3 |
| Where generated views or copied figures exist, were summaries reviewed when their sources changed, or dated as snapshots? | 2.2 |

### Tracked records, when adopted

| Question | Clauses |
|---|---|
| Are the required identity and lifecycle fields present, and is the edit date present or supplied by version history? | 7.1.1 |
| Are IDs unique within the declared namespace and resolvable across namespaces? | 7.1.2 |
| Are relationship meanings accurate and targets reachable? | 7.1.3 |
| Is lifecycle distinct from confidence, evidence quality, and test outcome? | 7.1.5 |
| Can readers navigate between replaced records and their replacements? | 7.1.4 |
| Does an accepted decision identify its authority and effective date, and its reasons or that they are not recorded, with implementation and validation separately established if claimed? | 7.1.5 |
| Do local mappings preserve existing identities, including ADRs, without duplicate records? | 7.1.2 |

### Research reports, when adopted

| Question | Clauses |
|---|---|
| Are question, scope, method, results, reasoning, and limitations discoverable? | 7.2.1 |
| Does each material conclusion follow from the evidence within its stated scope? | 7.2.1 |
| Are negative, conflicting, and inconclusive results represented fairly? | 7.2.1 |
| Are provenance gaps and barriers to reproduction explicit? | 7.2.2 |
| Are test criteria distinguished from command exit codes and execution state? | 7.2.3 |
| Is it clear which work was actually performed and which is proposed? | 7.2.2, 3.3 |
| For scorecards, are scale, weights, denominator, exclusions, and criterion changes explicit where material? | 7.2.4 |
| Are inherited values and source assertions distinguishable from direct observations? | 7.2.5 |
| Are unevaluated, blocked, failed, and not-applicable cases distinguished where present? | 7.2.4 |
| Are negative results, including statements that no failure was observed, scoped to the interface, version, credentials, location, and period inspected, and was a conclusion revised with attribution when another method gave a different result? | 7.2.6, 4.2 |

### Adoption and versioning

| Question | Clauses |
|---|---|
| Does the adoption note declare KADS version, corpus, profiles, exceptions, and review route? | 8.1 |
| Do the adoption note and other derived documents pin the KADS version they follow, and does any version they declare follow the classes of 8.3 read for the document? | 8.4 |
| Is the review of the claim recorded with scope, date, reviewer, and unresolved items by clause? | 8.5 |
| Is the project's copy of KADS unaltered at the declared version, with local departures recorded as exceptions or local rules? | 8.6 |

## Optional application checks

For instructional content, ask a reader to apply the idea to a boundary case if that review is practical. For operational content, consider whether the reader can choose the correct branch, recognize completion, and find recovery guidance. Do not claim a walkthrough unless it occurred.

The [learning guide](learning-and-terminology.md) includes cases where reasonable use of a rule differs from overapplication. An unresolved conflict with local instructions should use the project's review route; a departure from adopted requirements belongs in the declared exceptions.

## Review outcome

For a conformance claim, the project MUST record the review scope, date, reviewer or reviewing process, and unresolved exceptions (clause 8.5). The record is a statement that content was reviewed, so clause 3.4 applies: it names the version reviewed, which for a corpus under version control is the revision or tag. A pull request, report note, or review log is sufficient. A self-review MAY be used if identified as such; KADS does not itself require independent certification. A review performed only by automated agents, whether the drafting agent or others, MUST be identified as automated review (clause 3.5).

An exception MUST record the affected clause identifier and scope, reason, consequence, responsible role, and an expiry date or a condition for review. This is the only definition of an exception in KADS; the adoption-note outline and the guides refer to it. A list or summary of exceptions MUST show each exception's expiry date or condition for review. An exception whose expiry date has passed with no recorded renewal has lapsed, which establishes neither that the departure has ended nor that it is still accepted. Where the clause holds more than one requirement, the exception SHOULD name the one concerned by its letter or by quoting it (clause 8.2). Claims MUST disclose exceptions and MUST NOT present partial review as full conformance. Accepting an exception does not lift clauses 3.2 and 3.3: evidence that is unavailable or unknown stays visibly limited.

Templates are not completed records, and illustrative examples are not project evidence. Merely including this repository as a submodule does not establish conformance.
