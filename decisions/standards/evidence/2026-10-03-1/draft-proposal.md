# Draft proposal of 2026-10-03 (superseded by the decision records)

This file is preserved as evidence. It is the first draft that the challengers reviewed, it contains factual errors that the fact check later found, and its proposed clauses were mostly not adopted. Current outcomes are in the [index](../../README.md). Nothing in it is a rule.

Each candidate: source, the problem it solved in its home standard, what KADS 0.5.0 already says, and the PRIMARY AUTHOR'S INITIAL PROPOSAL. The proposal is a starting position to be attacked, not a decision.

Layers: CORE (spec section 3, binds every adopter), PROFILE (optional spec section), GUIDANCE (informative guides, templates, CONTRIBUTING), NONE.

## J-001 BCP 14 keywords and MUST restraint
Source: RFC 2119, RFC 8174 (BCP 14). Problem: ambiguous requirement strength. RFC 2119 section 6 says imperatives "MUST be used with care and sparingly".
KADS today: clause 1.2 adopts BCP 14. The spec has 64 MUST, 9 MUST NOT, 15 SHOULD in 43 clauses.
Proposal: ACCEPT (already adopted). Add to CONTRIBUTING a restraint rule: a new rule is a MUST only when violating it breaks a property the standard exists to protect; otherwise SHOULD or guidance. No change to clause 1.2.

## J-002 Controlled terminology: one term per concept within a scope
Source: ASD-STE100 (one word, one meaning; approved technical names). Problem: synonyms make readers and translators wonder whether two words mean two things.
KADS today: 3.1.3 requires criteria for evaluative terms that affect interpretation. Authoring guide says "prefer consistent terms within a stated scope" (informative).
Proposal: ACCEPT_WITH_MODIFICATION, CORE, SHOULD. New clause 3.1.4: "Within a stated scope, documentation SHOULD use one term for one concept and SHOULD NOT use one term for two concepts. Where a synonym, vendor term, or translation must appear, its mapping to the preferred term SHOULD be stated once." No dictionary, no approved-word list.

## J-003 One sentence, one assertion
Source: ASD-STE100 (one topic per sentence in descriptive writing; one instruction per sentence in procedures).
KADS today: nothing.
Proposal: REJECT as a normative rule. Keep as authoring guidance limited to two places: procedure steps and normative statements that will be cited individually.

## J-004 Procedure writing rules, as an optional Procedure profile
Source: ASD-STE100 procedural rules; safety-critical documentation practice (warnings and cautions precede the step they govern; ANSI Z535.6-style hazard statements). Problem: steps that hide a condition, a hazard, or two actions in one sentence get executed wrongly under time pressure.
KADS today: 3.5.2 requires prerequisites, actions, and an observable completion condition.
Proposal: ACCEPT_WITH_MODIFICATION, new optional PROFILE "Procedure profile" (spec section 7), for runbooks and operational corpora:
 7.2 Each step MUST state one action in the imperative, in execution order.
 7.3 A condition that decides whether or how a step is performed MUST be stated before the action it governs.
 7.4 A hazard, irreversible effect, or cost MUST be stated before the step that causes it, with the way to avoid or recover from it when one exists.
 7.5 A step whose success is not self-evident SHOULD state the expected observable result.
 7.6 The procedure MUST state whether it has been executed as written, and if so when and against which version or environment; an unexecuted procedure MUST say so.

## J-005 Controlled dictionary, sentence-length limits, mandated active voice
Source: ASD-STE100 (approved dictionary of about 900 words, 20-word procedural and 25-word descriptive sentence limits, active voice rules).
Proposal: REJECT. At most an informative note in the authoring guide that short, active sentences help where they reduce ambiguity.

## J-006 Modular self-contained knowledge units
Source: S1000D data modules; DITA topics. Problem: monolithic manuals cannot be reused or updated piecewise.
KADS today: "knowledge object" need not be a separate file; knowledge model says keep content together unless splitting enables independent maintenance, reuse, provenance, or review.
Proposal: REJECT further modularization. Current position already adopts the idea at the right strength.

## J-007 Structured, meaning-bearing identifiers
Source: S1000D data module codes (hierarchical codes encoding system, subsystem, info type).
KADS today: 4.3 stable IDs; nomenclature forbids encoding the current directory in an ID.
Proposal: REJECT. Meaning-bearing codes break when the encoded meaning changes.

## J-008 Applicability statements
Source: S1000D applicability (which product configurations a module applies to).
KADS today: 3.1.1 requires scope (version, environment, audience, period) to be discoverable.
Proposal: ACCEPT_WITH_MODIFICATION, GUIDANCE only. Show a consistent "Applies to:" line in the technical-document template and authoring guide. No applicability machinery, no new clause.

## J-009 Source knowledge separated from publication views
Source: S1000D CSDB; DITA maps; single-source publishing.
KADS today: canonical home (3.2.1), derived view (terms), generated views identify sources (3.6.2).
Proposal: REJECT a new rule; already covered. Record the mapping.

## J-010 Verification state separate from lifecycle; "last verified" statement
Source: S1000D quality-assurance status (unverified, first verified, second verified); ISO 9001 7.5 review and approval of documented information.
KADS today: lifecycle is not certainty (4.6); "editing does not establish revalidation" (3.3.3); templates mention verification dates.
Proposal: ACCEPT_WITH_MODIFICATION. Folded into Procedure profile clause 7.6 above. Outside procedures, guidance only: state when and against what volatile reference content was last checked.

## J-011 Standard corpus layout and section numbering
Source: ATA iSpec 2200 (ATA chapter numbering shared across manufacturers so any mechanic finds the same system in the same chapter).
KADS today: clause 1.1 says KADS does not prescribe a repository layout; adoption guide shows one possible layout.
Proposal: REJECT. Record what would change the answer: several adopters asking for cross-project navigation.

## J-012 Information typing: knowledge types versus document types
Source: DITA (concept, task, reference); Diátaxis (tutorial, how-to, reference, explanation).
KADS today: authoring guide table of reader needs (informative); record types C, D, J, T, E, Q in the tracked-record profile.
Proposal: ACCEPT_WITH_MODIFICATION, GUIDANCE. Add an informative two-axis table to the knowledge model: epistemic kinds of knowledge (observation, inference, hypothesis, assumption, conclusion, decision, question, procedure knowledge) versus document or view kinds (tutorial, how-to, reference, explanation, report, decision record, index). State that a document is a view that may carry several kinds of knowledge. No required type metadata on ordinary documents.

## J-013 Reuse by transclusion
Source: DITA conref and keyref.
Proposal: REJECT. Requires tooling; KADS reuses by link with a scope qualifier (3.2.1). Projects that already transclude are covered by 3.6.2.

## J-014 Openings and sections that survive out-of-context reading
Source: DITA short description element; information-retrieval and AI-chunking practice. Problem: readers and retrieval systems land on a section via deep link, search, or a retrieved chunk and lack the context "above".
KADS today: 3.1.2 says a document SHOULD answer the immediate question first.
Proposal: ACCEPT_WITH_MODIFICATION, GUIDANCE. New authoring-guide section "Writing for retrieval": open with one or two sentences saying what the page answers and for what scope; use headings that name their subject; avoid "as above"; restate the referent a section depends on. No new clause.

## J-015 Epistemic roles survive restatement (no status laundering)
Source: W3C PROV (derivation), scientific method, intelligence-analysis practice. Problem: observation -> interpretation -> hypothesis -> conclusion get stored and re-summarized as if all were equivalent facts.
KADS today: 3.3.2 requires observation, inference, recommendation, decision to stay distinguishable "wherever combining them would mislead"; 3.2.2 requires summaries to preserve material qualifications; 3.3.1 mentions "explicit assumption awaiting verification". Hypothesis is not named anywhere normative.
Proposal: ACCEPT_WITH_MODIFICATION, CORE, MUST. New clause 3.3.5: "A summary, index, or other derived view MUST NOT present an inference, assumption, or hypothesis as an observation or an established conclusion. The role a statement had at its canonical home travels with it when it is restated." Add observation, inference, assumption, hypothesis, conclusion to the terms section.

## J-016 Epistemic states as normative object types or required metadata
Source: the candidate list fact, observation, claim, hypothesis, decision, evidence, assumption, conclusion, procedure.
KADS today: six tracked-record types; ordinary documents need no type.
Proposal: REJECT. No new record types (no H- or A- prefix), no required per-statement labels, and "fact" is rejected as a type because calling something a fact hides its basis.

## J-017 PROV entity, activity, agent model as required provenance metadata
Source: W3C PROV-DM.
KADS today: relationships registry records an informative correspondence with PROV; 3.6.1 and 3.3.4 cover artifact provenance and authorship.
Proposal: REJECT as a requirement. Keep the informative mapping.

## J-018 Relationship vocabulary additions
Source: the candidate list supports/supported_by, depends_on, derived_from, supersedes/superseded_by, contradicts, refines, implements, explains, references, evidence_for.
KADS today: 11 relations: summarizes, supported-by, evidenced-by, derived-from, tested-by, implemented-by, depends-on, contradicts, supersedes, answers, related-to. The maintainer has already decided that supersedes is the only supersession relation; superseded_by is its inverse reading, not a second relation.
Proposal: REJECT all additions. supports, evidence_for, implements are inverses of existing relations; explains overlaps supported-by; references is an ordinary link or related-to; refines is the only genuinely new meaning and is DEFERRED until an adopter shows a case that partial supersedes or related-to cannot express.

## J-019 Retain rejected proposals with their reasons
Source: ADR practice (rejected and superseded records are kept).
KADS today: nomenclature status "rejected: assessed and not adopted; retain the reason".
Proposal: ACCEPT (already covered). Apply it by keeping this evaluation's rejected candidates as records.

## J-020 Docs-as-code: tool-independent sources under version control
Source: docs-as-code practice (Write the Docs). Problem: knowledge locked in a proprietary tool cannot be diffed, reviewed with the work, or read after the tool is gone.
KADS today: 3.5.3 "KADS does not require a particular format"; adoption guide advises keeping knowledge in the consuming repository.
Proposal: ACCEPT_WITH_MODIFICATION, CORE, SHOULD. New clause 3.5.4: "Maintained sources SHOULD be kept in a form that can be read, compared between revisions, and reviewed without proprietary tooling. Where a source cannot be, the corpus SHOULD say where the maintained source lives and how a reader without that tool can obtain its content."

## J-021 Reachability: no orphan documents
Source: information architecture (findability). Problem: pages nobody can navigate to are invisible to readers and silently rot.
KADS today: 3.1.1 entry point directs readers to current guidance; quick start says link new pages from the entry point (informative).
Proposal: ACCEPT_WITH_MODIFICATION, CORE, SHOULD. New clause 3.5.5: "Each maintained document SHOULD be reachable by following links from the corpus entry point."

## J-022 Machine-readable knowledge graph or schema-validated metadata
Source: knowledge graphs, RDF, JSON Schema front matter.
KADS today: 0.2.0 removed the JSON Schema and linter; front matter is optional; labeled links suffice.
Proposal: REJECT for Core. DEFER an optional mapping contract until an adopter needs cross-project graph processing (ADR-001 already notes this).

## J-023 Competency questions as the admission test for new types and relations
Source: ontology engineering (Grüninger and Fox competency questions). Problem: vocabularies grow by analogy until nobody can apply them.
KADS today: projects MAY extend the vocabularies if they document meaning and direction.
Proposal: ACCEPT_WITH_MODIFICATION, GUIDANCE in the registries and CONTRIBUTING: a proposed type, status, or relation should name the reader question it answers that the existing vocabulary cannot.

## J-024 Baselines and pinned references
Source: software configuration management (configuration identification, baselines).
KADS today: 3.3.1 citation to specific version; 3.5.1 SHOULD cite versions for historical claims; 6.2 and 6.3 pin versions; decision guide says a moving branch does not establish a historical implementation.
Proposal: REJECT a new rule; covered.

## J-025 Criteria fixed before observation; negative results kept
Source: scientific reproducibility (preregistration; publication of null results).
KADS today: 5.4 (criterion chosen after observing MUST be stated), 5.2 and 5.7 (negative and inconclusive results).
Proposal: REJECT a new rule; covered.

## J-026 Singular, individually identified requirements in the KADS specification itself
Source: ISO/IEC/IEEE 29148 and INCOSE requirement characteristics (singular, unambiguous, verifiable).
KADS today: clause IDs are per paragraph; a paragraph often holds three or four MUSTs, so an exception citing "3.3.2" is ambiguous about which sentence.
Proposal: DEFER to a pre-1.0 restructuring. Splitting now would renumber or sub-letter 43 clauses with no adopter evidence of citation ambiguity.

## J-027 Status visible on the page itself, before the content
Source: ISO 9001:2015 7.5.3.2 (prevent unintended use of obsolete documented information; identify it if retained). Problem: a reader, search engine, or AI retriever lands directly on a superseded or historical page and takes it as current. The entry point is never seen.
KADS today: 3.1.1 obliges the entry point to distinguish historical material; 4.5 obliges superseded tracked records to link their replacement; nothing obliges an ordinary historical page to say so on itself.
Proposal: ACCEPT, CORE, MUST. New clause 3.1.5: "Material that is historical, superseded, deprecated, or a dated snapshot MUST say so in the material itself, before its content, and MUST point to current guidance where it exists."

## J-028 Chain of custody and integrity hashes for evidence
Source: digital-forensics evidence management.
KADS today: 3.4.2, 3.4.4, 3.4.5; artifact guide says a checksum identifies bytes but does not authenticate collection, and should be added only when there is an integrity need.
Proposal: REJECT as a requirement.

## J-029 Review independence proportional to consequence
Source: safety-critical practice (independent verification), ISO 9001 approval.
KADS today: self-review MAY be used if identified as such (conformance); agent self-review MUST be identified (3.3.4); authoring guide says review depth should follow consequence.
Proposal: REJECT a new requirement. Disclosure of who reviewed is already mandatory; mandating independence would exclude one-person projects.

## J-030 A separate AI authoring profile
Source: the brief's example profile list.
KADS today: 3.3.3 and 3.3.4 in Core; an agent instruction snippet in the adoption guide.
Proposal: REJECT a profile. The rules that matter (no invented provenance, author of record) are universal and already in Core; a profile would duplicate them.

## J-031 Admission test and layering principle for KADS rules
Source: the evolution brief itself; standards-design minimalism.
Statement: "A KADS rule exists only when the absence of the rule creates more cognitive or epistemic cost than the rule itself", and "complexity belongs at the lowest layer that actually needs it": universal principles in Core, domain rigor in profiles, techniques in guidance, speculation stays a proposal.
KADS today: CONTRIBUTING says "prefer the smallest change"; foundations explains boundaries.
Proposal: ACCEPT, GUIDANCE. Put the admission test and the Core threshold in CONTRIBUTING and the design rationale so every later proposal is judged the same way.
