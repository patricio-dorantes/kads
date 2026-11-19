# Proposal: version semantics for KADS-derived documents (DRAFT, to be challenged)

Baseline: KADS 0.9.0 draft, clauses 8.3 and 8.4 (docs/specification.md), conformance.md "Select the scope", adoption guide outline line "Adoption note version". Semantic Versioning 2.0.0 was inspected on 2026-10-06 (workbench/0.9/semver.html): its classes are defined relative to a declared "public API"; MAJOR for incompatible API changes, MINOR for backward-compatible added functionality, PATCH for backward-compatible bug fixes; 0.y.z may change at any time.

## 1. The invariant

Requiring Semantic Versioning on a derived document protects exactly one thing: that a reader or agent holding the document's version, its pinned KADS version, and its changelog can tell, without diffing revisions, which of three things a later version did: repaired without changing material meaning (PATCH), added or changed something to read while leaving what was correct still correct (MINOR), or changed something so that what was correct under the previous version may now be wrong or nonconformant (MAJOR). Stable identity, traceable evolution, and dependency tracking come from the pin and the changelog, not from SemVer; SemVer adds the change class. The format alone protects nothing: today 8.4 says "follow Semantic Versioning" but SemVer's classes are defined by a software public API that a document does not have, so each project would have to invent what MAJOR means, and the number carries no shared meaning. Either the classes are defined for documents or the requirement protects only a familiar format.

## 2. What KADS adopts from SemVer

Adopted: the three-part number and the rule that each part names a class of change; the 0.y.z rule that anything may change before 1.0. Not adopted: "public API" as the compatibility surface; the SemVer requirement to declare one; pre-release and build labels. KADS 8.3 (c) already defines "breaking" for KADS itself; the proposal reuses that definition for documents.

## 3. Compatibility surface of a derived document

What a reader may rely on: the document's material content within its stated scope (claims, instructions, local rules, mappings, exceptions) and its declared dependencies (the pinned KADS version, the profiles applied, the covered corpus). No new term: "material", "scope", "conformant", and "derived" already exist. "Consumer" is not needed: KADS has reader and corpus. "Knowledge contract" is not needed.

Proposed classes, mirroring 8.3 (c) to (f):
- Breaking (MAJOR from 1.0; MINOR marked breaking before 1.0): a change after which what was correct or conformant under the previous version could be incorrect or nonconformant: a material statement reversed, a local rule or mapping strengthened or changed in meaning, scope or covered corpus narrowed, a profile withdrawn, an exception added or widened.
- MINOR: new or changed content that leaves what was correct still correct: new rules that bind only new content, new optional fields, new examples, relaxations, scope widened, a change of the pinned KADS version.
- PATCH: a change that preserves material meaning: spelling, links, clarification, presentation.

## 4. Cases (derived document / KADS itself / depends on the document)

| # | Change | Derived document | KADS itself | Depends on the document? |
|---|---|---|---|---|
| 1 | Spelling correction | PATCH | PATCH | No |
| 2 | Broken-link repair | PATCH | PATCH (8.3 f) | No |
| 3 | Clarification preserving meaning | PATCH | PATCH | Whether meaning is preserved is a judgment |
| 4 | Correction of a materially wrong statement | Breaking: a reader who followed the old text could be wrong; the old text was wrong, but the signal is about reliance | Breaking (changes meaning of a clause) | No |
| 5 | New informative example | MINOR (new content to read) | MINOR (8.3 e: new guidance) | No |
| 6 | New optional field | MINOR | MINOR | No |
| 7 | New mandatory field | Breaking | Breaking | No |
| 8 | Changed interpretation of an existing field | Breaking | Breaking | No |
| 9 | Changed local mapping | Breaking | n/a | No |
| 10 | New local rule | Breaking if it binds existing content; MINOR if it binds only content written after it | n/a | Yes: scope of the rule |
| 11 | Relaxed local requirement | MINOR | MINOR (8.3 c: relaxing is not breaking) | No |
| 12 | Strengthened local requirement | Breaking | Breaking | No |
| 13 | Pin 1.4.2 to 1.4.3 | MINOR (dependency changed; a KADS patch cannot break) | n/a | No |
| 14 | Pin 1.4.3 to 1.5.0 | MINOR, unless the KADS release is marked breaking for something the corpus uses | n/a | Yes |
| 15 | Pin 1.5.0 to 2.0.0 | Breaking where the KADS breaking changes reach the corpus; otherwise MINOR | n/a | Yes |
| 16 | Covered corpus changed | Widened: MINOR. Narrowed: breaking (a reader relied on conformance of the removed paths) | n/a | Direction |
| 17 | Profile added or removed | Added: MINOR. Removed: breaking | n/a | Direction |
| 18 | Exception changed | Added or widened: breaking. Narrowed or ended: MINOR. Date renewed: PATCH | n/a | Direction |
| 19 | Generated presentation changed, meaning preserved | PATCH, or no new version | n/a | No |
| 20 | Meaningful to humans, not compatibility-breaking | MINOR | MINOR | No |

## 5. Asymmetry

A derived document does not mirror the class of the KADS release it adopts. A KADS PATCH still moves the pin, which is MINOR for the document because its declared dependency changed. A KADS MAJOR is breaking for the document only where the breaking changes reach the corpus; otherwise it is MINOR.

## 6. Where it belongs

Specification: 8.4 gains one sentence that reads the classes of 8.3 (c) to (f) for the document and one on the pin. Without it, agents and humans cannot interpret 8.4 at all; with it, no project has to invent a policy. The case table and the agent signal go to the adoption guide, in a section "Versioning a derived document". The clause guide row 8.4 restates the three classes in plain words. conformance.md today REQUIRES the adoption note to carry its own version ("it carries its own Semantic Versioning number"), which conflicts with the position that a derived document need not declare a version merely because it exists; proposal: conformance says "it pins the KADS version it follows and, if it declares a version of its own, that version follows 8.4", and the adoption-guide outline marks the version line optional.

## 7. What an agent may infer

From version + pin + changelog: PATCH: existing material interpretation remains valid. MINOR: something new or changed to read; what was correct remains correct; a changed pin means the normative baseline moved. MAJOR (or a pre-1.0 MINOR marked breaking): prior reliance may be wrong; reevaluate. These are commitments by the author, not properties an agent can verify; a misclassified change is an error under 3.3 (nothing invented) and 8.4. The signal is only as good as the classification, so the guide should say so.

## 8. Proposed wording

**8.4** *Derived documents* (maintainer). (a) A document derived from KADS, such as an adoption note, a local extension, or an adapted template or guide, MUST pin the KADS version it derives from. (b) Where it declares a version of its own, that version MUST follow Semantic Versioning 2.0.0 with the classes of 8.3 (c) to (f) read for the document: breaking is a change after which what was correct or conformant under the previous version could be incorrect or nonconformant; new or changed content that leaves that intact is minor; a change that preserves material meaning is patch. (c) A change of the pinned KADS version is at least minor for the document, and breaking where the new KADS version's breaking changes reach the corpus.

8.3 unchanged, except (a) may say "the three-part version number and the meaning of its parts" for precision.

Normative strength relative to 0.9.0 draft: 8.4 (b) becomes decidable where it was undefined; no new MUST; (c) clarifies "at least minor". Conformance is relaxed (adoption-note version no longer mandatory).
