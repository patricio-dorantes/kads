# Presenting technical research

This guide explains how to present the results of an investigation, experiment, benchmark, or review of sources so that a reader can judge both the answer and how well it is supported. It is for anyone reporting technical research. The rules it helps with are in profile 7.2 of the [specification](specification.md).

A report should let a reader assess both the result and the strength of its support. It can be one page or a collection of linked records. Use the [research-report template](../templates/research-report.md) for a single page and split material only when reuse or maintenance warrants it.

## Lead with the bounded answer

State the question and the current answer, including an inconclusive result if that is what the work supports. Say why the answer matters to whoever will act on it; a reader weighs a result differently when they know what turns on it. Identify the environment, versions, population, time, or source set that bounds the answer. Explain its practical implication without broadening the claim.

“An archived transcript reports rejection of this request” is narrower than “the feature is unsupported today.” The second statement needs additional evidence. Negative results in particular belong to the interface, version, credentials, and location that produced them (clause 7.2.6); the [evaluation guide](evaluation-guide.md#classify-a-negative-observation-before-generalizing) works through a case.

## Describe what was actually done

For an experiment or benchmark, describe inputs, environment, versions, procedure, measurements, and assessment criteria. Record run identifiers or timestamps when available. Link to preserved outputs and disclose missing context. The [FAIR principles](https://doi.org/10.1038/sdata.2016.18) and the [ACM artifact badging](https://www.acm.org/publications/policies/artifact-review-and-badging-current) levels of available, functional, reusable, and reproduced give a shared vocabulary for how far an artifact supports reproduction; use the level that was actually reached.

For a source review, describe the research question, how sources were selected, applicable versions or dates, exclusions, and conflicting accounts. The [PRISMA 2020](https://doi.org/10.1136/bmj.n71) reporting items for systematic reviews are a useful checklist for what to disclose about search scope and exclusions, even when the review is informal. Cite specific passages where practical. Distinguish an author's assertion from independent verification.

For a design analysis, state assumptions, constraints, alternatives, and the reasoning method. Mark predictions as predictions and identify evidence that could challenge them. Not every investigation requires an executable test.

## Separate the reasoning steps

1. **Observation:** what the material directly records.
2. **Analysis:** how it bears on the question, including assumptions and alternative explanations.
3. **Conclusion:** what follows within the studied scope.
4. **Recommendation or decision:** any proposed or authorized action, including objectives and tradeoffs beyond the evidence.

Keep a short relevance explanation beside important citations. A long source list alone does not show which source supports which claim.

These four steps are a compact form of Toulmin's argument model (*The Uses of Argument*, 2003): observations are the grounds, analysis supplies the warrant and any rebuttal, the conclusion is the qualified claim. Naming the steps this way helps a reviewer ask which one is weak.

## Assess tests consistently

Keep these separate:

- Execution: completed, blocked, or not run.
- Observed behavior: what happened, including command exit code when available.
- Assessment: passed, failed, or inconclusive against a stated criterion.

A rejected invalid request can pass a test of input validation. The same rejection can fail a criterion requiring successful provisioning. For retrospective analysis, disclose that the criterion was reconstructed after the observation. Do not relabel the historical result to fit a desired conclusion.

Use the [artifact guide](artifact-guide.md) to distinguish the historical method and effective parameter overrides from the current script and its defaults. An optional [bundle manifest](../templates/artifact-bundle.md) can keep that context together.

For repeated runs, preserve each run's conditions and output; label the run or aggregate being summarized. A reusable test procedure can remain in one record with dated run sections. Split runs into separate records only when they need independent reference or lifecycle.

## Quantitative findings

Make units, sample size, denominator, measurement interval, source, and aggregation clear. Explain material exclusions and missing values. Distinguish measured values from estimates and uncertainty from variability where it matters. Do not report precision the measurement cannot support.

For comparative results, disclose differences in conditions that could explain the result. Explain whether results are descriptive for the observed sample or support a broader inference. A chart or percentage cannot substitute for that reasoning.

For requirements, rankings, and scorecards, consult the [evaluation guide](evaluation-guide.md). Show the basis of scores, excluded or inherited values, and the assessed denominator; preserve the difference between execution and criterion satisfaction.

## Limitations and contradictory evidence

Record what was not tested or inspected, which sources are unavailable, and what could change the answer. Preserve negative and conflicting results relevant to the question. Explain why a conclusion remains plausible, becomes provisional, or needs revision.

Prefer an uncertainty statement tied to evidence over an unexplained confidence score. When more work is needed, identify the next observation most likely to resolve the question.

## Challenge the report

Before accepting the result, ask:

- Could another explanation produce the same observations?
- Have we inferred a system state that was never checked?
- Does the conclusion extend beyond the environment, time, or sample?
- Have source assertions been presented as independently verified facts?
- Would omitted or contrary evidence change the answer?
- Can a reader tell what remains unknown and what would resolve it?

The [illustrative research report](../examples/research-report/README.md) demonstrates bounded reasoning and clearly distinguishes fictional material from collected evidence.
