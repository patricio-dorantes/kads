# Candidates: Engineering Decision and Readiness Assurance for KADS

Source: a brief supplied by the KADS maintainer on 2026-10-03. Guiding idea: evidence proportional to consequence. Goal: preserve not only what is known, what was decided, and where the evidence lives, but why the available evidence justified a conclusion or decision at the time it was made. Epistemic test: could a competent engineer six months from now reconstruct what we believed, why, on what evidence, what risks we knowingly accepted, and whether reality later confirmed or invalidated the decision?

Hard constraints from the brief. The result MUST NOT: require formal review for every change; turn every decision into a long document; equate number of approvals with quality; copy aerospace processes without adaptation; duplicate information already canonical elsewhere; create permanent process artifacts with no future informational value. A user must be able to adopt KADS Core without adopting aerospace-level assurance practices. Prefer minimum ceremony, maximum traceability.

## Candidate principles
- P-01 Rigor shall be proportional to consequence.
- P-02 No significant decision without rationale.
- P-03 No GO without evidence. (GO is a conclusion, not an opinion.)
- P-04 No exception without explicit risk acceptance.
- P-05 Absence of failure is not evidence of correctness.
- P-06 Every critical change shall consider off-nominal behavior. (What can fail, how detected, what happens next, can it propagate, can we contain it, can we recover.)
- P-07 Recovery shall be designed before deployment. (Rollback, roll-forward, backups, restore verification, flags, progressive rollout, canaries, containment, reconciliation, irreversible operations; irreversibility raises assurance.)
- P-08 High-risk decisions require independent challenge.
- P-09 Technical dissent shall remain traceable. (Silence is not agreement; disagreement is not erased by authority; no veto.)
- P-10 Incidents shall change the system, not merely produce documentation. (An incident is not closed until its validated lessons have modified the appropriate system of record; "no change required, with rationale" is a valid outcome.)

## Candidate mechanisms
- M-11 Three assurance levels, routine / significant / critical, with classification factors: blast radius, reversibility, data integrity, security, financial, regulatory, customer impact, observability, uncertainty, recovery complexity. Risk increases required evidence, independence, and recovery preparation.
- M-12 Decision assurance structure: claim, rationale, evidence, assumptions, risks, decision, authority, dissent, outcome; which fields are mandatory at which level; evidence referenced, not copied.
- M-13 Readiness record. Eight questions: what are we changing; why do we believe it works; what evidence; what can still go wrong; how will we detect failure; how will we contain or recover; who accepts residual risk; is there unresolved dissent. Must not become ceremony for trivial changes.
- M-14 Exception / waiver / deviation object: id, requirement, deviation, rationale, evidence, risk, mitigation, owner, approved_by, expires, status. "Exceptions should be more visible than normal compliance." "Exceptions expire unless deliberately renewed." When are permanent deviations legitimate?
- M-15 Roles: author, reviewer, challenger, approver, risk owner; not necessarily different people at lower risk; the challenger tests assumptions; no approval-count bureaucracy.
- M-16 Incident learning loop: outcome, telemetry, anomaly, analysis, new knowledge, updated requirement / test / architecture / control. Valid outcomes: requirement changed, test added, monitor added, architecture changed, runbook changed, assumption invalidated, risk explicitly accepted, no change with rationale.
- M-17 Typed relationships. Candidates: decision supported-by evidence; decision assumes assumption; decision mitigates risk; decision supersedes decision; exception deviates-from requirement; exception accepted-by authority; incident invalidates assumption; incident changes requirement; incident produces evidence; readiness evaluates change; dissent challenges decision.
- M-18 Architecture: what goes in Core versus modular addenda. Candidate addenda: Decision Assurance, Production Readiness, Exceptions and Risk Acceptance, Incident Learning, High-Assurance Engineering. Propose a better decomposition if justified.
- M-19 Templates, at most four: Decision, Exception, Readiness, Incident / Learning. Prefer a section or metadata block over a separate document.
- M-20 Lifecycle states for KADS's own principles: proposed, challenged, experimental, accepted, revised, superseded. A principle should not become normative merely because it sounds reasonable; experimental status when operational evidence is needed.
- M-21 Dogfooding evidence: track signals from KADS adoption (duplication, time to locate decisions, stale knowledge, missing rationale, broken references, unresolved exceptions, document proliferation, abandoned templates, repeated questions, incident reconstruction quality) and periodically challenge existing rules with "would we add this rule today?". Deletion is a valid outcome.
- M-22 Complexity accounting per version: rules, artifacts, relationships, and mandatory fields added and removed. The standard should resist monotonic growth.

## External practices to compare against (extract mechanisms, do not reproduce)
NASA software engineering requirements and readiness reviews; NASA Technical Authority, waivers and deviations, dissenting opinions; Flight Readiness Review and Launch Readiness Review; anomaly review and corrective action; independent verification and validation; ISO/IEC/IEEE 15026 assurance cases; architecture decision records; RFC processes; Google SRE production readiness and launch reviews; FMEA and hazard analysis; change management; blameless postmortems; DevSecOps; progressive delivery; chaos engineering; software safety.
