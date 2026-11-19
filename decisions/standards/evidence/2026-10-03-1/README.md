# Evidence bundle 2026-10-03-1: challenger and gate output

Raw material behind the [standards evaluation of 2026-10-03](../../README.md). The decision records quote from these files.

**Run identity:** `2026-10-03-1`, the only evaluation run on that date.  
**Collected:** 2026-10-03, in one authoring session. Times of day were not recorded.  
**Collector:** the drafting agent, which also wrote the instructions each reviewer received. Those instructions are not preserved; this is a known gap.

| File | What it records | Limits |
|---|---|---|
| [draft-proposal.md](draft-proposal.md) | The 31 candidates and the drafting agent's first proposals, as given to the challengers | Superseded. Contains factual errors about external standards and draft clause numbers that differ from the adopted ones |
| `challenge-minimalist.json`, `challenge-cognitive.json`, `challenge-traceability.json`, `challenge-operations.json`, `challenge-ai.json`, `challenge-standards.json` | Each challenger's stance, arguments, failure modes, and recommended changes per candidate; the standards file also holds the fact checks | Output of automated agents sharing a model with the drafting agent. Clause numbers refer to the draft |
| `gate.json` | The final gate reviewer's verdict and 29 findings on the integrated result | Reviewed the working tree before its findings were applied, so it describes defects that the release no longer has |

**Alterations (clause 3.4.5):** on 2026-10-03, absolute file-system paths of the authoring machine were removed from the JSON files, and a title and a status note were added at the top of `draft-proposal.md`. No argument, stance, or finding was changed. In the decision records, quotations add the word "draft" before draft clause numbers; the files here do not.

**What this evidence does not establish:** that the arguments are correct, that the reviewers were independent, or that a person verified any of it. It establishes what the automated reviewers returned.
