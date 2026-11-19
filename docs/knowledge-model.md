# Knowledge model

This page explains the ideas that the rules of KADS, a documentation standard, rest on: what counts as a unit of knowledge, the kinds of statement, when something needs an identifier, and what to do when a source changes. It is for readers who want to understand the rules and not only look one up. It is informative; the rules are in the [specification](specification.md).

A knowledge object is a coherent answer, explanation, procedure, finding, or decision. A document may contain several objects. Most do not need IDs. A tracked record is an object whose identity and lifecycle are managed explicitly.

## Two complementary choices

The [design rationale](foundations.md#the-objective) explains the two concerns the rules serve, things and statements, and the property that joins them: a material answer can be traversed to its basis.

First choose the reader's task: learn a concept, follow a procedure, look up a reference, understand a design, or assess research. Then decide whether any content needs independent tracking. Do not turn every reference page into an investigation or split every report into separate evidence files.

Examples:

- An installation guide can be one ordinary page with prerequisites, steps, and verification.
- A research report can contain question, method, results, interpretation, and limitations in one page.
- A decision referenced by several projects may merit its own stable record. An ADR specializes a decision without adding a second identity.
- Evidence reused by several investigations may merit a shared evidence record.

## Identity and scope

Canonicality applies within a declared scope. Instructions for version 1 and version 2 can both be authoritative if that scope is visible. Historical external sources remain their authors' assertions; a local synthesis is responsible for how they are interpreted.

Canonicality is a maintenance responsibility, not proof of truth. Two sources can disagree; the local synthesis explains the disagreement rather than suppressing it.

Paths and headings are usually sufficient addresses for ordinary documentation. Use a stable ID when references must survive moves or when lifecycle needs to be tracked independently. The [nomenclature](../registry/nomenclature.md) defines the record vocabulary and namespace rules.

Keep content together unless splitting it enables independent maintenance, reuse, provenance, or review. Being linked once does not by itself justify a new file or ID.

## Reasoning and relationships

- **Observation:** what was recorded or reported by an identified source. A direct observation establishes what happened under the conditions it was made; a source's report establishes what the source says, not that it is so.
- **Inference:** an interpretation drawn from observations and assumptions.
- **Assumption:** something taken as true without having been checked, stated so that it can be.
- **Hypothesis:** a proposed explanation or answer that has not yet been tested against evidence.
- **Conclusion:** an inference the author commits to as a bounded answer, with its support.
- **Recommendation:** a proposed action, resting on conclusions plus objectives and constraints.
- **Decision:** an authorized choice under stated objectives and constraints.

An assessment against a criterion, such as passed or failed, is an inference with a stated rule, and a source's assertion is an observation of what the source says; neither needs a kind of its own. This is the one list of statement kinds KADS uses; clause 3.2 names the ones that must stay distinguishable. They describe statements, not documents. A document is a view that may carry several of them: a report holds observations, inferences, and a conclusion; a runbook holds procedure steps and the assumptions behind them. Kinds of document, such as tutorial, how-to, reference, explanation, report, or decision record, are a separate axis, covered by the reader-need table in the [authoring guide](authoring-guide.md#match-the-document-to-its-purpose). Neither axis requires a label or metadata on ordinary documents. The failure to avoid is a chain in which an observation is interpreted, the interpretation becomes a hypothesis, and the hypothesis is restated as a conclusion, each step losing its standing until all four read as equally established (clause 2.2).

For example, an error transcript can show that a request returned a rejection. It may support an inference about validation. It does not alone establish all resulting resource state or universal product behavior.

### What a basis establishes

Clause 3.1 names what the basis of a material claim can be: code, an authoritative reference, an observation, a derivation, or an explicit assumption awaiting verification. These are not interchangeable, and a reader can tell which one a claim rests on only when the basis is identified for that claim. A reference, or a source's assertion, establishes what the source says. A direct observation establishes what happened under the conditions it was made, no more. A derivation establishes what follows from its inputs if they hold. An assumption establishes nothing yet; it is stated so that it can be checked. A test result is not a further kind of basis but a composite: something was executed, a behavior was observed, and the behavior was assessed against a criterion. "Passed" names the assessment, so where it affects interpretation or action the criterion behind it has to be discoverable (clause 1.4). The research-report profile keeps execution, observed behavior, and assessment apart (7.2.3) and a source's assertion apart from a direct observation (7.2.5). Outside that profile the core asks less: the basis of a material claim is identified (3.1), kinds of statement stay distinct where mixing them would mislead (3.2), and a statement that documentation content was verified, tested, or executed says what was checked, against what, and when, or that this is not recorded (3.4). The core does not require a claim that a system was tested to state what ran, what was observed, and against which criterion it was assessed; a corpus where that matters declares the research-report profile, and the gap is recorded in [J-036](../decisions/foundation-review/README.md#unresolved). One thing no page can show by itself is whether a cited source was opened; 3.1 (c) asks the author to say when it was not and states that silence proves nothing either way.

Not every basis is a preserved artifact. A claim can rest on a line of code, a passage, or a derivation that the reader can go and look at. Where a corpus does keep evidence, proposition 5 governs how it is kept; where a claim rests on an artifact, clause 3.6 asks for its location, version, role, and limits. Neither turns a cited reference into something that must be stored.

This separation parallels Toulmin's model of argument: grounds, warrant, qualified claim, and rebuttal (see [sources](sources.md)). KADS uses plainer names so that authors need no theory to apply it.

Write relationships from the current subject to its target:

> Supported by: [analysis of the illustrative fixture](../examples/research-report/README.md#analysis).

Links can point directly to code, a source passage, a dataset, or a record. There is no mandatory conclusion → investigation → test → evidence chain. A conclusion can cite evidence directly, and a source review may have no tests. See the [relationship vocabulary](../registry/relationships.md).

## Lifecycle is not certainty

A completed investigation can be inconclusive. An accepted decision can rely on uncertain estimates. Available evidence can be weak or contradicted. A command can fail while a test of error handling passes.

Use status for lifecycle. Explain evidence quality, uncertainty, and outcomes separately in prose. If using a confidence scale, define its basis locally; unexplained labels such as “high” add little information.

## Resources and criteria

Technical artifacts can serve several roles: a configuration describes intent, a run records observations, and a report interprets them. None automatically proves the others. Keep native versions and locations, and use a selective [artifact catalog or bundle](artifact-guide.md) when discovery and provenance need explanation.

A requirement and its criterion describe what is sought and how it will be assessed. A score applies a rubric to evidence; it is not a direct observation or an authorized choice. Existing requirement IDs and issue states can be mapped locally. See [evaluation guidance](evaluation-guide.md).

## Changes and their effects

A changed source creates a reason to review dependent content, not an automatic verdict that it is false. Follow known links and search for references to identify affected conclusions, instructions, decisions, and summaries. Record unresolved effects when review cannot finish.

Correct living guidance in place. Preserve materially replaced findings and decisions with explicit history. The maintainer decides the appropriate scope of review using the [specification](specification.md), not the number of links in a graph.
