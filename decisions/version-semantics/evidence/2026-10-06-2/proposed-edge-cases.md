# Proposal: two edge cases of clause 8.4 (DRAFT, to be challenged)

Current 8.4 (b) ends: "a declared version MUST NOT be reused for changed content." Current 8.4 (c): "A change of the pinned KADS version is at least a minor change to the document, and is breaking when a KADS version after the old pin and up to the new one identifies a breaking change, unless the document records that none of those changes applies to the covered corpus."

Semantic Versioning 2.0.0, inspected 2026-10-06: "Once a versioned package has been released, the contents of that version MUST NOT be modified. Any modifications MUST be released as a new version." Pre-release identifiers (1.0.0-alpha, 1.0.0-rc.1) are optional, have lower precedence than the release, and "indicate that the version is unstable".

## A. Drafts before release

Finding: the current sentence protects the wrong thing. Read literally it forbids editing a document that already declares "Version: 0.9.0" while it is still being prepared, which is what KADS itself does on a release branch (VERSION says 0.9.0; the tag does not exist). The invariant wanted is the one 8.3 (b) already states for KADS: a released version identifies content that does not change.

Proposed 8.4 (b) ending: "once a version has been released, the content it identifies MUST NOT change." (Replaces the no-reuse sentence; same invariant as 8.3 b; relaxes drafts.)

"Released" stays a plain word, as in 8.3 (b). Guidance (adoption guide and clause guide) says how a reader tells a draft from a release, in two accepted ways: a pre-release identifier in the version (0.9.0-rc.1), or a visible statement beside the version that it is a draft of that version and not yet released. Prerelease identifiers are recommended for documents that will be read by agents, not required: they make the distinction visible in the number alone, and SemVer gives them lower precedence, so an agent comparing versions is not misled. KADS itself: its About section should say that a copy whose version is not published as a tag is a draft of that version; the preface's "Status: draft, before 1.0" means pre-1.0 instability, not "this copy is unreleased", and should be reworded to avoid the conflation.

Cases: "Version 0.9.0, Status: draft" edited repeatedly: conformant (not released). "0.9.0-rc.1": conformant; the rc may itself be released and then frozen, the next candidate is rc.2. Released 0.9.0: frozen. Content changed after release: nonconformant unless it becomes 0.9.1 or later.

## B. Downgrading the pin (2.3.0 to 2.1.0)

Finding: 8.4 (c) is phrased for forward moves ("after the old pin and up to the new one"); for a downgrade no version lies in that range, so a literal reading says "at least minor, never breaking by (c)". But 8.4 (b) still applies the 8.3 (c) test: breaking if the covered corpus could become nonconformant to the document or a rule, mapping, status, or relation the document relies on changes meaning. For a downgrade that happens when the note references clauses, statuses, or relations that the older KADS lacks or defines differently. The four cases: (1) accidental adoption reverted: minor, unless (3). (2) intentional return to the older baseline: same test. (3) newer requirements already adopted into the corpus: the corpus stays conformant to the older KADS, since more than required is not nonconformance; breaking only where the note cites rules or vocabulary absent or different in the older version. (4) none affected: minor.

Smallest change: make (c) direction-neutral with three words, so that a breaking change between the two pins counts whichever way the pin moves, because reversing a breaking change is also a change of meaning: "when a KADS version between the old pin and the new one, in either direction, identifies a breaking change, unless the document records that none of those changes applies to the covered corpus." No downgrade ontology; guidance gives one example.

Alternatives considered: every downgrade breaking (overstates: case 4); leave unspecified (literal (c) then gives a determinate but wrong answer for case 3); guidance only (the literal gap is in normative text, so guidance cannot fix it).

## Strength
A is a relaxation (drafts may change). B closes a gap; a downgrade across a breaking release was arguably already breaking under (b), so this is a clarification. Neither is breaking for adopters. Neither is required before releasing 0.9.0 on conformance grounds, but A as currently worded makes KADS's own release practice nonconformant with its own 8.4 if KADS's specification is read as a derived document, so it should ship with 0.9.0.
