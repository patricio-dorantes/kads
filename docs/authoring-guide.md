# Authoring guide

This guide is a workflow for writing or updating a page under KADS, from identifying the reader's question to reviewing the result. It is for anyone who writes documentation, human or agent. It is advice; the rules are in the [specification](specification.md).

Begin with the reader's task and the existing knowledge. The [specification](specification.md) gives requirements; this guide suggests a workflow.

## Before writing

1. Identify the audience, question or task, and applicable technical scope.
2. Search for the existing canonical home, including relevant code and external references.
3. Decide whether to update a page, add a section, or create a separate document.
4. Use a tracked record only when stable identity or independent lifecycle will help.
5. Choose an outline from the [templates](../templates/README.md); remove sections that do not apply.

Use titles that describe the information sought: “Restore a backup,” “Configuration fields,” or “Why the request was rejected.” Avoid containers such as “Miscellaneous” that do not tell readers what they will find.

## Match the document to its purpose

Learning-oriented content, such as a tutorial or an explanation, should expose the prerequisites a reader needs and give examples where these help the reader apply the knowledge. A reference page or an urgent procedure usually needs neither.

| Reader need | Useful content |
|---|---|
| Learn a concept | Mental model, terminology, a small example, limits |
| Complete a task | Prerequisites, ordered actions, expected result, recovery |
| Look up a value or interface | Scope, exact names, types, units, defaults, constraints |
| Understand a design | Components, responsibilities, interactions, tradeoffs, decision links |
| Assess research | Question, answer, method, observations, reasoning, limitations, sources |
| Understand a choice | Decision, authority, context, alternatives, consequences, revisit conditions |

A guide can link to reference details. A reference page can link to an explanation. Keep the immediate task clear without forbidding useful context.

The first four rows follow the [Diátaxis](https://diataxis.fr/) distinction between tutorials, how-to guides, reference, and explanation. KADS adds research and decisions because technical corpora hold findings and choices that none of the four forms is designed to carry.

## Explain the document before its content

The opening of a document says three things: what the document is, what question it answers, and what it applies to (clause 1.1). Test it by reading only the title and the first paragraph as if you had arrived from a search with nothing else in view. Can you tell whether to read on, and where to go if not?

Two plain sentences usually do it. A "Purpose and scope" heading is not required, and a heading filled with "This document describes..." says nothing. Say what a reader can do with the page.

Scope is inherited. What a document shares with the whole collection, such as the product and version the collection covers, is stated once at the entry point and linked. A document restates only what is narrower or different. What cannot be inherited is identity: every document says what it is.

Put the document's own story last. Who wrote it, how it changed, and how to contribute go at the end, briefly, or in the change history. The reader came for the subject, and a page that opens with its own history makes them hunt for it.

A notice the reader has to act on is not the document's story, and it goes first. "This page is generated from the schema; edit the schema, not this page" changes what the reader may safely do, as do "draft, not yet in force" and "superseded". Placed at the end, such a notice is read after the reader has already acted.

## Write a usable first answer

State the answer or purpose early and qualify it where needed. Reveal context, reasoning, method, and sources as the reader needs them. These can be sections or links; avoid a chain of tiny pages that makes a simple answer hard to read.

Assume the reader arrived by search, a deep link, or a retrieved excerpt, with nothing above the section in view. Open the page with what it answers and for which scope. Give each heading its subject, and name the thing a section depends on instead of writing "as above"; naming and linking it is enough, and restating its content is not needed. When a section's scope or status differs from the page's, say so under that section's heading. Prefer concrete versions and dates to "current" or "latest", which cannot be resolved out of context. A line such as `Applies to: <versions or environments>` near the top is a convenient fixed spelling for scope. DITA's short description element serves the same purpose for topics; see [sources](sources.md).

Define unfamiliar terms and prefer consistent terms within a stated scope. Explain consequential differences between communities, languages, or vendors rather than forcing one global word. Explain acronyms on first use. When a synonym, vendor term, or translation must appear, say once which preferred term it maps to, findable from where it is used. A term that changes a reader's action must not carry two meanings in one scope without the difference being stated (clause 1.4). Terminology clean-up never rewrites quotations, preserved evidence, or historical records. Controlled languages such as ASD-STE100 apply the one-meaning idea far more strictly, with an approved dictionary and sentence-length limits; KADS borrows the principle and leaves the machinery. The optional [learning and terminology guide](learning-and-terminology.md) gives examples, boundary cases, and reader-task guidance. Keep concrete examples clearly separate from real observations and production configuration.

## Procedures and reference

For a procedure, provide prerequisites, inputs, actions, and a completion check. State material side effects, permissions, and recovery where they affect execution. Distinguish placeholder commands from commands actually executed. If a procedure is untested, say so rather than implying successful verification.

Write one action per step, in the order performed, in the imperative. State a condition before the action it governs. State an effect that cannot be undone, such as loss of data or service, in or immediately before the step that causes it, with the way to avoid or recover from it; a warnings section at the top of the page does not reach a reader who jumps to the step (clause 6.2). Where success is not self-evident, give the expected result and what to do when it is not observed: stop, roll back, or escalate. Make values the operator must substitute visibly different from literal text. These points follow common technical-manual practice, for which ASD-STE100 gives a detailed rule set (not inspected; see [sources](sources.md)).

For reference material, specify applicable versions, units, defaults, and constraints. A canonical table is often clearer than prose that repeats each cell. Link to relevant code or upstream references, and explain any local overrides.

## Research and decisions

Use the [research guide](research-guide.md) for findings. A conclusion answers what evidence supports; a decision records what someone chose under objectives and constraints. Keep them separate when combining them would imply that evidence uniquely determines a choice.

A decision should identify its authority, effective scope, alternatives, consequences, and revisit conditions. A proposed decision remains proposed until an actual choice is authorized. When a choice changes materially, preserve its history and provide replacement links.

For architectural choices, use the [decision guide](decision-guide.md) and [decision outline](../templates/decision.md). An accepted choice can still await implementation and validation. Requirements, operational limitations, and scorecards receive additional treatment in the [evaluation guide](evaluation-guide.md).

## Sources and evidence

Cite the source closest to the claim being made, with enough context to inspect it. A sentence that carries a citation should carry only the claims that source supports. Cite what you inspected: if you rely on a source you did not open for this claim, for example one recalled from memory or quoted through another work, say so (clause 3.1). Code can establish implementation behavior; a vendor reference can establish documented behavior; a test establishes an observation under recorded conditions. These sources answer different questions.

Identify source versions and access dates when relevant. An access date is not a measurement date. Distinguish verbatim excerpts, author summaries, synthetic examples, and collected output. A screenshot may be the best evidence of a visual defect; structured output may be better for exact values. Choose for the claim and preserve context.

For code, configuration, datasets, builds, ticket exports, and run bundles, the [artifact guide](artifact-guide.md) explains role, version, source, and edit boundaries. Link existing native homes before creating another catalog entry.

Where a statement's standing needs marking, prefer a plain lead-in from one small set: Observed, Reported by (a source, for what it asserts and you did not observe), Inferred, Assumed, Hypothesis, Assessed against (a criterion), Recommended, Decided, Unverified. Use one where the sentence does not already make the standing clear. Do not label every statement, and avoid "fact", which hides the basis. A summary keeps the lead-in or its meaning (clause 2.2).

When you state that documentation content was verified, reviewed, tested, or executed, give the check its shape: `Verified: <what was checked>, against <version or environment>, on <date>, by <who or what>` (clause 3.4). Clause 3.4 binds only statements about documentation content, but the same shape is good practice for a claim that a system was tested; there, also say what was observed and against which criterion it was judged, since "executed" and "passed" are different claims. A link to where those details are recorded serves as well, and an older note whose details are lost says which are not recorded instead of being deleted. Write such a line only for a check that happened, and qualify it when you change the content without rechecking. For agent-drafted content, one line satisfies clause 3.5: `Drafted by: <agent>. Author of record: <name or role>. Verified by a person: <what, how, when; or nothing yet>.` Review by other automated agents is automated review and is described as such.

Keep sensitive material appropriately restricted. If a shared artifact is redacted or transformed, explain the change and any effect on interpretation. Do not manufacture missing provenance.

## Update and review

Before finishing, follow the [manual review checklist](conformance.md). For changed content, inspect known dependent summaries and instructions, repair links, and preserve historical meaning where necessary. Report the review's scope and remaining gaps.

When you replace material, mark what you replace. Put the status in its title or top heading, for example `Superseded by <link>`, so that a reader or a retrieval system landing there meets it first (clause 4.1). Prefer removing a superseded passage from a current page and relying on version history over keeping it inline. A dated report is not superseded merely because it is dated.

Review depth should follow consequence. A spelling correction needs little explanation; a changed compatibility conclusion deserves renewed evidence assessment. An edit date alone must not suggest that a procedure was rerun or a source rechecked.
