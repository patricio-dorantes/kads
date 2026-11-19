# Evaluation of the standard

This page tests KADS against constructed documentation problems to see whether its rules handle them, and records the reasoning behind some of its design choices. It is about KADS itself; you do not need it to use the standard.

**Scope:** KADS authoring, review, identity, and presentation rules.  
**Method:** editorial application of the rules to independent illustrative cases.  
**Review route:** repository maintainer through the normal contribution process.  
**Authorship:** agent-drafted, with the maintainer as author of record; what the maintainer reviewed is not recorded; see the [adoption note](adoption-note.md).

This evaluates the standard's ability to handle practical documentation problems. The cases below are constructed examples, not reported events, measured outcomes, or excerpts from an external corpus. They retain no external project identities, records, or artifacts.

## Application cases

| Case | Application of KADS | Evaluation and remaining limit |
|---|---|---|
| A short procedure answers one operational task | Use a normal page with prerequisites, actions, and a completion check | Adequate without IDs, front matter, or a research chain |
| A diagram is the clearest authoritative system description | Keep it canonical and supply enough context for intended readers | Avoids duplicate prose inventories; accessibility still needs reader judgment |
| A definition and an execution share a test label | Qualify the execution by its actual method revision, conditions, and run identity | Prevents treating current defaults as historical method; missing provenance cannot be recovered by formatting |
| A summary reports success while its source records an unassessed case | Review the proposition and scope, not merely the link | Traceability makes inspection possible but does not prove consistency |
| A command returns an error during an error-handling test | Assess against the stated expected behavior | Execution, behavior, and pass/fail remain distinct |
| A score excludes unknown results | Explain the denominator, exclusions, and amount assessed | Interpretation improves without prescribing a universal scoring policy |
| A configuration exists for a planned design | Identify it as intended configuration | Evidence of deployment or runtime behavior still requires a separate basis |
| A decision is accepted but construction is unfinished | Record acceptance and implementation separately | Preserves authority without implying completion |
| Existing identifiers use a different naming convention | Map their meanings and preserve resolving references | Avoids forced renaming; mappings remain a maintenance responsibility |
| Two runs on the same day are stored under a date-named location | Give each run an identifier and location that cannot collide; refuse to overwrite | Prevents silent loss; a run already overwritten cannot be recovered by the rule |
| A leaked credential is removed from stored output in place | Leave a visible redaction note beside the material | The reader can tell altered from collected output; the credential still needs rotation |
| A listing through one interface finds nothing, and another interface later succeeds | Scope the negative result to the interface inspected; attribute the revision to the method | The original observation stays valid; the broad conclusion is withdrawn |
| A summary repeats a count that changes with every run | Generate or link the figure, or label it a snapshot; check freshness mechanically where practical | Reduces drift; a project without generation still depends on review |
| A reader finds a correct definition but cannot apply it | Add a worked example and boundary case when useful | Teaching aids are optional; the reader's result shows whether one helped |

## Feedback, challenge, and rationale

During the 0.3.0 revision the authors ran a review of the draft from pedagogical, knowledge-management, and interpretive viewpoints. That review emphasized that retrieval, understanding, and justified action are distinct. The resulting choices are evaluated here on their documentation consequences.

**Evidence gap (clause 5.1):** the review itself was conducted in an authoring session and was not preserved. Only its dispositions, listed below, survive in this repository. Statements about what the review "emphasized" or "challenged" are the authors' recollection and should be read as such, not as citations to a record. Future reviews of the standard should be kept as dated notes under `docs/` so that this gap is not repeated.

| Recommendation or option | Disposition | Rationale |
|---|---|---|
| Make consequential terms and criteria explicit | Adopted | Readers need to understand what a label authorizes them to infer; inline definitions can suffice |
| Add learning objectives and transfer exercises everywhere | Not adopted as a universal rule | Helpful for some instructional material, obstructive in compact reference and urgent procedures |
| Distinguish findings, recommendations, decisions, and implementation | Adopted | These roles carry different evidentiary and authority requirements; separate files are optional |
| Give every technical artifact a new record type and ID | Not adopted | Resources can have several roles and already have useful native identities |
| Provide optional artifact catalogs and manifests | Adopted | Improves discovery and interpretation where existing descriptions are insufficient |
| Require numerical confidence or sensitivity analysis for every evaluation | Not adopted | These need an interpretable basis and a real decision need; unexplained numbers create false precision |
| Treat structural validation as proof of sound knowledge | Rejected | Working links do not establish that an inference follows or a criterion was satisfied |

The [ADR space](adr/README.md) preserves proposed architectural choices and alternatives. The [artifact guide](artifact-guide.md) explains resource handling. These are reusable parts of KADS, not records of an external project's design.

## Reviews of the standard

Dated review notes are kept under [`docs/reviews/`](reviews/README.md) so that the basis of a revision can be inspected later. The four cases added to the table above in 0.5.0 come from the [adoption feedback of 2026-10-02](reviews/2026-10-02-adoption-feedback.md). The [standards evaluation of 2026-10-03](../decisions/standards/README.md) compared KADS with external standards and produced 0.6.0.

## Evaluation conclusion

The rules cover the cases above without requiring another conformance profile, compulsory automation, or one file per concept. The main remaining risk is maintenance effort: optional structure can still be overused. Authors should prefer existing sections, native identities, and direct links before creating more records.

This evaluation tests internal coherence: whether the rules handle each case without contradicting one another. Evidence from use is a separate matter and arrives as [proposals](../proposals/README.md) from projects that apply KADS.
