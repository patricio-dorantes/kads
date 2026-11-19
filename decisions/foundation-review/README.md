# J-036  -  Foundational consistency review: the objective, and the path from an answer to its basis

**Type:** investigation  
**Status:** complete  
**Updated:** 2026-10-06  
**Namespace:** `kads-design`  
**Result:** KADS 0.9.0, clause 3.1 (d) restored; the objective stated in the design rationale; the README reconciled

This record preserves why KADS 0.9.0 restored a recommendation that its own necessity review had removed, how its objective came to be stated, and what two reviewers disputed. It is history, not a rule; the rules are in the [specification](../../docs/specification.md). Raw material is in the [evidence bundle](evidence/2026-10-06-3/README.md).

## Question

Before releasing 0.9.0 the maintainer asked three things: whether KADS states its deepest objective; whether the 0.9.0 simplification removed a foundational guarantee, in particular the 0.8.0 recommendation that "the evidence path from answer to context, reasoning, method, and sources SHOULD be explicit where those layers are relevant"; and whether KADS and its README survive a skeptical reader with no access to the authors.

## Context and evidence

The 0.9.0 necessity review ([J-034](../necessity-review/README.md)) removed that sentence as a duplicate of clause 3.1 (a) and of 7.2.1, over an objection by its guardian challenger that one of the sentence and the defined term had to survive. 3.1 (a) requires an identifiable basis for a material factual claim and lists "a derivation" among the kinds of basis; it names neither reasoning nor method. 7.2.1 requires reasoning from results to each material conclusion, but only under the research-report profile. 4.3 (b) asks for method only where a past method differs from current conditions, which presupposes that it was recorded.

## Challenges

Three reviewers worked independently, without seeing one another's reports; the skeptical reader's run overlapped with the drafting of 3.1 (d) and the objective section and saw them in the working tree, as noted below. The guardian built four corpora that satisfy every 0.9.0 clause, citing each: in three a reader cannot reach the reasoning behind a decided value, the method behind a measured figure, or the inference joining three resolving citations to a recommended number, and the 0.8.0 sentence would have caught all three; the fourth, a tracked decision whose reasons were never written, no version of KADS can close without inventing rationale (3.3 a), and it bounds what the objective may promise. The minimalist argued the cut was safe: "derivation" in 3.1 (a) carries reasoning where reasoning is the basis, the removed sentence's condition could not be tested by a reviewer, and the research profile is where KADS intentionally guarantees that degree of traversal; it conceded one narrower phrase if the panel read 3.1 (a) as satisfied by naming a derivation's inputs. The skeptical reader's findings are in the evidence bundle and summarized below.

## Decision

The cut was an accidental loss, not a duplicate. 3.1 (a) binds factual claims and not recommendations or decided values; it asks that a basis be identifiable, not that the reasoning from basis to answer be reachable; and nothing in Core asks for the method behind a measured figure unless it differs from today's. The guarantee is restored at its 0.8.0 strength as clause 3.1 (d): where a material claim rests on reasoning or a method the document does not itself contain, the document SHOULD say where it is recorded, or that it is not. It is narrower than the 0.8.0 sentence in two ways, both deliberate: it names only the two layers no other Core clause carries, reasoning and method, since context is 1.1 and 1.2 and sources are 3.1 (a) and (b); and it lets a document say that the reasoning or method was not recorded, the form 3.4 (a) and 7.1.5 (c) already use. It sits under proposition 3 rather than 1 because it is about support, not about the reader's entry, and it reuses the "or that it is not recorded" form of 3.4 (a) and 7.1.5 (c). A conformance question and four clause-guide sentences accompany it: the plain-words restatement in row 3.1, and, from the reviewers' other findings, a per-claim reading of 3.1 (a) in the same row, a note in row 2.4 that a view merging several sources should say which source carries each claim, a note in row 4.3 that 4.3 (b) presumes the method was written down, and a note in row 7.1.3 that the rule is about links one writes. The term "evidence path" is not reintroduced; the README's path remains a way of reading, and the design rationale now says what it stands for.

The candidate objective, "KADS enables technical knowledge to survive separation from its author, its original context, the passage of time, transformation, and skeptical inspection, while preserving a discoverable path from material answers to the basis on which they stand", was revised on both reviewers' objections. Both rejected "survive", which promises that the knowledge stays valid. The guardian rejected "preserving" a path, since KADS can only make the basis reachable or its absence visible, and noted that the candidate omitted proposition 2, which description is authoritative for a scope. The minimalist rejected "skeptical inspection" as a reader's act rather than a property of the text. The adopted statement, in the [design rationale](../../docs/foundations.md#the-objective), says that knowledge stays usable and checkable by a reader who was not its author, is not in its original context, reads it later, or reads it through a transformation, and lists what such a reader can tell. The rationale also names the two concerns the rules serve, things and statements, and the traversal that joins them, with a table from each proposition to the failure it guards against. The README's first paragraph is a derived view of that statement.

## Rejected alternatives

- Leaving the guarantee to guidance. Guidance existed in 0.8.0 beside the rule and is what 0.9.0 left; the guardian's corpora pass review under it because the conformance page has no question to ask.
- The minimalist's narrower phrase in 3.1 (a), that a derivation is identifiable and not only its inputs. It covers reasoning for factual claims but not method, nor a recommended or decided value.
- Making 3.1 (d) a MUST. The 0.8.0 strength was SHOULD, the condition "rests on reasoning or a method the document does not contain" leaves room for honest omission with a stated reason, and a MUST would force invented rationale on legacy corpora.
- Widening 3.1 (a) from "factual claims" to all material claims. A MUST widening, breaking under 8.3 (c), with no observed case; 3.1 (d) reaches recommendations and decided values at SHOULD strength instead.
- Restoring the defined term "evidence path". No clause needs it.

## Consequences

One SHOULD returns to the specification. The README no longer overstates six clauses, no longer claims that documentation "usually" fails or that every rule prevents a listed failure, and names the latest release instead of a tag that does not exist. J-034's row for 1.3 carries a correction. The README's path sentence now has a canonical home in the rationale.

## The skeptical reader on KADS itself

The skeptical reader found that KADS passes its own test unevenly. For every rule admitted or changed since 0.6.0, the reason, the alternatives, the dissent, and the reopening condition are reachable from the README. Four breaks were found and three were closed in this version: the entry point cited a tag that does not exist and did not say the copy was a draft; J-033 cited the clause numbers of an intermediate draft with no map; and ADR-002 and ADR-003 referred to a term and a rule that no longer exist without saying so. The fourth is permanent: for the rules admitted before 0.6.0, roughly two thirds of the core, no record of the alternatives considered was ever written. The decisions index now states that gap. The skeptical reader's run overlapped with the drafting of 3.1 (d) and saw it in the working tree; its finding that the cut was unjustified was reached from the committed text, and it recorded the draft clause as closing three of its adversarial cases.

## The epistemic release check

Before release the maintainer asked whether a skeptical reader of a conforming corpus can tell not only that a material claim has a basis but what kind of basis it is, what was actually observed or tested, and how far it supports the conclusion. One adversarial reviewer tried to build conforming corpora that hide this ([evidence bundle](evidence/2026-10-06-4/README.md)).

Under the research-report profile the distinctions hold: 7.2.1, 7.2.3, 7.2.5, and 7.2.6 keep source assertion, observation, execution, assessment, and inference apart. In the core they hold only in part. A core-only page can say "the sign-in flow works with provider X: tested by the platform team against release 4 in September 2026; the test was not recorded" and conform: 3.1 (a) is satisfied by an identified if thin basis, 3.4 binds statements about documentation content and not about a system, a decision of the [0.6.0 gate](../standards/KADS-J-010-verification-state.md) taken so that compatibility notes are not caught, and no evaluative term triggers 1.4. The reader is told the basis was not recorded, so the claim does not look more established than its basis; what the reader cannot recover is whether an endpoint was called or a whole flow ran, and against what criterion.

The specification is unchanged in 0.9.0. Widening 3.4 (a) to "documentation content, or the system, procedure, or capability it describes" is a small, testable invariant, but it is breaking under 8.3 (c), reverses a recorded gate decision without the challenge that decision received, and has no observed case in an adopting corpus; it is left as a candidate for a following version. The guidance was corrected instead: the knowledge model's definition of observation merged a source's report with a direct observation and its new section said the core gave the same separation as the profile, which it does not; the authoring guide and the clause guide read 3.4 as covering any tested thing; the authoring guide's lead-ins had no slot for a source's assertion or an assessment; and the README's example called an execution statement "verified" without saying what was observed.

## Unresolved

- Whether clause 3.4 (a) should bind a statement that a system, procedure, or capability was tested, not only documentation content, and whether a core claim of a passing test should name its criterion. Recorded under [the epistemic release check](#the-epistemic-release-check); reopen with an observed case.

- ADR-002 still refers to "the evidence path" as a defined term and to a section that no longer exists. It is a proposed record awaiting the maintainer, like ADR-001 and ADR-003.
- Whether 3.1 (a) should bind every material claim and not only factual ones is left as recorded above.
- The alternatives considered for rules admitted before 0.6.0 were not recorded and cannot be reconstructed; the gap is stated in the decisions index and is not closable by a later record without inventing history (clause 3.3).

## How this was produced

Drafted by an automated agent; challenged by three automated reviewers that did not see one another's reports; synthesized by the drafting agent; reviewed by a further automated agent before commit. Automated review, not verification by a person (clause 3.5). The repository maintainer is the author of record.
