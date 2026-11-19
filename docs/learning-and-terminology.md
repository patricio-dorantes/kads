# Learning, terminology, and applying rules

This guide covers two things that help a reader use a page and not merely find it: optional teaching aids, and how to pin down terms that drive a score or an action. It is for authors of tutorials, explanations, and evaluations. It is advice; the rules are in the [specification](specification.md).

Finding the right page is not always enough to use it well. Identify whether the reader is learning, operating, comparing, deciding, or auditing. The path from an answer to its reasoning, method, and sources helps inspect a claim; it does not prescribe a curriculum.

## Add teaching support where it earns its space

For a tutorial or explanation, consider a small sequence:

1. State what the reader should be able to do or distinguish afterward.
2. Name prerequisite knowledge and link only the missing background.
3. Work through a concrete example, explaining consequential choices.
4. Show a likely mistake or boundary case.
5. Offer a new case so the reader can check whether the idea transfers.

These are optional authoring aids. A reference lookup or urgent runbook usually needs direct access, not a lesson. Do not add an exercise to every page. A reader walkthrough can test usefulness, but report one only if someone actually performed it.

Example learning objective: distinguish a provider limitation from an account limitation. Worked case: a quota rejection establishes what happened to this account's request. Boundary case: the same product is offered in a catalog but the account has no entitlement. Transfer check: does a permissions error prove the product lacks the requested capability? Explain what evidence would discriminate those possibilities.

## What "material" means in practice

Most KADS requirements apply to *material* claims, qualifications, or relationships: those whose error could change a reader's action, interpretation, or trust in a result (see Terms in the specification). The test is consequence for the reader, not the size of the edit. Three contrasts:

| Statement | Material? | Why |
|---|---|---|
| "The service listens on port 8443" in a runbook whose next step connects to that port | Yes | A wrong value stops the procedure; the reader needs its source and version |
| "The service was renamed in 2023" in the same runbook's background paragraph | No | A wrong year changes nothing the reader does; it needs no citation |
| "All regions passed" summarizing a test matrix that marks two regions as not run | Yes | The summary extends the claim beyond the evidence and would change a deployment decision |
| "Results were collected over three days" when the report draws no conclusion that depends on duration | No | Neither interpretation nor action turns on it |
| "Validated against the vendor contract" when only a script exited zero | Yes | It asserts an assessment that did not occur and would change trust in the result |

When in doubt, ask what the reader would do differently if the statement were false. If the answer is nothing, the statement is immaterial and may be left unsupported or omitted. If the answer is something, the statement needs a basis, a scope, or a marker that it is unverified (clauses 3.1 to 3.3).

## Give important terms operational context

When a term can change a score, action, or conclusion, explain the local meaning and criterion. An inline definition is often enough. Use a short term table only when it helps multiple readers.

| Term in context | Local criterion or distinction | Boundary case |
|---|---|---|
| Available for this run | The tested account provisioned the stated configuration in the stated scope | Listed in a catalog but blocked by quota |
| Verified against a requirement | Relevant evidence assessed against the stated criterion | A script ran but did not observe the required behavior |
| Equivalent service | Similar along named capabilities and operating responsibilities | Same marketing label but different ownership or failure behavior |
| Edition or tier name | The product or licence the requirement names, identified by vendor and product | A provider's “Enterprise Plus” service tier is not the engine vendor's “Enterprise Edition” licence |
| Coverage of evaluated requirements | The stated weighted score over evaluated items | Unevaluated items are excluded, so this is not the fraction of all needs satisfied |

These examples are possible local definitions, not universal meanings imposed on every project. Preserve distinctions between vendor vocabulary, observed behavior, and the project's acceptance criteria.

Prefer consistent terms within a scope. Across languages or communities, explain aliases and meaningful differences rather than forcing a single global word. Preserve native identifiers, API fields, product names, and original quotations. Identify translations and retain their scope and qualifications. A translated or shortened summary should point to the source revision it represents when currency matters.

## Apply rules through cases

| Situation | Useful application | Overapplication to avoid |
|---|---|---|
| A summary repeats a dated metric and links its source | Keep the necessary number and its qualifications synchronized or explicitly historical | Deleting every repeated word in the name of canonicality |
| A project generates requirement pages | Edit its declared source and follow its local regeneration workflow | Treating KADS's manual-review option as permission to edit generated output |
| One diagram best explains the system | Provide context and accessible explanation of its meaning | Maintaining a duplicate prose inventory of every edge |
| A rule does not fit an unusual artifact | Explain the mismatch and use the documented exception/review route | Inventing compliance or silently ignoring applicable requirements |

If local instructions conflict, identify their scope and the project's authority/review route. Clarify unresolved material conflicts through that route; do not use this guide to override project instructions. Stricter local rules can coexist with KADS. A departure from an adopted KADS requirement belongs in the adoption note as an exception.
