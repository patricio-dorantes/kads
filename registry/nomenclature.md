# Record nomenclature

This page lists the kinds of record a project can track under KADS, the identifier each kind gets, and the lifecycle states each can be in. It applies only to projects that chose the tracked-record profile, 7.1 in the [specification](../docs/specification.md). Ordinary documentation needs none of it. For projects that use the profile, this page states rules, as the specification says in its preface under "Which documents are rules".

This vocabulary is normative for the tracked-record profile (specification clauses 7.1.1, 7.1.2, and 7.1.5). Ordinary documentation does not require a type, ID, or metadata block. Projects MAY document local extensions or mappings without editing this shared registry. A proposed type or status should name the reader question the existing vocabulary cannot answer and one real case where it arose; see the [admission test](../CONTRIBUTING.md#admission-test-for-new-rules).

## Types and lifecycle states

| Prefix | Type | Responsibility | Status values |
|---|---|---|---|
| `CON` | conclusion | State one bounded finding | `draft`, `provisional`, `accepted`, `rejected`, `superseded` |
| `DEC` | decision | Record a choice, authority, rationale, and consequences | `proposed`, `accepted`, `rejected`, `deprecated`, `superseded` |
| `INV` | investigation | Connect a question, observations, analysis, and result | `planned`, `active`, `blocked`, `complete`, `superseded` |
| `TST` | test | Describe a validation procedure and identified executions | `planned`, `ready`, `blocked`, `complete`, `superseded` |
| `EVD` | evidence | Identify a source, its provenance, and its limitations | `available`, `restricted`, `unavailable`, `superseded` |
| `QST` | question | Track an unresolved issue that could change knowledge or action | `open`, `investigating`, `answered`, `deferred`, `closed` |

Each prefix is the first letters of its type, so that an identifier such as `DEC-014` can be read without this table. The single-letter prefixes `C`, `D`, `J`, `T`, `E`, and `Q` are accepted short forms of the same six types, in the order of the table. A corpus that already uses them keeps them, because identifiers never change. The two forms are different identifiers: `D-014` and `DEC-014` name different records, so a corpus uses one form per type. A corpus whose local vocabulary already uses one of the three-letter prefixes for another type keeps its meaning and says so in its local mapping.

These prefixes are defaults for new records, not meanings imposed on existing identifiers. Preserve existing requirement categories, test IDs, and conclusion prefixes through a local mapping. An architectural decision may use `ADR` mapped to type `decision`; do not allocate both an ADR identity and a `DEC` identity for the same object. Existing local status values may also be mapped with their meanings and required information locations documented. See the [decision guide](../docs/decision-guide.md).

Artifacts do not require a new universal record type. Use native resource identities and explain their roles; if independently tracking an artifact record, document the local type, statuses, and field mapping. A resource can be implementation and evidence for different claims.

Hypotheses and assumptions do not need record types of their own. A tracked hypothesis is a conclusion record in status `draft` or `provisional` whose text states what would confirm or refute it. A tracked assumption awaiting verification is a question record in status `open`; records that rely on it link to it with `depends-on`, and those links are the review list when the question is answered against the assumption.

Status meanings:

- `draft` / `proposed`: awaiting assessment or choice.
- `provisional`: usable as a tentative finding, with limitations disclosed.
- `accepted`: adopted as the current finding or authorized choice for the stated scope; not a guarantee of truth.
- `rejected`: assessed and not adopted; retain the reason.
- `deprecated`: a decision should no longer guide new work; state the remaining scope, if any.
- `planned` / `ready` / `active`: work is intended, prepared for execution, or underway.
- `blocked`: work cannot proceed; state why and what would unblock it.
- `complete`: the recorded investigation or test work is finished, regardless of its result.
- `available` / `restricted` / `unavailable`: the source is reachable by intended readers, access is limited, or it cannot currently be obtained. These are access states, not assessments of validity.
- `open` / `investigating`: a question awaits work or is being examined.
- `answered`: a question has a scoped answer; link to it.
- `deferred` / `closed`: work on a question is postponed or ended; explain why, and whether it remains unanswered.
- `superseded`: another record has replaced this one; link both ways.

No universal transition sequence is required. A material status change MUST include its reason. Evidence that is invalid or no longer applicable MUST say so in its assessment; changing access status is insufficient.

## IDs and namespaces

The default ID format is a prefix, a hyphen, and at least three digits, such as `CON-001`. Allocate an unused number per prefix within the project's declared namespace. Numbers SHOULD increase, but gaps are harmless. Check for collisions when concurrent work is combined. Where several people or branches create records at the same time, a project MAY reserve number ranges or build the number from the date, as in `DEC-2026-10-03-1`, so that two records cannot take the same one. IDs MUST NOT encode the current directory, and MUST NOT be recycled. The reasoning is the one Berners-Lee gives in [Cool URIs don't change](https://www.w3.org/Provider/Style/URI): an identifier that encodes location or current organization breaks when either changes.

The adoption note MUST define the namespace boundary, normally a project or a named corpus. The same short ID can exist in different corpora. A cross-corpus reference MUST name the corpus and provide a resolving link. KADS example IDs belong to the example corpus and do not reserve IDs in consuming projects.

## Minimum record information

Each tracked record MUST identify `id`, `type`, `title`, `status`, and `updated`. A heading can supply the title and ID; a short labeled block can supply the rest. Where the corpus is under version control, the version history MAY supply `updated` (clause 7.1.1). Front matter MAY be used instead. Do not maintain a second metadata copy for the same purpose.

Use absolute dates in the `YYYY-MM-DD` calendar form of [ISO 8601](https://www.iso.org/standard/70907.html), which [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339) profiles for interchange; add a time and offset in the same form when a time of day matters. `updated` records the last substantive edit. Observation time, execution time, effective date, and verification date have different meanings and MUST be recorded separately when relevant. Unknown dates MUST NOT be inferred from a file's edit date.

Additional information such as owner, environment, source revision, confidence rationale, or review trigger belongs where it helps a reader or maintainer. Do not add unused fields.
