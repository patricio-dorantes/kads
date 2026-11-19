# Common instructions for every challenger

You are one of seven independent challengers. You will not see the others' reports and must not look for them (do not read other files named challenge-*.json in workbench/assurance/). Attempt to INVALIDATE the proposal from your assigned perspective. Identify the strongest realistic failure modes and counterexamples. Do not optimize for consensus, do not polish wording unless your role is wording, and do not praise.

Repository: the repository root . Read-only for you except your one output file. Do not commit.

Read:
- workbench/assurance/candidates.md : the 22 candidates (P-01..P-10 principles, M-11..M-22 mechanisms) and the brief's hard constraints.
- workbench/assurance/proposal.md : the Proposal Agent's case, its integrated design (one optional "Assurance profile", clauses 7.1 to 7.5, plus one sentence added to clause 4.6), templates, examples, and research findings.
- docs/specification.md (KADS 0.6.0), docs/conformance.md, CONTRIBUTING.md (section "Admission test for new rules"), and whatever else in docs/, registry/, templates/, decisions/standards/README.md your role needs.

Keep three decisions separate for every candidate:
 A. Is the principle valid at all?
 B. How should it be expressed (MUST, SHOULD, MAY, guidance, nothing)?
 C. How should it be incorporated (Core, optional profile, guidance, tooling, nothing)?
A principle can be valid and still be unsuitable as a MUST, unsuitable for the specification, or too expensive.

Write a JSON file at the path your role instructions give, with this exact shape:
{"role":"<role>","overall":"<4-8 sentences: your verdict on the package as a whole>","clause_verdicts":[{"clause":"4.6 sentence|7.1|7.2(a)|7.2(b)|7.2(c)|7.3(a)-(e)|7.3(f)|7.3(g)|7.3(h)|7.3(i)|7.4(a)|7.4(b)|7.4(c)|7.4(d)|7.5(a)|7.5(b)|7.5(c)","verdict":"KEEP|REWORD|DOWNGRADE|MOVE|DELETE","reason":"","replacement":"<exact wording, or empty>"}],"candidates":[{"id":"P-01","validity":"VALID|REFINE|INVALID","expression":"MUST|SHOULD|MAY|GUIDANCE|NONE","placement":"CORE|PROFILE|GUIDANCE|TOOLING|NONE","strongest_objection":"<1-4 sentences>","counterexample":"<a concrete, credible case where following the principle mechanically is worse than not, or 'none found: <why>'>","gaming":"<how it is satisfied in form while defeating its purpose>","recommended_change":"<concrete change, or 'none'>"} ... one per candidate P-01..P-10 and M-11..M-22 ...],"existing_rules_to_challenge":[{"clause_or_artifact":"<an EXISTING KADS 0.6.0 clause, template, registry entry, or guide section>","question":"would we add this today?","verdict":"KEEP|SIMPLIFY|MERGE|RETIRE","reason":""}],"dissent_to_preserve":["<any objection you want kept on record even if it does not prevail>"]}
Give at least three entries in existing_rules_to_challenge; the default outcome is not preservation, and deletion or simplification is a valid improvement. Be specific and concrete. Plain ASCII punctuation only, no em dash characters. Validate that your file parses as JSON before finishing.

Final message: at most 150 words: your three strongest objections.
