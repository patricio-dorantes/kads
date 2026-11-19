# Foundational consistency review of KADS 0.9.0 (shared brief for independent reviewers)

Authority: the 0.9.0 draft specification (docs/specification.md) and the documents it declares normative (docs/conformance.md; registries under the tracked-record profile) are authoritative for current requirements. 0.8.0 (`git show v0.8.0:docs/specification.md`) is historical evidence for detecting regressions. README, guides, knowledge model, foundations, examples, decision records, and changelog are evidence of rationale, intent, and history.

## Candidate golden objective (to be challenged, not accepted)

> KADS enables technical knowledge to survive separation from its author, its original context, the passage of time, transformation, and skeptical inspection, while preserving a discoverable path from material answers to the basis on which they stand.

Questions: does it describe what KADS already intends; which clauses support each part; is any part stronger than KADS can guarantee; is anything fundamental missing; where should it live (foundations, knowledge model, specification preface, README)? It does not become normative by being foundational.

## What it implies a skeptical later reader should be able to determine, where material

What the knowledge is about; its scope; which description is authoritative; whether it is current, provisional, historical, or superseded; what was observed, inferred, assumed, recommended, or decided; what basis supports each material claim; what method produced a result when method matters; what has and has not been verified; what limitations, contradictions, exclusions, and uncertainty remain; and how to reach the reasoning, method, evidence, artifacts, and sources needed to assess the answer. Challenge each item against current clauses; do not infer a missing guarantee because an item is desirable.

## The path Index, What, Why, How, Sources

A conceptual path, not a layout, hierarchy, sequence, template, or count. The property to test is traversability: where a material answer depends on context, reasoning, method, evidence, or sources maintained elsewhere, the reader can reach the basis needed to assess it. Do not propose "traversability" as a normative term unless defining it materially improves conformance or interpretation.

## Possible 0.8 to 0.9 regression

0.8.0 clause 1.3 (then numbered 1.3, formerly 3.1.2) read: "A document SHOULD answer the reader's immediate question before requiring traversal of supporting content. The evidence path from answer to context, reasoning, method, and sources SHOULD be explicit where those layers are relevant. No fixed sequence or number of files is required. Learning-oriented content SHOULD expose necessary prerequisites and examples where these help readers apply the knowledge." The 0.9.0 clause 1.3 keeps only the first sentence; J-034 (decisions/necessity-review/README.md) records the second as a duplicate of 3.1 (a) and 7.2.1, over an objection by the guardian challenger. Determine whether that was a safe simplification, a relocation, an intentional reduction, or an accidental loss. Candidate invariant to test: "Where a material answer depends on context, reasoning, method, evidence, or sources maintained elsewhere, the path from the answer to the basis needed to assess it should be explicit and resolvable." Does it belong in Core; is it already guaranteed by propositions 2, 3, 6; is it needed only under the research-report profile (7.2.1 requires reasoning from results to each material conclusion); does it duplicate reachability (2.3) or links (6.3); or is it a distinct missing guarantee? If a rule is missing, propose the smallest requirement; do not create separate rules for skepticism, auditability, rationale, evidence path, falsifiability, and provenance if one invariant protects the property.

## Core versus research profile

Try to construct ordinary Core-conforming documentation that contains a material conclusion but leaves the reader unable to reach the reasoning or basis needed to assess it. If it conforms, is that intentional?

## Adversarial conformance

Try to construct corpora that are formally conformant to 0.9.0 and still fail a skeptical reader: every claim has a citation but evidence-to-conclusion reasoning cannot be found; the answer is clear but the method is unreachable; evidence exists but its relation to a conclusion is implicit; a decision records authorization but no reconstructable rationale; canonical homes exist but provenance becomes opaque through derived views; every requirement passes but the reader cannot tell why a material conclusion deserves confidence. For each: is it prevented today, by which clause; if not, where would the guarantee belong (Core, profile, guidance); the smallest testable change; and the burden it creates for a ten-line how-to page.

## Ontological and epistemic integrity (for foundations or the knowledge model, not for Terms)

Ontological: subject, scope, canonical home, identity where needed, lifecycle and current state, supersession, material relationships. Epistemic: kind of statement, strength of support, evidence or source, observed versus inherited, inferred, or assumed, method, limitations and contradictions, what was verified. Is answer-to-basis traversability the bridge between them? Are the categories useful?

## README as entry point and derived view (README.md)

Audit each substantive statement against its canonical source: canonical source; invariant summarized; material qualifications preserved; normative strength raised or lowered; current; belongs in an entry point; unsupported empirical or historical claim; reintroduces a removed concept; reader can reach the basis. Classify: preserved, strengthened, weakened, stale, unsupported, local guidance, misplaced, canonical-source missing. Review specifically, without presuming them wrong: "link to it from everywhere else"; "notes about the document itself come last"; "date facts that change"; "a project does not edit its own copy of KADS"; statements implying every derived document follows SemVer; statements implying absence of a supersession marker proves currency; "Technical documentation usually fails in a few recurring ways"; "Each KADS rule exists to prevent one of these"; the citation of tag v0.9.0, which does not exist yet.

## Admission rule for any normative change

Justified only when all hold: the guarantee is not already protected; its absence permits a formally conforming corpus to materially violate the confirmed objective; the invariant can be expressed small and testable; guidance alone cannot preserve it. Do not remove a foundational guarantee because fewer words are possible.
