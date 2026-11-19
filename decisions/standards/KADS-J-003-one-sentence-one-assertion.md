# J-003  -  One sentence, one assertion (accepted with modification)

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-03  
**Disposition:** ACCEPT_WITH_MODIFICATION, target layer GUIDANCE

This record belongs to the [standards evaluation of 2026-10-03](README.md). It is a record of an evaluation, not a rule. The only rules are in the [specification](../../docs/specification.md).

## Outcome

Rejected as a general rule for prose. Adopted in three narrow places as guidance: one action per step in the authoring guide; a sentence with a citation carries only the claims its source supports; and a drafting rule in CONTRIBUTING that each new normative sentence of KADS states one requirement.

## Evaluation record

```yaml
candidate:
  id: J-003
  title: "One sentence, one assertion"
  source: "ASD-STE100 (one instruction per sentence in procedures is confirmed by secondary sources; \"one topic per sentence\" for descriptive text could not be verified for Issue 9, where one topic per paragraph is confirmed)."
  original_problem: "Sentences that carry two instructions or two requirements are executed or cited incompletely."
  proposed_kads_rule: "Reject as a normative rule; keep as guidance for procedure steps and citable normative statements."

evaluation:
  expected_benefit: "Clearer steps and citable requirements"
  cognitive_cost: "low"
  authoring_cost: "low"
  maintenance_cost: "none"
  tooling_dependency: "none"
  interoperability_value: "low"
  traceability_value: "medium"
  retrieval_value: "low"
  machine_readability_value: "low"
  human_readability_value: "medium"

risks:
  ambiguity: "low"
  duplication: "low"
  bureaucracy: "medium"
  over_modeling: "none"
  premature_standardization: "medium"
  vendor_or_tool_lock_in: "none"
  misuse_risk: "Applied to explanatory prose, it produces choppy text that is harder to follow"

decision:
  disposition: ACCEPT_WITH_MODIFICATION
  target_layer: GUIDANCE
  rationale: "The brief asked whether this is a rule, a recommendation, or guidance. It is guidance for adopters and a drafting rule for the standard itself. No challenger wanted it normative for adopters."
```

## Challenge

The arguments below are quoted from six automated reviewer agents, each given one perspective and told to argue against the proposal. They reviewed the proposal as first drafted. Clause numbers of that draft that differ in meaning from the adopted specification are prefixed with the word "draft" in the quotations; nothing else in them was altered. The [index](README.md#draft-numbering) maps draft numbers to adopted clauses. Requirement wording inside the quotations is draft wording, not a rule. This is automated review, not verification by a person.

Challenger recommendations (stance and layer): Minimalist REJECT/GUIDANCE, Cognitive load ADOPT/GUIDANCE, Traceability ADOPT/GUIDANCE, Operations MODIFY/GUIDANCE, AI and retrieval MODIFY/GUIDANCE, Standards MODIFY/GUIDANCE.

### Arguments for adoption

- **Minimalist:** The author's rejection of a normative rule is right: sentence-level style cannot be reviewed for conformance and KADS governs knowledge organization, not prose style.
- **Cognitive load:** Rejecting the normative form is right: sentence-level rules cannot be reviewed by reading and would turn every page into a style audit. One instruction per step is the only place the idea changes reader outcomes.
- **Traceability:** As a universal rule it is uncheckable and would punish ordinary prose. Limiting it to procedure steps and individually cited normative statements targets exactly the places where one sentence must be one traceable unit.
- **Operations:** Rejecting it as a general normative rule is right: explanatory and architectural prose needs sentences that relate two ideas, and nobody will count assertions per sentence.
- **AI and retrieval:** Rejecting a normative rule is right: atomized one-assertion sentences strip the connective words ('because', 'therefore', 'unless') that carry the reasoning, and a chunk of disconnected assertions is worse retrieval context than a normal paragraph.
- **Standards:** Sentence-level rules for all prose are STE baggage; limiting the idea to procedure steps and individually cited normative statements is the transferable part.

### Arguments against adoption

- **Minimalist:** The author rejects it here and then re-admits it as a MUST in draft 7.2 ('each step MUST state one action'). That is the same rule under a profile label. Also the spec itself packs three or four MUSTs per paragraph (J-026), so guidance telling authors to do otherwise is not self-applied.
- **Cognitive load:** The second target, 'normative statements that will be cited individually', concerns only people who write standards, which for KADS means the maintainers. Putting it in the authoring guide makes every ordinary author read advice that is not for them.
- **Traceability:** The author treats this as authoring advice for adopters while the KADS specification itself is the worst offender: its clauses are cited individually yet pack several requirements per paragraph. Rejecting J-003 as normative and deferring J-026 together leaves the one place where singularity matters for traceability with no commitment at all.
- **Operations:** The author rejects the rule here and then makes it a MUST in draft 7.2 ('one action' per step), and recommends it as guidance for normative statements while proposing new clauses that break it (draft 3.1.5 has two MUSTs, draft 7.4 has a hazard duty and a recovery duty, draft 7.6 has three). Guidance the standard's own new text does not follow will not be followed by adopters.
- **AI and retrieval:** The guidance is scoped too narrowly. The case that matters for provenance is a sentence with two material claims and one citation: neither a reader nor an agent can tell which claim the citation supports, and a summarizer will carry the citation to the wrong one.
- **Standards:** The rejection is inconsistent with J-026: the place where one sentence per assertion matters most is the KADS specification itself, where clause 1.4 makes each paragraph a citation target and paragraphs hold three or four MUSTs. Also 'one topic per sentence' is not confirmed as a current STE rule (one topic per paragraph is), and STE allows two simultaneous actions in one instruction.

### Failure modes

- **Minimalist:** Guidance that the standard's own text ignores gets cited selectively in reviews and has no authority.
- **Cognitive load:** The guidance grows into a new authoring-guide subsection with its own heading and examples, and the guide gets longer without any how-to page getting clearer.
- **Traceability:** Guidance tells adopters to write singular citeable statements while the spec keeps adding multi-MUST clauses (proposed draft 3.1.5 and draft 3.3.5 each carry two obligations).
- **Operations:** The guidance is cited against adopters' prose in review but the specification keeps shipping multi-requirement paragraphs, so exceptions cite ambiguous clause numbers (see J-026).
- **AI and retrieval:** A sentence such as 'the API rejects the request and the resource is not created [source]' is split by a summarizing agent; the unsupported half inherits the citation.
- **Standards:** The guidance is published for adopters while KADS's own clauses keep violating it, and the STE attribution is recorded wrongly in a rejected-candidate record.

### Tradeoffs

KADS holds itself to a stricter rule than it asks of adopters.


### Final assessment

The brief asked whether this is a rule, a recommendation, or guidance. It is guidance for adopters and a drafting rule for the standard itself. No challenger wanted it normative for adopters.

**Reopen when:** None expected for prose. For normative text see J-026.
