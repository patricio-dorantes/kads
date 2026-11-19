# J-028  -  Chain of custody and integrity hashes for evidence (rejected)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** REJECT, target layer NONE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No requirement. The artifact guide gained three sentences: bulk editing passes exclude preserved evidence; evidence outside version control cited for a material claim gets a digest or immutable identifier and a collection time where it is cited; custody for legal or forensic purposes is outside KADS.

## Evaluation record

```yaml
candidate:
  id: J-028
  title: "Chain of custody and integrity hashes for evidence"
  source: "Digital-forensics practice; no single source cited."
  original_problem: "Evidence that may have been altered cannot be relied on in a dispute."
  proposed_kads_rule: "Reject as a requirement."

evaluation:
  expected_benefit: "Proof that bytes were not altered"
  cognitive_cost: "medium"
  authoring_cost: "medium"
  maintenance_cost: "high"
  tooling_dependency: "medium"
  interoperability_value: "low"
  traceability_value: "high"
  retrieval_value: "none"
  machine_readability_value: "medium"
  human_readability_value: "low"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "high"
  over_modeling: "medium"
  premature_standardization: "high"
  vendor_or_tool_lock_in: "low"
  misuse_risk: "Checksums recorded for everything and verified by nobody"

decision:
  disposition: REJECT
  target_layer: NONE
  rationale: "Four challengers rejected. The operations and traceability challengers pointed to a practical integrity risk that is new, agents making formatting passes over evidence, which guidance now names."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/NONE, Cognitive load REJECT/NONE, Traceability MODIFY/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval REJECT/NONE, Standards REJECT/NONE.

### Arguments for adoption

- **Minimalist:** The artifact guide already states the right position: a checksum identifies bytes, not collection, and is added only when there is an integrity need.
- **Cognitive load:** The artifact guide already says when a checksum is worth adding and what it does not prove; 3.4.4 and 3.4.5 cover identity and disclosure.
- **Traceability:** Formal chain of custody is a legal-evidence regime with signatures and handover logs; it would exclude nearly every adopter and the artifact guide is right that a checksum identifies bytes but does not authenticate collection.
- **Operations:** Forensic chain of custody is far beyond what ordinary technical evidence needs, and the artifact guide already says a checksum identifies bytes without authenticating collection.
- **AI and retrieval:** Rejecting a requirement is right; hashes do not authenticate collection, and a manifest of checksums an agent generated after the fact is integrity theater.
- **Standards:** 3.4.2, 3.4.4, and 3.4.5 give identity and disclosure; forensic custody is a legal-admissibility regime with its own standards and KADS would only produce a weak imitation.

### Arguments against adoption

- **Minimalist:** No credible counterargument.
- **Cognitive load:** No credible counterargument: custody logs and hashes are maintained metadata whose absence harms almost no documentation reader, and a hash displayed without an integrity need reads as authentication it does not provide.
- **Traceability:** Rejecting the whole candidate discards its cheap half. 3.4.2 says evidence SHOULD be preserved as collected and 3.4.5 requires disclosure of changes, but both depend entirely on the honesty and memory of whoever changed the file: with no recorded digest or revision at the time of citation, an undisclosed alteration is undetectable by any later reader. Evidence inside version control gets this for free; evidence in object stores, shared drives, or ticket attachments gets nothing. Collector identity is also not required anywhere (3.6.1 lists location, version, role, limits).
- **Operations:** Outright rejection misses a concrete risk in repositories with text-hygiene passes and AI agents: bulk edits (whitespace normalization, punctuation replacement, reformatting, link rewriting) silently alter preserved evidence, violating 3.4.2 with nobody noticing, and 3.4.5 redaction disclosures cannot be checked without a baseline. Version control gives hashes for in-repository evidence at no cost, so the real gaps are evidence in object storage or tickets and the absence of any rule keeping bulk edits out of evidence paths. A checksum manifest is one command and is the only mechanical check available for 'preserved as collected'.
- **AI and retrieval:** The artifact guide says to add a checksum 'when there is an integrity need' but was written before agents had write access to evidence directories. An agent asked to fix formatting, redact a token, or 'clean up' a results folder will silently rewrite collected output, which 3.4.2 forbids but nothing detects.
- **Standards:** No credible counterargument for making custody or hashes a requirement: the artifact guide already states the limit of a checksum correctly. The gap is only that the rejection points adopters nowhere; a project with a real integrity need should be told to follow a forensic standard (for example ISO/IEC 27037; not checked today) rather than extend KADS locally.

### Failure modes

- **Minimalist:** n/a if rejected.
- **Cognitive load:** If required, hashes would be computed after the fact and trusted as proof of collection.
- **Traceability:** A log bundle cited by an accepted conclusion is re-exported with different filters to the same path; the conclusion still links to it and nothing reveals that the bytes are not the ones that were analyzed.
- **Operations:** A corpus-wide punctuation or formatting pass, by a person or an agent, rewrites captured logs and command output; the evidence now differs from what was collected and no disclosure is recorded because nobody regarded it as a change.
- **AI and retrieval:** An agent normalizes line endings and trims 'noise' from a preserved run log; the evidence no longer matches what was collected and no record shows it.
- **Standards:** An adopter with legal-hold evidence builds a home-made custody log 'under KADS'.

### Tradeoffs

Integrity of evidence in version control rests on the version history.


### Final assessment

Four challengers rejected. The operations and traceability challengers pointed to a practical integrity risk that is new, agents making formatting passes over evidence, which guidance now names.

**Reopen when:** An adopter finds evidence altered by an editing pass despite the guidance.
