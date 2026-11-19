# J-027  -  Status visible where the reader meets the material (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Clause 3.1.4, lettered: (a) when material is superseded or withdrawn it MUST say so in visible text where a reader who opens it directly will meet it, in the material or, for material preserved unaltered, in a note at the same location; (b) it MUST point to current guidance where that exists; (c) for a document the statement SHOULD be in the title or top heading; (d) an absent mark does not establish currency, and material superseded before adoption MAY be identified collectively at the entry point.

## Evaluation record

```yaml
candidate:
  id: J-027
  title: "Status visible where the reader meets the material"
  source: "ISO 9001:2008 clause 4.2.3 g), a withdrawn edition, on preventing unintended use of obsolete documents (wording known from secondary sources; not inspected). The draft cited ISO 9001:2015 clause 7.5.3.2, which, according to secondary sources, does not contain it; no edition was inspected. The principle is adopted on its own argument, not on that authority."
  original_problem: "A reader, search engine, or retrieval system lands directly on superseded material and takes it as current. The entry point is never seen."
  proposed_kads_rule: "New core clause, MUST, covering historical, superseded, deprecated, and snapshot material."

evaluation:
  expected_benefit: "Superseded guidance cannot be mistaken for current guidance by a reader who arrives directly"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "high"
  retrieval_value: "high"
  machine_readability_value: "high"
  human_readability_value: "high"

risks:
  ambiguity: "medium"
  duplication: "low"
  bureaucracy: "medium"
  over_modeling: "none"
  premature_standardization: "low"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Unmarked pages are assumed current; evidence is edited to add a banner"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "One of two candidates, with J-015, that all six challengers kept as a mandatory core rule, and every one of them rewrote it. From the cognitive-load challenger: one concept, not four states. From the operations challenger: the duty arises when material is superseded, so a legacy archive is handled at the entry point and not page by page, and an absent mark proves nothing. From the standards and traceability challengers: a note beside preserved evidence, so the rule does not collide with clause 3.4.2. From the AI challenger: visible text, and the title or heading, because a banner protects only the first retrieved chunk."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/CORE, Cognitive load MODIFY/CORE, Traceability MODIFY/CORE, Operations MODIFY/CORE, AI and retrieval MODIFY/CORE, Standards MODIFY/CORE.

### Arguments for adoption

- **Minimalist:** This is the one new MUST that pays for itself: readers and retrievers land on a superseded page directly, and 3.1.1 only obliges the entry point, which they never see.
- **Cognitive load:** This is the strongest reader-side candidate: a cold reader or retriever lands on the old page, not the index, and one line at the top prevents acting on dead guidance. Cost to the author of a current ten-line how-to: zero until the page is replaced.
- **Traceability:** This closes the largest current gap for 'can superseded be distinguished from current': 3.1.1 protects only readers who arrive through the entry point, and 4.5 only tracked records. A MUST is justified because the failure is silent and the reader cannot detect it.
- **Operations:** Readers, search, and retrievers land on pages, not on entry points, so a status that lives only in an index protects nobody. Marking the old page at the moment it is superseded is cheap and is what ISO 9001 draft 7.5.3.2 asks.
- **AI and retrieval:** This is the most important addition in the package for retrieval: it moves the currency signal from the entry point, which a retriever never sees, onto the material. A MUST is warranted.
- **Standards:** Readers and retrievers do land on stale pages directly, and 3.1.1 only obliges the entry point; a marker on the material itself is the one candidate in this package that closes a demonstrated gap.

### Arguments against adoption

- **Minimalist:** As worded it over-reaches. 'Historical' is undefined (a completed report, an accepted ADR and a changelog are all historical); 'dated snapshot' is already governed by 3.2.2; 'before its content' prescribes placement and cannot be met for evidence that 3.4.2 says to preserve as collected or for immutable archives. It makes existing conformant corpora nonconformant, so it is a breaking change, and it deserves a sentence in 3.1.1 rather than a clause.
- **Cognitive load:** The wording lists four overlapping states (historical, superseded, deprecated, dated snapshot) that the reader and author must tell apart, which is the J-002 problem inside the clause; 'deprecated' is not used anywhere else in the specification and snapshots are already governed by 3.2.2. As an unconditional MUST it makes every legacy archive nonconformant on adoption day, and it collides with 3.4.2: preserved evidence is historical by nature and should not be edited to carry a banner.
- **Traceability:** The wording collides with other clauses and omits the trace. 'In the material itself' cannot be met for preserved evidence, logs, PDFs, or binaries, and editing them conflicts with 3.4.2 (preserve as collected); 3.4.5 already solved this with 'or in a note or manifest at the same location'. The clause requires a pointer forward but not when or why the material stopped being current, so the reader learns that it is superseded but cannot trace the reason, which 3.4.1 requires only for reversed decisions and replaced findings. It also holds two requirements in one clause (see J-026).
- **Operations:** On a legacy repository with hundreds of pages the cost is not the banner but the triage: someone must decide for every page whether it is historical, and for most the honest answer is unknown, a state the clause does not recognize. As a core MUST it makes every existing adopter nonconformant on upgrade (a breaking change under 6.2) and creates the inference that an unmarked page is current, which is false in any partially adopted corpus and worse than today's ambiguity. 'In the material itself, before its content' conflicts with 3.4.2 for preserved evidence and with immutable exports and PDFs, and it does not achieve its stated aim for retrievers, since a banner at the top does not travel with a chunk from the middle while a path such as archive/ does. 'Dated snapshot' and 'historical' are undefined against incident reviews and research reports, which are dated by nature. Unmarked historical pages cannot be found by grep; only marked ones can.
- **AI and retrieval:** 'In the material itself, before its content' is a page-banner rule, and a banner protects only the first chunk. A retriever returns the section 'Configuration' from the middle of a superseded page with no marker, alongside the current page's section, and the model has two equally authoritative texts. The wording also leaves three holes: a superseded passage kept inside an otherwise current page; status carried only in front matter, which is arguably 'in the material' but is stripped; and no trigger, since nothing tells the author or agent who writes a replacement to go and mark the old page.
- **Standards:** The cited basis is wrong: the obsolete-document wording is ISO 9001:2008 4.2.3 g); 2015 clause draft 7.5.3.2 does not say it, and ISO 9001:2026 has since replaced the 2015 edition. The unconditional MUST also collides with KADS's own rules: preserved evidence is kept as collected (3.4.2), earlier runs must not be overwritten (3.4.4), tagged releases and version history are immutable, and generated or binary material cannot carry a banner 'before its content'; it overlaps 3.2.2 for snapshots and 4.5 for tracked records, and it is a breaking change under 6.2.

### Failure modes

- **Minimalist:** Adopters must retrofit banners onto every old page, or declare a blanket exception for archives; banners with no replacement link ('this is historical') accumulate and readers stop reading them.
- **Cognitive load:** Adopters with an old archive file a blanket exception, so the clause protects least where stale pages are most numerous; or someone bulk-inserts banners into preserved evidence and alters it.
- **Traceability:** Teams banner raw evidence files, altering them, or skip the rule for anything not Markdown. Pages say 'DEPRECATED' with no date, no reason, and a link to an index instead of the replacement.
- **Operations:** Either a bulk script stamps 'historical' on everything older than a cutoff, mislabeling authoritative pages that simply have not changed, or nothing is marked and the adoption note quietly carries a permanent exception. In both cases agents learn 'no banner means current' and trust the stale majority.
- **AI and retrieval:** Page-top banner present, clause satisfied, and the retrieved mid-page chunk still presents superseded instructions as current. Or an agent writes the new guide and never touches the old one because no clause attaches the duty to the act of replacing.
- **Standards:** Every old KADS tag, archived report, and evidence file is technically nonconformant, so adopters either edit preserved material or file blanket exceptions that empty the rule.

### Tradeoffs

Material superseded before adoption is not marked page by page. Marking sections inside a long current page is left to the authoring guide.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** Anticipated only; no observed case. Admitted as a MUST on the harm ground: a reader who lands on withdrawn guidance acts on it.
- **Protected property:** Current guidance can be found.
- **How a violation is detected:** Reading one page that is known to be superseded; the clause is triggered by the act of superseding, so the reviewer of that change checks it.
- **Cost on adoption day:** One line on each page superseded from now on; one sentence at the entry point for an older archive.


### Final assessment

One of two candidates, with J-015, that all six challengers kept as a mandatory core rule, and every one of them rewrote it. From the cognitive-load challenger: one concept, not four states. From the operations challenger: the duty arises when material is superseded, so a legacy archive is handled at the entry point and not page by page, and an absent mark proves nothing. From the standards and traceability challengers: a note beside preserved evidence, so the rule does not collide with clause 3.4.2. From the AI challenger: visible text, and the title or heading, because a banner protects only the first retrieved chunk.

**Reopen when:** An adopter reports stale guidance acted on despite the clause, for example from a middle section of a long superseded page.
