# Requirements, evaluations, and operational findings

This guide explains how to present requirements, scores, rankings, and readiness assessments so that a reader can see what a score means and what it leaves out. It is for authors of evaluations and of operational documentation. It is advice; the rules are in the [specification](specification.md).

Use this guidance when research feeds a scorecard, compatibility matrix, readiness assessment, or technical recommendation. It extends the [research guide](research-guide.md) without requiring another profile or a new ID for each row.

## Keep the reasoning chain visible

A requirement states a need. Its acceptance criterion states how satisfaction will be judged. A method produces observations. An assessment interprets those observations against the criterion. A decision selects an action under objectives and constraints. [ISO/IEC/IEEE 29148](https://www.iso.org/standard/72089.html) treats requirement, verification method, and verification result as distinct items for the same reason. Where a requirement's wording is itself disputed, the [EARS](https://doi.org/10.1109/RE.2009.9) patterns ("When <trigger>, the <system> shall <response>") remove most of the ambiguity.

These roles can occupy one table, but they should not collapse into one score. Link the requirement and criterion version, method or run, assessment rationale, and any resulting decision. One run may cover several requirements; one requirement may need several kinds of evidence.

Keep existing requirement IDs and row anchors. KADS prefixes are defaults for new tracked records, not a universal interpretation of letters in an existing corpus. A prefix that identifies a local requirement category does not automatically take on the meaning of a KADS record type.

## Define evaluation terms where they are used

Terms such as “available,” “managed,” “private,” “compatible,” and “verified” need context when they determine scores or actions. State the criterion, one qualifying example, and a boundary case if readers could reasonably disagree.

For example, “available” might mean listed in a catalog, enabled for an account, successfully provisioned in a region, or suitable for a workload. Those are different observations. A vendor term need not have identical semantics across providers. A regional result inherited from a general assessment is an assumption until its applicability is supported; show inherited and directly observed values distinctly.

Edition and tier names are a common trap. Suppose a requirement names a database vendor's "Enterprise Edition" licence, and a hosting provider sells a managed service tier called "Enterprise Plus" for the same database engine. The shared adjective invites scoring the tier as satisfying the requirement. They are different things: one is the engine vendor's licensed feature set, the other is the provider's availability and performance tier, which may run a different edition entirely. Identify each term by vendor and product, state which one the requirement means, and record the evidence that the offered product includes it.

## Explain the score before presenting the ranking

Document the scale anchors, weights, exclusions, denominator, and intended interpretation. Distinguish unevaluated, blocked, failed, and not applicable. Explain how each affects aggregation. Do not silently translate unknown into zero or treat it as success by omitting it from view.

“Coverage of evaluated requirements” and “fraction of the catalog evaluated” answer different questions; show both when an incomplete assessment could mislead. Separate critical unmet constraints from an average score. A weighted average is a chosen assessment convention, not automatically a probability, readiness guarantee, or authority to choose a supplier.

For important rankings, consider whether plausible changes in weights, missing results, or scope could reverse the recommendation. A short sensitivity explanation can be enough; no new calculation tool is required. Mark results based on historical documents separately from contemporary tests.

## Classify a negative observation before generalizing

A failed request might reflect product behavior, account entitlement, quota, regional stock, permissions, runner connectivity, a defective script, or incomplete inputs. Preserve the observation and describe the attribution evidence. Use “cause unresolved” when competing explanations remain.

CLI or catalog searches can support “not found in the inspected interface/version.” They do not alone prove that no feature or commercial offering exists (clause 7.2.6). Boundary case: a listing command issued through one version of a provider's API returns nothing for a region, and the report concludes the service is unavailable there. A later attempt through a different API surface provisions the service in that region. The first observation was accurate for the interface it used; the conclusion was too broad. Record the correction as a change of method, keep the original observation, and restate the earlier finding as “not reachable through that interface and version.”

A support ticket proves correspondence; an automated acknowledgement is not a human resolution. A human reply is still an assertion. When support recommends a command, flag, or setting, treat that text as a claim to test, not as a verified procedure: the example may target another tool version or contain options the installed tool rejects. Record the reply as an attributed statement and the result of trying it as a separate observation. A completed test can still leave a requirement unassessed.

## Operational documentation

Runbooks should identify entry conditions, diagnostic branches, escalation or owner, recovery, and completion checks when relevant. Record cleanup outcomes and intentionally retained resources for consequential executions. Separate a budget ceiling, an estimate, and reconciled expenditure. A plan to clean up or stay within budget is not evidence that either happened.

A limitation or known issue should identify the affected scope, observed condition, consequence, workaround or next action, owner/review route, and closure evidence. A limitation can be a section or issue with a native ID; it need not become a new KADS object type.

## Worked boundary case

Suppose a compatibility report examines one file format but summarizes its finding as “all formats supported.” The conclusion exceeds the inspected scope. Name the format, relevant version, and cases examined; distinguish unexamined formats from failures.
