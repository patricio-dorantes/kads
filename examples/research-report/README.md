# Illustrative research report: validating a quantity field

This page is a worked example of a research report written under KADS, profile 7.2 of the [specification](../../docs/specification.md). It is for authors who want to see the parts of a report in place. It is an illustration, not a rule. The scenario is fictional: all inputs and responses below are invented for this page, no software was executed, and no product or external project is represented.

## Question and current answer

Does a quantity field follow the proposed rule “accept whole numbers from 1 through 9”?

The illustrative responses are consistent with the rule for the four listed inputs. They do not establish that an implementation satisfies the rule for every input.

## Method and criterion

The proposed method submits boundary values and records acceptance or rejection. A response passes its individual criterion if it agrees with the rule. The table is a fixture for explaining assessment, not an execution log.

## Illustrative material

| Input | Expected response under the rule | Invented response | Assessment within the fixture |
|---|---|---|---|
| 0 | Reject | Reject | Consistent |
| 1 | Accept | Accept | Consistent |
| 9 | Accept | Accept | Consistent |
| 10 | Reject | Reject | Consistent |

Source and provenance: authored here as fictional material. There is no collection date, runtime environment, implementation revision, or measured result to report.

## Analysis

Rejection is the expected behavior for 0 and 10. Calling those cases failed tests solely because a request was rejected would confuse observed behavior with the assessment criterion.

The fixture covers two valid boundary values and two adjacent invalid values. It leaves non-integers, missing inputs, and other representations unexamined. A claim of complete validation would exceed this scope.

## Recommendation and decision boundary

A real investigation should identify the implementation and effective conditions, execute the cases, and retain the observations. Additional cases should follow the actual interface contract and risks.

This page authorizes no implementation or release decision. A consequential choice would require its own rationale and authority, whether recorded here or in an ADR.

## Maintenance

Review this example if KADS changes how it distinguishes fictional material, observations, criteria, or decisions. The KADS repository maintainer owns that review through the normal contribution process.
