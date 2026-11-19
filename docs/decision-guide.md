# Decisions and architecture decision records

This guide explains how to record a decision so that a later reader can tell what was chosen, by whose authority, and why, and how a decision differs from a finding or a recommendation. It is for anyone recording a technical or architectural choice. It is advice; the rules are in the [specification](specification.md).

An architecture decision record (ADR) records a consequential choice about structure, interfaces, dependencies, quality attributes, or construction. It is a specialization of a decision, not a second copy of one. This use follows Michael Nygard's [original ADR description](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions), which emphasizes context, decision, status, consequences, and preserved replacements. [MADR](https://adr.github.io/madr/) is a widely used Markdown template with the same core; a project already using it can keep it and map its fields. "Architecturally significant" is used in the sense of [ISO/IEC/IEEE 42010](https://www.iso.org/standard/74393.html): a decision that shapes structure, interfaces, or quality attributes and would be costly to reverse.

## Finding, recommendation, decision, implementation

| Kind | Question | What establishes it |
|---|---|---|
| Finding | What does the evidence support? | Scoped observations and reasoning |
| Recommendation | What action seems preferable? | Findings plus objectives, constraints, and alternatives |
| Decision / ADR | What choice is proposed or authorized, and by whom? | Proposal context; acceptance requires identified authority and effective scope |
| Implementation | What has been built or changed? | Specific code, configuration, deployment, or other implementation reference |

An accepted ADR does not prove that the choice is implemented, deployed, or validated. Record those states separately when relevant. A benchmark result does not authorize provider selection. A plan can propose a change without recording an approved architecture choice.

## What belongs in an ADR

Use an ADR when later readers need to understand a significant choice and its tradeoffs. Include the decision or proposal, context and scope, alternatives, rationale, consequences, authority, and revisit conditions. Link requirements, constraints, and findings rather than reproducing their full history. Record dissent or an unresolved assumption if it could change the choice.

For example, measurements might support a latency estimate for a tested path. A recommendation to locate two services together also depends on workload needs, cost, reliability, and other constraints. The resulting placement ADR names who authorized that tradeoff. Do not turn measured latency into an automatic deployment decision.

A small editorial correction does not need an ADR. A new artifact format or change in accepted sources may merit one if it affects how a whole corpus is maintained.

## Location and identity

Use an existing decision directory or a path such as `docs/adr/`. KADS's own [ADR space](adr/README.md) records design proposals for the standard. Consuming projects keep their own ADRs outside the KADS submodule.

Keep an established `ADR-001`, `DEC-001`, or other identifier. Do not assign two identities to the same decision merely to adopt KADS. A familiar filename alone does not require declaring the whole repository conformant to the tracked-record profile. If that profile is adopted for ADRs, document the prefix/status mapping and meet its minimum information requirements.

Use the [decision outline](../templates/decision.md) for ordinary and architectural decisions alike; an ADR is a decision under its existing identity. Lifecycle rules come from the specification and nomenclature registry. For decisions whose effects reach beyond the deciding team or cannot be undone, see [recording decisions in proportion to consequence](consequence-guide.md).

## Historical and changed decisions

When reconstructing an old decision, distinguish its original date from the recording date, identify the supporting record, and mark unknown authority or rationale. Observed implementation alone does not establish who approved it or why. Use a local `historical-unconfirmed` status if needed and document its meaning.

Correct wording in place without changing historical meaning. When the choice changes, preserve the old context and consequences, add a new decision, and link supersession both ways. If only part of a decision changes, identify the replaced scope and what remains applicable. An implementation link should identify the relevant revision; a moving branch is insufficient to establish a historical implementation.
