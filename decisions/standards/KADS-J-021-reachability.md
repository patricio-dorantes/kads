# J-021  -  Reachability: no orphan documents (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer CORE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Clause 3.5.5: each maintained document SHOULD be reachable by links from the corpus entry point; preserved evidence and artifacts may be reached through the document or manifest that cites them. The optional link script gained an `--orphans` report.

## Evaluation record

```yaml
candidate:
  id: J-021
  title: "Reachability: no orphan documents"
  source: "Information-architecture practice (findability); no single source cited."
  original_problem: "Pages that nobody can navigate to are invisible to readers and go stale unnoticed."
  proposed_kads_rule: "New core clause, SHOULD."

evaluation:
  expected_benefit: "Every maintained page can be found from the entry point"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "low"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "low"
  retrieval_value: "high"
  machine_readability_value: "medium"
  human_readability_value: "high"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "low"
  over_modeling: "none"
  premature_standardization: "low"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "A generated dump of all files satisfies the letter and helps nobody"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: CORE
  rationale: "All six placed it in Core as a SHOULD. Two wanted it appended to an existing clause; it is a separate clause because new clauses are now written with one requirement each (J-026). The failure is anticipated only, so it is not a MUST."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist MODIFY/CORE, Cognitive load ADOPT/CORE, Traceability ADOPT/CORE, Operations MODIFY/CORE, AI and retrieval MODIFY/CORE, Standards MODIFY/CORE.

### Arguments for adoption

- **Minimalist:** Orphan pages are real, they rot unseen, and this is one of the few rules a script can check, so it is cheap to keep true.
- **Cognitive load:** One sentence, no new term, checkable with a link crawl, and it removes the worst search outcome: a page that exists and cannot be found. Ten-line how-to cost: one link in an index.
- **Traceability:** An unreachable page cannot be reviewed, cannot be found when its sources change, and is the typical location of stale contradictory claims. A SHOULD is cheap and is checkable by reading or by a link crawl.
- **Operations:** This is one of the few proposed rules a script can check completely (the existing link checker already walks every link), it works in report-only mode under partial adoption, and orphan detection is a useful proxy for pages nobody owns.
- **AI and retrieval:** This is one of the few rules an agent can check mechanically and reliably: crawl links from the entry point and list what was not reached. It also catches the scratch and draft files agents leave behind.
- **Standards:** Orphans are a common, low-controversy failure and a SHOULD leaves room for exceptions.

### Arguments against adoption

- **Minimalist:** It does not need its own clause number and conformance row. 'Each maintained document' is undefined against the corpus term (are evidence files, run bundles and generated reference pages documents?), and large corpora navigated by search will fail it for thousands of files.
- **Cognitive load:** Reachable is not findable: the clause is satisfied by a flat 'all pages' list of 300 links, and the author's own J-027 argument says readers arrive by search and never see the entry point. It also assumes one entry point and says nothing about whether archived material must stay linked.
- **Traceability:** 'Maintained document' lets historical and superseded material fall outside the rule, yet that is exactly what 3.4.1 preserves and what readers must be able to find to see why something changed. The rule is also one-directional: it says nothing about evidence that is cited by a claim but then moved, though 3.5.1 covers that.
- **Operations:** Reachability from the entry point is not how operational pages are reached: a runbook is opened from an alert annotation, a dashboard, or search, and those inbound references live outside the corpus where 3.5.1 does not apply, so the links that matter break when pages move while the corpus stays conformant. In a large repository the rule is satisfied trivially by a generated file listing, which adds reachability without findability, or by a chain nine links deep. It also works against deprecation: in legacy repositories orphaning is the de facto retirement mechanism, and forcing links to every old page raises the visibility of stale content unless J-027 marking comes first. 'Maintained document' is undefined for evidence files, run outputs, and attachments.
- **AI and retrieval:** The stated rationale is backwards for retrieval. An orphan is invisible to a human navigator but fully visible to an indexer, which reads every file. So in an AI-read corpus orphans are not 'invisible and rotting'; they are unreviewed pages served with the same authority as maintained ones. The proposed clause only says documents should be reachable; it does not say what to do with files that are not, and it is satisfied by a flat list of filenames that says nothing about what each page is or whether it is current.
- **Standards:** No source is cited beyond 'information architecture', so the basis is thinner than for other candidates. Link-reachability is only one route: tracked-record IDs (4.3), search, and generated indexes also make material findable, and whole-corpus reachability cannot be confirmed by reading alone, which sits badly with 6.1 ('reading and manual review are sufficient'); evidence stores and archives are legitimately unlinked page by page.

### Failure modes

- **Minimalist:** Projects satisfy it with a generated 'all pages' list linked from the index, which makes every page reachable and none findable.
- **Cognitive load:** Projects satisfy it with a generated dump index; the corpus is conformant and no easier to navigate, while the index becomes another file every author must remember to edit.
- **Traceability:** Superseded decisions are 'preserved' in a folder nothing links to; the history exists but no reader can trace to it from the current decision.
- **Operations:** A team adds an auto-generated 'all pages' index to pass the check; historical and current pages sit side by side in it without status, and readers and agents now find stale pages more easily than before.
- **AI and retrieval:** An abandoned draft with no inbound links is retrieved as an answer. Or an agent achieves compliance by appending 300 bare links to the index.
- **Standards:** Conformance review requires a crawler in practice, or large evidence directories are declared nonconformant.

### Tradeoffs

In a large legacy corpus the first orphan report can be long.

### Admission test

Answers to questions 1, 2, 5, and 6 of the [admission test](../../CONTRIBUTING.md#admission-test-for-new-rules), written after the challenge.

- **Failure and observed case:** Anticipated only; therefore a SHOULD.
- **Protected property:** Current guidance can be found.
- **How a violation is detected:** Script or by following links from the entry point.
- **Cost on adoption day:** Run an orphan report and link, mark, or remove what it lists.


### Final assessment

All six placed it in Core as a SHOULD. Two wanted it appended to an existing clause; it is a separate clause because new clauses are now written with one requirement each (J-026). The failure is anticipated only, so it is not a MUST.

**Reopen when:** Adopters show that orphans cause harm that a SHOULD does not prevent.
