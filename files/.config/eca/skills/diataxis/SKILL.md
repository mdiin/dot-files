---
name: diataxis
description: Audit and reorganise a project's existing documentation with the Diátaxis framework (diataxis.fr), or map out what documentation is missing — the tutorials, how-to guides, reference and explanation the framework says should exist — as a prioritised writing plan. Classifies every page and section by the user need it serves, flags content sitting in the wrong mode, proposes small reviewable moves, and applies whatever the user approves. Use whenever the user mentions Diátaxis or the four kinds of documentation, asks to audit, review, restructure, or reorganise docs, a docs/ folder, a README, a manual, or a wiki, asks whether something is a tutorial or a how-to guide, asks what documentation their project is missing or where to start writing docs, or wants new documentation planned systematically. Works for any language or doc toolchain; in Clojure projects use clojure-mcp for file access.
---

# Diátaxis

Diátaxis sorts documentation by the user need it serves, along two axes: does the
content guide **action** or inform **cognition**, and does it serve the reader's
**study** (acquiring skill) or their **work** (applying skill they have)? The four
combinations give four kinds of documentation — tutorials (action + study), how-to
guides (action + work), reference (cognition + work), explanation (cognition + study).
Most documentation problems reduce to two: content sitting in the wrong mode, or a
need with nothing serving it.

Read `references/framework.md` before classifying anything. It holds the compass, the
per-mode rules, voices and smells, and the two conflations that cause most damage.
Link to https://diataxis.fr/ when the user should read the source.

## Two jobs

Infer which the user wants; do both for a full docs review.

- **Audit** — classify what exists, flag what sits in the wrong mode, propose and (on
  approval) apply moves.
- **Gap map** — find the needs nothing serves and produce a prioritised writing plan.

## Survey

Find where documentation actually lives before judging it: docs/ or doc/ trees, README
and other top-level Markdown, wiki pages in the repo, man pages, docstring-generated
sites, long comments doing a document's job. Read pages whole — titles lie.

Build an inventory: path, title, apparent audience, mode(s) actually present. Classify
**sections, not files**: real pages blend modes, and the per-section classification is
where the findings come from. Ask the two compass questions of each section and check
the answer against that mode's smells. A section that resists classification is itself
a finding — it usually serves no identifiable need.

## Audit findings

Report in the conversation, grouped by document:

- dominant mode, and how well the content keeps to it
- intrusions: content belonging to another mode, with where it should move
- title problems (a how-to not named "How to …", an explanation "About …" that is
  really instructions, and so on)
- the single next action that would most improve this document

Expect classification to expose accuracy and completeness problems that were hidden —
a reference section restructured to mirror the code makes missing entries visible;
explanation pulled out of a tutorial reveals where the learner was left alone. Report
these as findings even when fixing them is outside restructuring.

Two hard rules from the framework's own working method:

- never propose empty tutorial/how-to/reference/explanation scaffolding to fill later
- prefer many commit-sized improvements over one grand restructure; a four-part
  top-level layout is the *outcome* of accumulated moves, adopted only once the
  material already demands it

## Gap map

Work quadrant by quadrant:

- **Tutorial** — is there one reliable, hand-held path from nothing to a first
  meaningful result? Most projects have none, or have a how-to guide wearing the name.
- **How-to guides** — list what users actually try to accomplish (issues, FAQs,
  support questions, the README's promises) and check each against an existing guide.
  Guides organised around the tool's operations rather than user goals count as gaps.
- **Reference** — compare the documented surface against the real public surface: API,
  CLI, configuration, file formats, endpoints. Where the doc structure diverges from
  the machinery's structure, gaps are hiding; note the divergence itself.
- **Explanation** — collect the why-questions (design decisions, architecture,
  constraints, history) currently answered nowhere, or answered in fragments scattered
  through other docs. Those fragments are the seeds of the missing pages.

Output a prioritised list of proposed documents: mode, a title in that mode's naming
convention, one or two sentences of scope, and which existing fragments would seed it.
Prioritise by user pain, not by symmetry — an empty quadrant does not need filling for
its own sake.

## Applying

Only what the user approves, nothing else. Move content rather than delete it:
explanation extracted from a tutorial becomes the seed of an explanation page, with a
link left behind. Keep every change reviewable on its own.

Diátaxis governs what kind of content goes where; it says nothing about sentence-level
style. Leave prose style to the project's conventions unless asked.
