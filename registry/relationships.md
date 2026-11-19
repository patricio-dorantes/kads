# Relationship vocabulary

This page lists the meanings a link between records can carry, such as "supported by" or "supersedes", so that authors use the same words for the same connection. It applies to projects that chose the tracked-record profile, 7.1 in the [specification](../docs/specification.md). For those projects it states rules, as the specification says in its preface under "Which documents are rules".

This vocabulary is normative for material relationships in the tracked-record profile (specification clause 7.1.3). A labeled Markdown link is sufficient. Read each relation as “this subject [relation] that target.” The target can be a record, section, source, code, or other identifiable artifact.

| Relation | Meaning | Example use | Reverse link |
|---|---|---|---|
| `summarizes` | Gives a shorter account of the target | Index to detailed finding | Optional, written “Summarized by” |
| `supported-by` | Relies on reasoning or evidence in the target | Conclusion to analysis or source | Optional, written “Supports” |
| `evidenced-by` | Points to content recording the reported observation | Test run to output | Optional, written “Evidence for” |
| `derived-from` | Was calculated or transformed from the target | Result table to dataset | Optional, written “Source of” |
| `tested-by` | Is evaluated by the target test | Claim to validation procedure | Optional, written “Tests” |
| `implemented-by` | Is realized by the target implementation | Decision to code or configuration | Optional, written “Implements” |
| `depends-on` | Relies on the target condition or prerequisite | Procedure to required environment | Optional, written “Required by” |
| `contradicts` | Conflicts with the target within overlapping scope | Finding to incompatible finding | Optional; the relation is symmetric |
| `supersedes` | Replaces the target for a stated scope while preserving history | New decision to prior decision | Required (clause 7.1.4), written “Superseded by” on the replaced record |
| `answers` | Resolves the target question within a stated scope | Finding to question | Optional, written “Answered by” |
| `related-to` | Has a useful association without a stronger claim | Background content | Optional |

A relation does not prove a claim. A `tested-by` link does not imply the test passed; an `evidenced-by` link does not imply that the evidence is conclusive. `implemented-by` SHOULD point to an actual implementation, not merely a proposed task. A factual conclusion need not have an implementation.

Use the strongest accurate relation and explain its relevance when it is not obvious. For `contradicts`, identify the scope of the conflict before treating two statements as incompatible. For `supersedes`, identify whether replacement is partial or complete.

Human-readable labels such as “Supported by” express the same meaning as `supported-by`. Ordinary navigation and source citations do not need a metadata graph. Projects MAY extend this vocabulary if they document the meaning and direction of the added relation. A proposed relation should name the reader question the existing vocabulary cannot answer and one real case where it arose; see the [admission test](../CONTRIBUTING.md#admission-test-for-new-rules). Relations considered and not added, including `refines`, are recorded with their reopening conditions in the [standards evaluation](../decisions/standards/README.md).

## Reverse links

`supersedes` is the only relation whose reverse link is required. The replacement record writes “Supersedes: [old record]”; the replaced record writes “Superseded by: [replacement]”. Both are the same relation read from either end, so historical entry points remain useful without introducing a second relation name. Other inverse links are optional; prefer one maintained direction unless a reverse link serves readers. The labels in the last column of the table are the same relation written from the target, not additional relations. Use the registry labels verbatim so that a plain text search finds every use. A source change SHOULD trigger a search for dependent records and review of known summaries.

## Correspondence with PROV

The relations `derived-from`, `evidenced-by`, and `supersedes` have close counterparts in the W3C [PROV Data Model](https://www.w3.org/TR/prov-dm/): `wasDerivedFrom`, `wasGeneratedBy` together with `used`, and `wasRevisionOf`. The correspondence is approximate: PROV relates entities, activities, and agents, and says nothing about the standing of a statement. KADS does not require PROV serialization. The correspondence is recorded so that a future mapping for tool interchange has a documented starting point; see the [sources](../docs/sources.md) page.
