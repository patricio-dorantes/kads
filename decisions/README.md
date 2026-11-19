# Decision records of KADS

This directory holds the records of how KADS's own rules were decided: what was proposed, what objections were raised, what was accepted, rejected, or deferred, and what would reopen each question. Read them when you want to know why a rule exists or why something is absent. They are history, not rules; the rules are in the [specification](../docs/specification.md). A clause number in a record is the number in the version the record names; the changelog of a later version maps it.

| Evaluation | What it examined | Result |
|---|---|---|
| [Standards evaluation](standards/README.md) | 31 principles from external documentation standards | Version 0.6.0 |
| [Decision and readiness assurance](assurance/README.md) | Whether KADS should carry rules for consequential engineering decisions | Version 0.7.0; a profile was deferred |
| [Self-explanatory documents](self-explanation/README.md) | Whether every document should state its purpose and scope, explicit actors in rules, and mnemonic identifiers | Version 0.8.0 |
| [Necessity and placement review](necessity-review/README.md) | Why each unit of the specification is there; what left it and where it went | Version 0.9.0 |
| [Version semantics for derived documents](version-semantics/README.md) | What MAJOR, MINOR, and PATCH mean on a document derived from KADS | Version 0.9.0, clause 8.4 |
| [Foundational consistency review](foundation-review/README.md) | Whether KADS states its objective, whether 0.9.0 lost a guarantee, and whether KADS survives a skeptical reader | Version 0.9.0; clause 3.1 (d) restored |

Earlier design choices are recorded as architecture decision records in [`docs/adr/`](../docs/adr/README.md), and feedback from projects using KADS in [`docs/reviews/`](../docs/reviews/README.md). For rules admitted before version 0.6.0, no record of the alternatives considered exists beyond the three ADRs above, which cover parts of clauses 3.6 and 1.3 and the removed 2.6; the [changelog](../CHANGELOG.md) says what each version added and the [evaluation of the standard](../docs/standard-evaluation.md) gives the cases they were tested against. That gap is stated here so that no reader searches for a record that was never written.

Records are identified `J-001` onward. `J` is the older single-letter prefix for an investigation; identifiers never change, so these keep it.
