# J-020  -  Docs as code: tool-independent sources (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

No clause. The adoption guide states the preference and cites the source accurately. The adoption-note outline gains one line for sources held outside version control.

## Evaluation record

```yaml
candidate:
  id: J-020
  title: "Docs as code: tool-independent sources"
  source: "Write the Docs community guide \"Docs as Code\" (inspected 2026-10-03), which defines the practice as writing documentation with the same tools as code. It does not make the format-openness claim the draft attributed to it."
  original_problem: "Knowledge held in a proprietary tool cannot be compared between revisions, reviewed with the work, or read once the tool is gone."
  proposed_kads_rule: "New core clause, SHOULD."

evaluation:
  expected_benefit: "Sources stay readable and reviewable"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "medium"
  traceability_value: "medium"
  retrieval_value: "medium"
  machine_readability_value: "high"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "medium"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Adopters draw the corpus boundary around Markdown only to avoid the rule"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: GUIDANCE
  rationale: "Four challengers moved it to guidance: it is a once-per-project decision, not a per-page rule, and a tooling preference in Core contradicts clauses 1.1 and 3.5.3. Two wanted it in Core. A core SHOULD is not free, because clause 1.2 asks for the reason behind each departure."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/GUIDANCE, Traceability ADOPT/CORE, Operations MODIFY/GUIDANCE, AI and retrieval ADOPT/CORE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** Knowledge locked in a proprietary tool cannot be diffed or reviewed, and it is lost when the tool goes; this is a real cost.
- **Cognitive load:** Sources that can be diffed and read without a licence outlive their tools and can be reviewed with the work; that is a real maintenance property.
- **Traceability:** Comparison between revisions is what makes 3.4.1's 'version history MAY provide that preservation' actually usable; a source that cannot be diffed cannot show what changed or when. SHOULD strength with an escape clause is proportionate.
- **Operations:** Knowledge that cannot be diffed or reviewed with the change it describes drifts, and knowledge locked in a discontinued tool is lost. The fallback sentence (say where the source lives and how to get its content) is a sensible floor.
- **AI and retrieval:** Content that cannot be read as text cannot be indexed, diffed, or reviewed by an agent, and an agent cannot verify a claim whose source is locked in a tool it cannot open. A SHOULD with a stated fallback is proportionate.
- **Standards:** Knowledge that cannot be read or diffed without one vendor's tool is a real preservation risk, and the second sentence gives a fallback.

### Arguments against adoption

- **Minimalist:** Clause 1.1 says KADS does not prescribe a publishing platform or tooling, and 3.5.3 says it does not require a format. draft 3.5.4 is a tooling preference in Core: every adopter on a wiki, a drawing tool or a slide deck is in standing departure from a SHOULD and owes a recorded reason under 1.2. The fallback sentence is already covered by 3.5.1 (access restrictions stated) and 3.6.2 (generated views identify maintained sources).
- **Cognitive load:** It benefits maintainers, not the reader arriving cold, who by definition is already reading the content. It is a platform recommendation in a standard whose clause 1.1 says it does not prescribe a publishing platform or tooling and whose 3.5.3 says no particular format. As a Core SHOULD, 1.2 makes every wiki, slide deck, spreadsheet and diagram-tool adopter record a standing departure. 'Proprietary tooling' is undefined: a hosted forge, a diagram editor with an open file format, a notebook? The second sentence is already 3.6.2 (identify maintained sources) plus 3.5.1 (state access restrictions).
- **Traceability:** The clause addresses format but not retention. 3.4.1 lets version history stand in for preserved prior meaning, yet nothing says the history relied upon must itself survive; a squash, rewrite, or tool migration silently deletes the only record of a reversed decision. The proposal also creates one more Core SHOULD whose departures need recorded reasons under 1.2.
- **Operations:** As core text it contradicts clause 1.1 (no publishing platform or tooling prescribed) and 3.5.3, and it does not survive real organizations: the operational corpus is in a wiki, runbooks are attached to alerts in the paging tool, diagrams are in a proprietary drawing tool, and architecture reviews are slide decks. 'Proprietary tooling' is undefined: a hosted wiki has revision compare; a diagram XML file is text with an unreadable diff; a PNG export is readable but not comparable. The second sentence duplicates 3.5.1 and 3.6.2. Under clause 1.2 each diagram and deck owes a recorded departure. And it misses the property operations care about: whether the runbook is reachable when the system it repairs, or the single sign-on in front of the wiki, is down.
- **AI and retrieval:** It sits uneasily with clause 1.1 ('does not prescribe ... tooling') and arguably fails J-031: a corpus in a hosted wiki can satisfy every epistemic property KADS protects. It also overlooks the commonest opaque source in otherwise text-based corpora: a canonical diagram or table kept only as an image, which is 'readable without proprietary tooling' yet invisible to text retrieval.
- **Standards:** The clause is not what the cited source says: Write the Docs defines docs as code as using the same tools as code (version control, plain text markup, review, tests), not format openness. As Core text it collides with clause 1.1 ('does not prescribe ... tooling') and 3.5.3 ('does not require a particular format'), 'proprietary tooling' is undefined (a .docx is an ISO/IEC 29500 format; Git is a tool), and it does not fit hardware, legal, or regulated corpora that live in document-management systems.

### Failure modes

- **Minimalist:** Adopters with wiki-based corpora either file a permanent blanket exception or quietly ignore the clause; neither changes where the knowledge lives.
- **Cognitive load:** Adopters on a wiki either add a boilerplate exception that every reader of the adoption note must parse, or quietly ignore the clause, which teaches them that SHOULD clauses are decorative.
- **Traceability:** A project relies on wiki page history for superseded decisions, migrates to another platform, and loses every prior version while remaining nominally conformant.
- **Operations:** Adopters respond by drawing the corpus boundary around the Markdown files only, so the wiki and the diagrams, where the stale and dangerous content lives, fall outside KADS entirely. The clause then improves nothing and shrinks coverage.
- **AI and retrieval:** A canonical architecture diagram exists only as a PNG; the clause is met, the content is unsearchable, and an agent describes the architecture from stale prose instead.
- **Standards:** Every adopter using a wiki or office suite must record a standing SHOULD departure, and reviewers argue over what counts as proprietary.

### Tradeoffs

A corpus kept entirely in a proprietary tool can still conform.


### Final assessment

Four challengers moved it to guidance: it is a once-per-project decision, not a per-page rule, and a tooling preference in Core contradicts clauses 1.1 and 3.5.3. Two wanted it in Core. A core SHOULD is not free, because clause 1.2 asks for the reason behind each departure.

**Reopen when:** An adopter loses access to maintained sources because of a tool, with the case documented.
