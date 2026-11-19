# ADR-001  -  Keep native identities and artifact locations

**Type:** decision  
**Status:** proposed  
**Updated:** 2026-10-02

## Proposed decision and scope

KADS should adopt existing corpora through documented identity and terminology mappings. An ADR remains one decision; a technical artifact stays in its canonical code, registry, results, or external location. Optional catalogs and manifests explain roles and provenance without imposing a new artifact type or relocating every resource.

## Context

Existing naming conventions can overlap KADS defaults. Method definitions and executions need distinct context, generated views have separate editable sources, and scripts, policies, run outputs, and reports serve different roles. A universal directory or prefix scheme would create collisions and duplicate maintenance.

## Alternatives and rationale

- Require KADS prefixes and a central artifact folder: superficially uniform, but breaks established links, ownership, tooling, and native version identities.
- Leave all resources implicit: minimal effort, but readers cannot reliably distinguish intended configuration, historical output, and current generated views.
- Keep native homes with selective catalogs and explicit mappings: preserves continuity while making role, version, interpretation, and authority visible. This is the proposed approach.

The 0.3.0 authoring review (not preserved; see the evidence gap noted in the [evaluation of the standard](../standard-evaluation.md)) challenged treating artifact as another mutually exclusive object type. That objection is accepted: a Terraform file can simultaneously be implementation and evidence of intent. It cannot alone prove deployed state.

## Consequences

Projects must document meaningful mapping and source boundaries instead of relying on filename letters. Catalog entries and manifests cost maintenance, so they should be limited to resources needing discovery or independent interpretation. Automated cross-project graph processing would require a future mapping contract; this draft does not promise one.

## Authority, implementation, and review

Proposed on 2026-10-02 by the KADS authors. Drafted by an automated agent. The repository maintainer is the author of record (clause 3.3.4); what the maintainer reviewed, and when, is not recorded. Formal adoption authority is the repository maintainer; an acceptance date has not been established. The draft [artifact guide](../artifact-guide.md), [adoption guide](../adoption-guide.md), and [nomenclature](../../registry/nomenclature.md) implement the proposal for review.

Revisit if an adoption cannot resolve native identities reliably, or a catalog causes more drift than it prevents. No earlier ADR is superseded.
