# \<TST-ID\>  -  \<Validation purpose\>

**Type:** test  
**Status:** planned  
**Updated:** \<YYYY-MM-DD\>

## Purpose and scope

\<What claim or behavior is evaluated?\>

## Preconditions and inputs

\<Environment and measurement vantage point, actual method revision, relevant dependency versions, required state, inputs, effective non-secret overrides, permissions, and material side effects. Distinguish defaults from the values used by a historical run.\>

## Procedure

\<Ordered actions, measurements, and any cleanup or recovery needed. Mark unexecuted example commands clearly.\>

## Assessment criterion

\<What observation counts as passed, failed, or inconclusive? Was this criterion set before the run or reconstructed afterward?\>

## Execution record

\<Use a separate identified section for each run, or link independently tracked runs when useful. Do not overwrite old runs with the latest result.\>

- Run/date: \<identifier unique across all runs, including same-day repeats, and execution date; or unknown for a historical run\>
- Execution: \<not run, completed, or blocked; explain blockage\>
- Observed behavior: \<actual result, including exit code when relevant\>
- Assessment: \<not assessed, passed, failed, or inconclusive against the criterion\>
- Evidenced by: \<link preserved output or source, optionally a bundle manifest\>
- Cleanup or retained resources: \<actual outcome when relevant, not just planned cleanup\>

## Limitations

\<Missing context, reproducibility barriers, and what the test cannot establish.\>
