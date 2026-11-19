# ADR-003  -  Recommend mechanical freshness checks without requiring tooling

**Type:** decision  
**Status:** proposed  
**Updated:** 2026-10-02

*Note added 2026-10-06: the recommendation this record proposed became clause 3.6.4 in 0.5.0 and clause 2.6 in 0.8.0, and in 0.9.0 it left the specification for the [artifact guide](../artifact-guide.md), as recorded in [J-034](../../decisions/necessity-review/README.md). The record's status is still proposed because only the maintainer changes it.*

## Proposed decision and scope

KADS should recommend, at SHOULD strength, that a project which already generates views or repeats volatile figures verify their freshness mechanically where practical, and prefer generating or linking a volatile figure to copying it by hand (specification clause 3.6.4). Conformance continues to require no tooling.

## Context

Since 0.2.0 the standard has held that it must work through reading and review alone, and that tool output cannot establish sound reasoning. [Adoption feedback](../reviews/2026-10-02-adoption-feedback.md) reported hand-maintained summary figures going stale several times within a day. Clause 3.2.2 already obliges authors to review affected summaries or label them as snapshots, but a review cycle measured in days cannot keep up with a figure that changes with every run.

## Alternatives and rationale

- Keep the no-tooling stance unqualified: consistent, but leaves a known failure with only a rule that is routinely broken in practice.
- Require a freshness check for every derived view: would make tooling a condition of conformance and exclude projects with no generation pipeline.
- Recommend a mechanical check only where a project already generates content and a check is practical: addresses the failure where it occurs and costs nothing elsewhere. This is the proposed approach.

A freshness check is mechanical in the same sense as a link check. It can show that a copy matches its source. It cannot show that the source is right.

## Consequences

The phrase "no tooling required" stays true for conformance but is no longer the whole of the standard's advice. Reviewers gain a question to ask of projects with generated views. Projects without generation are unaffected and continue to rely on clause 3.2.2.

## Authority, implementation, and review

Proposed on 2026-10-02 by the KADS authors. Drafted by an automated agent. The repository maintainer is the author of record (clause 3.3.4); what the maintainer reviewed, and when, is not recorded. Maintainer ratification and an effective acceptance date remain unrecorded. Clause 3.6.4, the [artifact guide](../artifact-guide.md), and the [design rationale](../foundations.md) implement the proposal in the 0.5.0 draft.

Revisit if adopters read the recommendation as a tooling mandate, or if a second adopter reports that the SHOULD is too weak to prevent drift. No earlier ADR is superseded.
