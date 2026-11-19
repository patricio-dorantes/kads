# J-014  -  Openings and sections that survive out-of-context reading (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

One paragraph added to the existing "Write a usable first answer" section of the authoring guide, with no new heading: open with what the page answers and for which scope, name the subject in headings, name and link a referent instead of writing "as above", and state a section's own scope or status when it differs.

## Evaluation record

```yaml
candidate:
  id: J-014
  title: "Openings and sections that survive out-of-context reading"
  source: "DITA 1.3 short description element as precedent. The retrieval argument is the authors' rationale, not a cited source."
  original_problem: "Readers and retrieval systems land on a middle section with nothing above it in view."
  proposed_kads_rule: "Guidance: a \"Writing for retrieval\" section."

evaluation:
  expected_benefit: "Sections that make sense when retrieved alone"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "medium"
  retrieval_value: "high"
  machine_readability_value: "high"
  human_readability_value: "high"

risks:
  ambiguity: "medium"
  duplication: "medium"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Authors restate content in every section and create duplicates"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: GUIDANCE
  rationale: "Five challengers chose guidance. The AI and retrieval challenger wanted a core SHOULD and argued that every other protection depends on section self-containment under retrieval. That dissent is recorded; no observed failure was available, and the admission test keeps anticipated-only rules out of Core unless a reader could be harmed."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/GUIDANCE, Cognitive load MODIFY/GUIDANCE, Traceability MODIFY/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/CORE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** Deep links, search and retrieved chunks are how pages are actually reached now; an opening that states subject and scope is cheap and helps humans as much as retrievers.
- **Cognitive load:** Readers and retrieval systems do land mid-page; an opening sentence that names subject and scope and headings that name their subject cut orientation time for almost no author effort.
- **Traceability:** Readers and retrieval systems land mid-page; advice to restate scope and referents is cheap and helps the reader determine what a statement applies to.
- **Operations:** Deep links from alerts, search results, and retrieved chunks are how operational pages are actually reached; subject-naming headings and no 'as above' are cheap and partly greppable.
- **AI and retrieval:** The content of the proposal is right: say what the page answers and for what scope, name subjects in headings, and avoid referents that live elsewhere on the page.
- **Standards:** The DITA short description is an accurate precedent, and guidance-only placement adds no conformance burden.

### Arguments against adoption

- **Minimalist:** A new section titled 'Writing for retrieval' duplicates the existing 'Write a usable first answer' section and the 'titles that describe the information sought' paragraph. 'Restate the referent each section depends on' is also in tension with 3.2.1: it invites repeated context that then needs maintenance.
- **Cognitive load:** The authoring guide already has 'Write a usable first answer' and the advice to use titles that describe the information sought. A new section named 'Writing for retrieval' introduces a named concept for what is two more sentences of the same advice, and the guide gets a second place to look. 'Restate the referent a section depends on' is repetition by rule: it lengthens pages and creates copies that drift, against 3.2.1. For a ten-line how-to the whole page is one chunk and the advice is moot.
- **Traceability:** Guidance about openings does not carry status or provenance into a chunk. A retrieved section of a superseded page has no banner (J-027 puts it before the content, at the top), and a section with 'as measured above' has lost its source. The proposal treats retrieval as a readability matter when the larger risk is a chunk presented as current, sourced knowledge.
- **Operations:** Two problems. First, 'restate the referent a section depends on' collides with 3.2.1 and 3.2.2: restated scope and context are unmaintained copies unless kept to a line and treated as summaries. Second, guidance understates the dangerous case: a retrieved chunk containing 'Step 5: delete the volume' without the condition and hazard stated above it. That case is a procedure rule (draft 7.3, draft 7.4 adjacency), not a style tip, and the page-top banner of J-027 does not travel with a chunk either.
- **AI and retrieval:** Guidance is the wrong layer. Out-of-context reading is not a technique; it is now the normal way documentation is read (deep link, search hit, retrieved chunk), and every other protection in Core (scope in 3.1.1, qualifications in 3.2.2, status in the proposed draft 3.1.5) is defeated when a section cannot be understood alone. Clause 3.1.2 covers the document opening only. By the package's own J-031 test, the cost of the missing rule (wrong answers assembled from sections stripped of subject and scope) exceeds the cost of a bounded SHOULD.
- **Standards:** 'Information-retrieval and AI-chunking practice' is not a citable source, so the guidance would rest on an unsupported basis under 3.3.1. 'Restate the referent a section depends on' pulls against 3.2.1: repeated context is how independently maintained copies start, and the opening-sentence advice largely repeats 3.1.2 and overlaps J-027.

### Failure modes

- **Minimalist:** Authors paste a scope preamble at the top of every section; the corpus grows by duplication and the copies diverge.
- **Cognitive load:** Authors prepend a context paragraph to every section; pages double in length, the restated context goes stale, and the reader skims past boilerplate to find the answer.
- **Traceability:** An assistant retrieves section 4 of a superseded design note and quotes it as current; the status line at the top of the page was never in the chunk.
- **Operations:** Authors restate context in every section, the restatements drift apart, and an agent later treats two differing scope statements on one page as a contradiction. Or the guidance is skipped and an agent executes a destructive step retrieved without its warning.
- **AI and retrieval:** As guidance: agents follow the spec, not the guide, and keep writing 'as described above' and headings like 'Overview' and 'Notes'. As an unbounded rule: authors and agents restate context in every section, which bloats pages and creates the independently maintained copies 3.2.1 forbids.
- **Standards:** Authors copy scope and definitions into every section and the copies drift from the canonical home.

### Tradeoffs

Self-contained sections stay advice, so retrieval quality depends on authors following it.


### Final assessment

Five challengers chose guidance. The AI and retrieval challenger wanted a core SHOULD and argued that every other protection depends on section self-containment under retrieval. That dissent is recorded; no observed failure was available, and the admission test keeps anticipated-only rules out of Core unless a reader could be harmed.

**Reopen when:** An adopter using retrieval over its corpus reports a wrong answer traced to a section that could not be understood alone.
