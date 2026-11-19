# Architecture decision records for KADS

This directory holds the architecture decision records of KADS itself: short records of consequential choices about how the standard is structured and maintained. Read them to learn why KADS is built the way it is. They are history, not rules; the rules are in the [specification](../specification.md).

This space records consequential choices about the structure and maintenance of the standard. These records belong to the `kads-design` namespace. `ADR` maps to KADS's decision type; no second decision identifier is allocated. Existing general decisions can keep their own naming convention.

| Record | Subject |
|---|---|
| [ADR-001](ADR-001-native-artifact-homes.md) | Keep native identities and artifact locations |
| [ADR-002](ADR-002-reading-and-learning.md) | Separate reader tasks from the evidence path |
| [ADR-003](ADR-003-mechanical-freshness-checks.md) | Recommend mechanical freshness checks without requiring tooling |

Read each record for its current status, rationale, alternatives, and adoption conditions. The initial records are proposals implemented in this draft for review, not claims of maintainer ratification. The repository maintainer reviews them through the normal contribution process.

For project ADRs, use the [decision guide](../decision-guide.md) and [decision outline](../../templates/decision.md) in the consuming repository. Keep prior decisions when superseded, with links in both directions. Proposed, accepted, and implemented mean different things.
