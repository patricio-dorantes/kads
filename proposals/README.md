# Proposals to change KADS

This directory holds the proposals to change KADS that are still open. It is where such a request arrives: a rule that proved wrong, unclear, or missing in use, or a problem in a guide or outline. It is for projects that use KADS and for anyone else who reads it. A project does not edit its own copy of KADS; it sends a proposal here instead (clause 8.6 of the [specification](../docs/specification.md)).

## How to send a proposal

1. Write it with the [change-proposal outline](../templates/change-proposal.md). The outline asks for the case that prompted the request, the evidence, what the rule did or did not do, and the smallest change that would help.
2. Save it as one new file in this directory, named by date and subject, `YYYY-MM-DD-short-title.md`, so that two proposals cannot collide. If the name is taken, add `-2`.
3. Send it by one of these routes:
   - **Merge request.** Create a branch named `proposal/YYYY-MM-DD-short-title` from the working branch of KADS, add the one file, and open a merge request into the working branch. From outside, do the same from a fork. The working branch is the open branch named `release/` followed by the next version; if you cannot tell which it is, target `master` and the editors will move it.
   - **Document.** Send the proposal as a file or document by any practical channel, such as email, to the maintainer of KADS, who places it on a proposal branch under the name above. From there it follows the same path as a merge request. Git access is a convenience, not a condition of proposing.

What has to be preserved is the proposal, its evidence, the challenge, and the decision, not the channel it arrived by. A proposal adds one file and changes nothing else. The editors make any change to the rules themselves, in separate commits, so that every change to a rule can be traced to a decision.

If KADS is a submodule of your project, keep the project pinned to a released tag while you do this. The proposal branch exists to send the file; the version your project declares does not move to it.

Keep your evidence in your own project and describe it in the proposal. KADS stores the general finding, not another project's records: do not name the project or people, and leave out file paths, record identifiers, and secrets.

## Branches and tags

- **Tags are the releases.** A tag `v` followed by a version marks a released, unchanging version of KADS. Projects pin a tag. `master` holds released versions only.
- **The working branch** is where the next version is prepared. Proposals are merged there first, as received.
- **A proposal branch** carries one proposal file and nothing else.

Nothing reaches a tag without passing through the working branch and a recorded disposition.

## How a proposal is decided

Every proposal gets a disposition, with reasons, from the editors of KADS, who own the rules. The practice follows high-assurance engineering, where a request to depart from a requirement is decided by whoever owns the requirement, the decision is recorded with its reasons, and disagreement stays on the record.

1. **Evidence first.** A proposal states the case that was observed. If the case is only anticipated, it says so, and the editors weigh it accordingly.
2. **Judged by the same test as every rule.** The editors apply the admission test in [Contributing](../CONTRIBUTING.md#admission-test-for-new-rules) and check that the change fits more than the one project that asked.
3. **Challenged by someone other than the proposer.** If the challenge is made by an automated agent, the disposition says so.
4. **A disposition with reasons.** Accepted, accepted with changes, declined, or deferred. The editors write it into the proposal file, one line at the top and a section at the end with the reasons, and commit it.
5. **Disagreement stays on the record.** The proposer may answer the disposition in one of three ways: agree; disagree but accept the decision; or disagree and ask for reconsideration, saying what evidence would decide it. The answer is kept with the proposal.
6. **Decided proposals leave the directory and stay in the history.** Once a proposal is accepted or declined, its file is removed from the working tree in a following commit. The [changelog](../CHANGELOG.md) entry of the version lists it with its disposition, the reason in one line, and the commit at which the full file, with its disposition and any response, can be read. A declined proposal is kept this way as carefully as an accepted one: it saves the next proposer from repeating the argument without new evidence. A deferred proposal is still open and stays here.

To read a decided proposal, take the commit and the file name from the changelog:

```text
git show <commit>:proposals/<file name>
```

While a proposal is open, the proposing project works under its own recorded exception or local rule, whose condition for review is the editors' answer.
