# J-035  -  Version semantics for documents derived from KADS

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-06  
**Namespace:** `kads-design`  
**Result:** KADS 0.9.0, clause 8.4

This record says what a version number on a KADS-derived document means, why clause 8.4 reads as it does, and what two challengers disputed. It is history, not a rule; the rules are in the [specification](../../docs/specification.md). Raw material is in the [evidence bundle](evidence/2026-10-06-2/README.md).

## Question

Can KADS give MAJOR, MINOR, and PATCH a precise enough default meaning for versioned documentation that humans and agents can reason about change without every project inventing its own policy? The maintainer's positions were fixed: KADS uses Semantic Versioning; KADS defines breaking itself; a derived document need not declare a version; if it does, Semantic Versioning; a pin change is at least minor.

## 1. Recommended interpretation

A declared version on a derived document follows the classes of clause 8.3 (c) to (f), read for the document and the corpus it covers:

- **Breaking** (MAJOR from 1.0; MINOR marked breaking before 1.0): the covered corpus, as it stands, could now fail a rule, mapping, or exception of the document, or one of them changed meaning. Relaxing or retiring is not breaking.
- **MINOR:** something new or materially changed to read, including a correction of a descriptive statement, a relaxation, or a moved pin.
- **PATCH:** material meaning preserved.

A declared version is never reused for changed content. A pin change is at least minor, and breaking when the KADS changelog marks the release breaking, unless the document records that none of the marked changes applies to the covered corpus.

## 2. Strongest argument for keeping Semantic Versioning mandatory where a version is declared

From the defender: the adoption note holds the whole surface a reader relies on, the pin, the corpus, the profiles, the mappings, and the exceptions, and an agent reads it before touching anything. A number whose parts carry a defined class of change tells that agent whether its prior reliance still holds without diffing and re-deriving, which is the cost Semantic Versioning exists to remove. Without a shared definition the number is a format and the agent learns nothing from it.

## 3. Strongest argument against

From the minimalist: documentation maintainers have no test suite to catch a misclassification, so the class is a judgment that drifts toward everything-PATCH or everything-MINOR; a reliance-based definition of breaking inverts the one class SemVer is clearest about, making every correction MAJOR; and a second number on the adoption note adds a classification duty on every edit while the pin and the repository revision already identify what a reader holds.

## 4. Adversarial conclusion

The minimalist rejected the drafting agent's definition of breaking, "a change after which what was correct could be incorrect", as a second definition beside 8.3 (c) that gave opposite answers for corrections, exceptions, and withdrawn profiles, and wanted 8.4 to read 8.3's classes for the document and nothing more. The defender found the same definition unbounded and the case table one-sided, agreed that a correction is breaking, and asked for an enumerated two-sided definition in the specification. The adopted text reads 8.3's classes for the document, as the minimalist asked, and takes the defender's no-reuse rule and the pre-1.0 regime of 8.3 (d). Both found "breaking where the KADS changes reach the corpus" undecidable without re-reviewing the corpus, and preferred the rule the adoption guide already had: breaking when marked, unless the note records that none applies. They split on the adoption note's own version: the defender wanted it mandatory, the minimalist optional. The maintainer's stated position, that a derived document is not required to declare a version merely because it exists, decides it: optional. The defender's dissent is kept below.

## 5. The cases

Derived document first; KADS itself second where it applies.

| # | Change | Derived document | KADS itself |
|---|---|---|---|
| 1 | Spelling correction | PATCH | PATCH |
| 2 | Broken-link repair | PATCH | PATCH |
| 3 | Clarification preserving meaning | PATCH; whether meaning is preserved is the author's judgment | PATCH |
| 4 | Correction of a materially wrong statement | MINOR; breaking if the statement was a rule, mapping, or exception whose meaning changed | Breaking if a clause's meaning changes; otherwise PATCH |
| 5 | New informative example | MINOR | MINOR |
| 6 | New optional field | MINOR | MINOR |
| 7 | New mandatory field | Breaking | Breaking |
| 8 | Changed interpretation of an existing field | Breaking | Breaking |
| 9 | Changed local mapping | Breaking | n/a |
| 10 | New local rule | Breaking if the covered corpus as it stands could be nonconformant to it; otherwise MINOR | n/a |
| 11 | Relaxed local requirement | MINOR | MINOR |
| 12 | Strengthened local requirement | Breaking | Breaking |
| 13 | Pin 1.4.2 to 1.4.3 | MINOR | n/a |
| 14 | Pin 1.4.3 to 1.5.0 | MINOR; from 1.0 a KADS minor release is never breaking | n/a |
| 15 | Pin 1.5.0 to 2.0.0 | Breaking, unless the note records that none of the marked changes applies to the covered corpus; the same rule for a pre-1.0 release marked breaking | n/a |
| 16 | Covered corpus changed | Widened: MINOR, or breaking if the added paths could fail the note's rules. Narrowed: MINOR, a claim retired | n/a |
| 17 | Profile added or removed | Added: breaking if existing content in the paths could now fail it, otherwise MINOR. Removed: MINOR | n/a |
| 18 | Exception changed | Added or widened: MINOR, a relaxation. Narrowed or ended: breaking where content relied on it. Date renewed: MINOR | n/a |
| 19 | Generated presentation changed, meaning preserved | PATCH where the presentation is part of the versioned document; no new version where it is outside it | n/a |
| 20 | "Meaningful to humans, not breaking" | Not a class; resolved by the three tests | |

The asymmetry holds: a KADS PATCH moves the pin and is MINOR for the document; a KADS breaking release is breaking for the document unless the note records that it does not apply.

## 6. Changes to clauses 8.3 and 8.4

8.3 unchanged. 8.4 (b) now reads the classes of 8.3 (c) to (f) for the document and its corpus, lets the document's own recorded history stand in for the changelog, and forbids reusing a declared version for changed content. 8.4 (c) states the pin rule in its decidable form.

## 7. Guidance outside the specification

The adoption guide section "Versioning a derived document": the three tests, six examples, the rule that a document may treat more as breaking and never fewer, and the caution that the class is the author's judgment and an agent treats PATCH and MINOR as probably safe, never as safe. The clause guide row 8.4 restates the classes in plain words.

## 8. conformance.md

It conflicted: it required the adoption note to carry its own version while the specification was conditional. It now says the note pins the KADS version and, if it declares a version of its own, that version follows 8.4 (b). The adoption-guide outline marks the version line optional. This is a relaxation and is recorded in the changelog.

## 9. Terminology

Nothing new. The specification uses breaking (8.3 c), minor, patch, covered corpus, pinned KADS version, and material. "Compatibility surface", "consumer", "knowledge contract", "reliance", and "agent signal" were considered and not introduced.

## 10. Normative strength relative to the 0.9.0 draft

8.4 (b) became decidable where it named only a format; one MUST NOT was added, that a declared version is not reused for changed content, which Semantic Versioning already implies; and for a declared version below 1.0 the regime of 8.3 (d) now applies in place of Semantic Versioning's 0.y.z rule, so a breaking change bumps the minor version and is marked in the document or its recorded history, as the defender asked. 8.4 (c) clarifies "at least minor" with a decidable condition that covers a pin that skips releases. The conformance page is relaxed. No requirement on adopters was strengthened.

## Two edge cases, reviewed the same day

**Drafts before release.** The first wording, "a declared version MUST NOT be reused for changed content", forbade editing a document that already names the version it is preparing, which is what KADS itself does on a release branch. The observed case for the replacement is in KADS's own history: a project's proposal of 2026-10-05 recorded "KADS version in use: 0.8.0" while 0.8.0 was still an unreleased draft on a branch, so a reader took a moving copy for a release. The adopted rule: a released version never identifies changed content, and a copy that carries an unreleased version says so, by a pre-release identifier or a statement beside the version. "Released" stays a plain word, as in 8.3 (b): published as that version by the maintainer. Pre-release identifiers are recommended, not required. A release candidate is frozen like any release. KADS's own specification now says in its closing section that a copy is a draft until the tag exists.

**Downgrading the pin.** 8.4 (c)'s changelog shortcut reads forward only, and the release-integrity reviewer showed that reversing a relaxation tightens: a corpus that stopped meeting a requirement that 2.2.0 relaxed can fail it again at 2.1.0 with no breaking mark in the range. The minimalist showed that 8.4 (b), through the 8.3 (c) test, already decides every downgrade: breaking when the corpus could become nonconformant to the document, which now pins the older version, or when the note cites what the older version lacks. Adopted: (c) says "breaking at least when", so that it reads as a shortcut and not the only test, and the adoption guide gives the downgrade example. No downgrade ontology.

**Strength.** The freeze sentence relaxes the first wording for drafts. The marking rule is one new conditional MUST, on an author who declares a version and leaves the document editable; it has an observed case and a reader harmed. The downgrade change is two words and a clarification.

**Dissent.** The minimalist held that "declared" and "reused" already exempt private drafts and that both cases belong in guidance; not adopted, because the observed case was a pushed, reviewed draft that readers held. The release-integrity reviewer wanted "released" defined as "made available to readers other than its authors"; not adopted, because a draft pushed for review would then count as released.

## What KADS adopts from Semantic Versioning 2.0.0

Inspected on 2026-10-06. Adopted: the three-part number and the meaning of MAJOR, MINOR, and PATCH as classes of change, and that a released version is not modified. Not adopted: the "public API" as the subject of compatibility, which KADS replaces with 8.3 (c); the rule that anything may change before 1.0, which 8.3 (d) replaces with a marked breaking minor; pre-release and build labels.

## Dissent preserved

- **Defender:** the adoption note should carry a version of its own by requirement, because it is the one derived document every project has and the only one on which the pin rule bites; optional makes the contract opt-in. Did not prevail against the maintainer's stated position.
- **Defender:** a new example should be PATCH where it only illustrates a reading the text already fixes. Not adopted; new content to read is MINOR, and the simpler rule is easier to apply.
- **Defender:** breaking should be two-sided: also when what the document claims for its corpus is weakened, so that a withdrawn path or profile, or an added or widened exception, is breaking. Not adopted; the adopted rows 16 to 18 follow 8.3 (c), under which retiring or relaxing is not breaking, and a document may treat more as breaking than that requires.
- **Minimalist:** the correction of a wrong descriptive statement should be PATCH, as in SemVer. Not adopted; a changed material meaning is something an agent should reread, so MINOR.

## How this was produced

Drafted by an automated agent; challenged by two automated agents that did not see each other's reports; synthesized by the drafting agent; reviewed by a further automated agent against the 0.9.0 draft for accidental strengthening. Automated review, not verification by a person (clause 3.5). The repository maintainer is the author of record.
