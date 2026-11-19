# Templates

This directory holds optional outlines for common kinds of document and record written under KADS, a documentation standard. Each outline is a list of prompts to answer, not a form to fill. It is for authors who want a starting structure. Outlines are advice; the rules are in the [specification](../docs/specification.md).

These are optional outlines, not mandatory forms. Placeholders are written between escaped angle brackets so that they stay visible when the file is rendered; replace each one, brackets included. Copy the smallest useful one into the consuming project's documentation. Replace placeholders, remove instructions and irrelevant sections, and fix links from the destination path. Do not copy example IDs or invent values to fill a field.

## Ordinary documents

| Outline | Use |
|---|---|
| [Technical document](technical-document.md) | Explanation, procedure, reference, or design documentation |
| [Research report](research-report.md) | A complete investigation in one page, without requiring IDs |

## Tracked records

Use these only when adopting the tracked-record profile. Allocate an unused ID in the project's namespace. The heading supplies the ID and title; visible labels supply type, status, and updated date. Front matter is an alternative, not a second required copy.

| Outline | Use |
|---|---|
| [Conclusion](conclusion.md) | Bounded finding |
| [Decision](decision.md) | Proposed or authorized choice, including an architecture decision record under its existing identity |
| [Investigation](investigation.md) | Question, method, analysis, and result |
| [Test](test.md) | Procedure and identified executions |
| [Evidence](evidence.md) | Source artifact with provenance and assessment |
| [Question](question.md) | An unresolved issue requiring follow-up |

An ADR filename can be used without adopting the tracked-record profile for every document. If that profile applies, map its identity and fields as described in the [decision guide](../docs/decision-guide.md).

## Asking for KADS to change

[Change proposal](change-proposal.md) is the outline for asking the editors of KADS to change a rule, guide, or outline, with the evidence behind the request. It is written as a new file for the [proposals](../proposals/README.md) directory of KADS; the evidence stays in your own repository.

## Optional artifact aids

[Artifact entry](artifact.md) and [bundle manifest](artifact-bundle.md) help explain selected resources in their native homes. They do not impose a universal artifact type or an entry per file. Reuse existing descriptions when sufficient.

`updated` means the last substantive record edit. Record collection, execution, effective, and verification dates separately when relevant. “Unknown” is appropriate for missing historical provenance; it is not a substitute for information an author can establish.

Use labeled links for material relationships. Replace instructions such as “Link supporting analysis” with an actual resolving link; do not leave a nonexistent placeholder target. Review the result with the [manual checklist](../docs/conformance.md).
