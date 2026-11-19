# Adoption feedback on evidence handling and negative results

**Date received:** 2026-10-02  
**Source:** written feedback from a project applying KADS 0.4.x to a technical evaluation, supplied by the repository maintainer.  
**Reviewed version:** KADS 0.4.1  
**Authorship:** this note was drafted by an automated agent from the feedback text. The repository maintainer is the author of record (clause 3.3.4); what the maintainer reviewed, and when, is not recorded.

## What is and is not preserved

The feedback named the project's own record identifiers, a specific region, vendor products, and command-line tools. Those details are not reproduced here, following the contribution boundary. Each lesson is restated in general terms. The original wording remains with the maintainer and is not part of this repository. Statements below about what happened in the project are the project's assertions as relayed; KADS did not observe them.

## Lessons and dispositions

| # | Lesson as reported | Disposition | Where |
|---|---|---|---|
| 1 | Two runs were lost before the project adopted a per-run numbered location. KADS required preserving evidence but said nothing about run identity. | Adopted as a requirement | Clause 3.4.4; artifact guide; test and bundle outlines |
| 2 | A leaked secret was redacted in place with no visible marker at the evidence location. The disclosure rule existed but named no place for it. | Adopted as a requirement, with the adoption-note location as a recommendation | Clause 3.4.5; artifact guide; evidence and bundle outlines; adoption note outline |
| 3 | A conclusion of unavailability was replaced when a different interface reached the capability the first interface had not. The rule on criterion changes did not cover method changes. | Adopted as a requirement | Clause 5.7; evaluation guide boundary case; research guide |
| 4 | Hand-maintained summary figures went stale several times in one day. The project asked for a recommendation to check freshness mechanically. | Adopted as a recommendation, not a requirement | Clause 3.6.4; artifact guide; [ADR-003](../adr/ADR-003-mechanical-freshness-checks.md) |
| 5 | A provider's service tier was nearly scored as a database vendor's licensed edition because the names share a word. | Adopted as a worked example; the existing rule on evaluation terms already covers it | Evaluation guide; learning guide term table |
| 6 | A support reply recommended a command containing options the tool rejected. The existing text covered automated acknowledgements only. | Adopted as guidance | Evaluation guide; artifact guide role table |

## Departures from the feedback as written

- The feedback proposed using the project's own regional case as the boundary example for lesson 3. The example in the evaluation guide is a constructed case with the same shape, because the standard does not carry evaluated projects' identities.
- The feedback proposed that KADS "could require a redaction log location". The requirement adopted is that the disclosure sits where a reader of the evidence meets it. Naming a location in the adoption note is a SHOULD, since many corpora hold no evidence at all.
- For lesson 5 the vendor and product names were replaced with generic ones.

## Limits

This is one project's experience. It shows that the gaps exist and that the adopted wording would have addressed them in that project. It does not show how often other adopters meet the same problems, and no second adopter has reviewed the new clauses.
