# Technical artifacts and evidence bundles

This guide explains how to refer to code, configuration, datasets, run outputs, and similar resources when a document relies on them, so that a reader can tell what each one shows and what it does not. It is for authors whose claims rest on such resources. It is advice; the rules are in the [specification](specification.md).

An artifact is a resource produced or used in technical work: code, configuration, an API contract, schema, diagram source, dataset, build, plan, ticket export, log, or report. It can have several roles. Evidence is a role an artifact plays in support of a particular claim, not a property conferred by its file extension or storage directory.

## Identify the role before interpreting the resource

| Resource | Useful interpretation | What it does not establish alone |
|---|---|---|
| Terraform or Kubernetes source | Intended configuration at a revision | Actual deployed state or successful rollout |
| IAM policy file | Intended authorization rules | Effective permissions after all policies are combined |
| API contract or schema | Declared interface or data constraints | Runtime conformance |
| Container image or binary | A particular build, if identified by version/digest | Successful execution or behavior in every environment |
| Script or notebook | A method that could be executed | Which revision and parameters a historical run used |
| Run output or telemetry | Recorded observations under captured conditions | Universal behavior or absence of unobserved effects |
| Ticket, interview, or vendor reply | A statement attributed to its source, including any command or setting it recommends | Independent verification, approval, or resolution; that a recommended command works as written |
| Dashboard, slide deck, or exported report | A presentation of selected sources | A new independent authority for those sources |

A policy file can be both implementation and evidence of intended configuration. Link its relevant revision once; do not copy it into a second “evidence” directory merely to attach a label.

## Space without forced relocation

Keep artifacts in their native homes: `terraform/`, `schemas/`, `api/`, `diagrams/`, `results/`, an image registry, ticket system, or approved object storage. An optional `artifacts/README.md` can act as a catalog linking the resources that need discovery or maintenance. It need not inventory every file.

The [FAIR principles](https://doi.org/10.1038/sdata.2016.18) summarize what a catalog entry is for: the resource should be findable, accessible under stated conditions, interoperable, and reusable with its provenance. Use a [catalog entry](../templates/artifact.md) only when a resource needs independent explanation. Include purpose and role, canonical location, identity or revision, owner/review route, format or reading instructions, and material access or interpretation limits. Native paths, commit IDs, ticket IDs, and image digests are sufficient identities when they resolve in context. No universal artifact prefix is required.

Large or restricted resources can remain external. Retain a safe locator, access route, version, and availability limitation. Do not commit credentials, private keys, or unredacted state files merely to make a bundle complete. Explain relevant omissions and retention limits.

When evidence is redacted, leave a visible note at the same location (clause 5.1). One line in the directory's README or the bundle manifest is enough: "Redactions applied on 2026-10-02: one credential removed from `session.log`; no effect on the recorded behavior." An in-place edit with no marker leaves later readers unable to tell collected output from altered output. Redaction also does not restore secrecy. A credential that reached a stored file should be treated as compromised and rotated; version history and copies may still hold it.

Bulk editorial or formatting passes, whether by people or agents, exclude preserved evidence. For evidence held outside version control and cited for a material claim, record a content digest or immutable revision identifier and the collection time where it is cited; a commit identifier already serves for evidence in the repository. An external link whose content expires under a retention period is not a preserved source: capture the figure, the query, the time window, and the collection time on the page or in an evidence note, and state the retention limit. Custody for legal or forensic purposes is outside KADS and is governed by the applicable domain standard.

## Preserve a historical run

For a run whose results matter, use a unique identity that distinguishes date, repeated attempt, provider/environment, and test. Keep actual timestamps separate from directory labels such as `2026-10-02-3`.

Choose the scheme before the first run, because the failure it prevents is silent (clause 5.2). A directory named only by date holds one run; the second run that day overwrites the first, and nothing reports the loss. Two schemes avoid this: a date plus a sequence number allocated by checking what already exists, such as `results/2026-10-02-1/` then `results/2026-10-02-2/`, or a timestamp with enough resolution that two runs cannot share it. Whichever is used, the tool or person storing a run should refuse to write into a location that already exists. Fix the identifier once, when the run starts, and derive every path from it, so that a run which crosses midnight does not change its own name. Where a tool stores the run, let the tool allocate the identifier too: the rule that a later run cannot overwrite an earlier one has to hold when the operator is inattentive.

A compact [bundle manifest](../templates/artifact-bundle.md) can record:

- purpose, run identity, and collection time or unknown provenance;
- actual method revision, relevant dependencies, inputs, and non-secret parameter overrides;
- environment and measurement vantage point, distinguished from defaults;
- raw observations, transformations, exclusions, and the report using them;
- outcome, incomplete steps, cleanup or retained resources when material;
- access restrictions, redactions, retention, and known gaps.

Record actual configuration, not every available environment variable. A script revision without overrides may not reproduce a run. A current script page is not necessarily the historical method. Never overwrite an earlier run with a rerun; make any corrected interpretation a linked addition. A checksum helps identify bytes, but does not authenticate how they were collected.

## Authored sources and generated views

When a project already generates documentation, identify the editable source, transformation, and generated destinations. For a file containing both authored and generated sections, mark the boundary. Fix the appropriate source rather than an overwritten output. KADS does not require a generator, but it does not override an adopting project's established source rules.

Hand-copied figures drift faster than authors expect. A coverage count repeated in a summary can be stale within hours of the run that produced it, well before any scheduled review. Where a project already has generated views, check their freshness mechanically when that is practical (clause 2.2 asks that copies be reviewed or dated; checking mechanically is one way to meet it): regenerate and compare, or compare the source revision a view records against the current one. For a volatile figure, prefer generating it or linking to its canonical home over retyping it. If neither is possible, label the copy as a snapshot with its source revision so that staleness is at least visible. This is a recommendation for projects that already generate content, not a tooling requirement for conformance.

A manually prepared export should identify the same source revision and transformations. A figure or executive slide retains the important scope and limitations beside its conclusion, with links or a readable source reference to deeper material.

## Artifact review

Check a reader can locate and interpret the resource, determine whether it describes intent or observed state, and identify the version used by the claim. Group related files in one bundle when separate records would add no value. The [KADS artifact space](../artifacts/README.md) is reserved for standard-owned assets; it does not collect artifacts from evaluated projects.
