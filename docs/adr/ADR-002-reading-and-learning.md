# ADR-002  -  Separate reader tasks from the evidence path

**Type:** decision  
**Status:** proposed  
**Updated:** 2026-10-02

*Note added 2026-10-06: "evidence path" is no longer a defined term of the specification; the path it names is described in the [design rationale](../foundations.md#the-objective). The record's status is still proposed because only the maintainer changes it.*

## Proposed decision and scope

KADS should treat the evidence path, Index → What → Why → How → Sources, as an aid for inspecting claims (defined in specification section 2). Authors should separately choose the reader's task: learn, operate, compare, decide, or audit. Learning support and context-specific terminology belong where they help that task; they are not mandatory sections in every document.

## Context

Navigable knowledge and learnable practice serve different reader needs, as examined in the [evaluation of the standard](../standard-evaluation.md). An experienced reviewer can follow links while a newcomer still lacks prerequisites or examples. A single word such as “verified” can also conceal different kinds of evidence in an operator's log and an executive scorecard.

## Alternatives and rationale

- Use one evidence path as the entire curriculum: easy to standardize, but source order does not necessarily teach a task.
- Require learning objectives, exercises, and a glossary on every page: provides visible teaching structure at the cost of cluttering references and emergency procedures.
- Provide task-specific routes, examples, and local criteria only where useful: supports both novice understanding and expert retrieval. This is the proposed approach.

The philosophical lens motivates checking meaning in actual use, but does not justify abandoning shared vocabulary. Stable local criteria and contextual explanations complement each other.

## Consequences

Readers gain routes suited to their needs, while authors must identify consequential ambiguity and assumed knowledge. A second entry route should reuse authoritative detail rather than create a competing procedure. The usefulness of these teaching choices still needs a real reader trial.

## Authority, implementation, and review

Proposed on 2026-10-02 by the KADS authors. Drafted by an automated agent. The repository maintainer is the author of record (clause 3.3.4); what the maintainer reviewed, and when, is not recorded. Maintainer ratification and an effective acceptance date remain unrecorded. The [learning and terminology guide](../learning-and-terminology.md) and additions to the authoring and evaluation guidance implement this proposal in the draft.

Revisit after a newcomer and an experienced practitioner attempt the same documentation task, or if added teaching scaffolding obscures operational instructions. No earlier ADR is superseded.
