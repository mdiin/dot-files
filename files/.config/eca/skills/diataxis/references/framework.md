# Diátaxis working reference

Condensed from https://diataxis.fr/ (Daniele Procida) for use during audits, in this
skill's own words. The site remains the authority; consult it for anything contested.

## The compass

Two questions classify any piece of content:

1. **Action or cognition** — does it tell the reader what to *do*, or what to *know*?
2. **Study or work** — is the reader *acquiring* skill, or *applying* skill they have?

| Content that…  | …for a reader who is… | belongs in     |
|----------------|------------------------|----------------|
| guides action  | studying               | a tutorial     |
| guides action  | working                | a how-to guide |
| informs        | working                | reference      |
| informs        | studying               | explanation    |

A section whose paragraphs answer these questions differently is mixing modes.

## Quick-scan table

| Mode        | Orientation   | Reader's question          | Title pattern                    | Voice                          |
|-------------|---------------|----------------------------|----------------------------------|--------------------------------|
| Tutorial    | learning      | "can I get a feel for it?" | "Getting started…", "Your first…"| "we…", exact expected output   |
| How-to      | task, goal    | "how do I…?"               | "How to <verb> <goal>"           | "if you want x, do y"          |
| Reference   | information   | "what are the facts?"      | the thing's own name             | declarative statements of fact |
| Explanation | understanding | "why…? tell me about…"     | "About …" fits in front          | discursive, admits opinion     |

## Tutorial — a lesson

Serves the beginner's study through a successful, confidence-building experience of
*doing*. The contract is asymmetric: the teacher carries nearly all responsibility —
for what is learned, what is done, and for the learner's success — while the learner
only follows attentively. The exercise must be meaningful (a felt achievement),
completable, logically ordered, and must bring the learner into contact with every
tool and concept they need to become familiar with.

Principles:

- state the destination up front, then head straight for it
- every step yields a visible result the learner can connect to their action
- narrate expectations ("the output should look like…") and point out what to notice
- keep explanation to a single line plus a link; more breaks the learner's focus
- stay concrete and particular; the general emerges from the particular on its own
- one path only — no options, alternatives, or digressions
- allow and encourage repetition of steps
- aspire to perfect reliability: a step that fails destroys the learner's confidence
  in the tutorial, the product, and themselves

Smells: opening theory dump; "you will learn…" framing; paragraphs of rationale
between steps; branches ("alternatively…"); unexplained assumed setup; steps with no
visible result; steps that only work sometimes.

## How-to guide — directions

Serves the work of an already-competent user pursuing a real goal. Defined by the
user's problem, never by the machinery's operations — "select the options you want
and press Deploy" walks the machine through its motions and helps nobody. Ask what the
human is trying to get done, and let tools appear only as means to that end.

Principles:

- assume competence and a known goal; no teaching, no explanation, no reference
  dumps — link instead
- usability over completeness: start and end at reasonable places and let the reader
  join the guide to their own work
- a logical sequence with flow, but not necessarily a straight line — real problems
  fork, branch, and call for judgement ("if this, then that")
- stay adaptable: a guide usable only for one exact narrow case is rarely worth having
- the title says exactly what the guide shows: "How to integrate performance
  monitoring", not "Integrating performance monitoring", not "Performance monitoring"

Smells: teaches basics mid-task; explains rationale at length; enumerates every option
(that is reference); scope the size of the whole product ("how to build a web app");
a title that hides whether the page is about *how*, *whether*, or *what*.

## Reference — technical description

Serves the working user's need for facts they can rely on: austere, neutral, accurate,
complete, consistent. Reference is consulted, not read. It is led by the product it
describes, not by the user's activity — like a map, it is useful to anyone, whatever
their errand.

Principles:

- describe, and only describe; no instruction, no opinion, no persuasion
- usage examples are welcome as illustration, not as a covert tutorial
- standard patterns throughout: the same kind of fact in the same place for every item
- structure mirrors the machinery's structure — a method documented under its class
  under its module. Divergence between the two structures is where gaps hide.
- warnings and constraints belong here: must, must not, never
- auto-generated API docs are a legitimate reference component, and never the whole of
  a project's documentation

Smells: step-by-step task instructions inside; marketing adjectives; explanatory
essays; a structure matching neither the code nor any standard pattern.

## Explanation — discussion

Serves the studying reader's understanding: context, background, the answer to *why*.
It stands back from the machinery — the one kind of documentation read away from the
keyboard — and is bounded by a topic rather than a task; a real or imagined
why-question is a good anchor for scope.

Principles:

- make connections, including beyond the immediate topic
- give reasons: design decisions, history, constraints, implications
- admit opinion and perspective; weigh alternatives and counter-approaches
- the title test: an implicit "About …" should fit in front of it
- keep it bounded; resist absorbing the instructions and fact-tables that belong
  elsewhere

Explanation is the mode most often missing as such: it survives as fragments scattered
through tutorials, how-tos, and reference. Collecting those fragments is usually how
explanation pages are born. It may be titled Discussion, Background, Concepts, or
Topics — the name matters less than the function.

Smells: swallows procedures or reference tables; unbounded scope; false neutrality —
withholding the reasons and judgements that would actually explain.

## The two damaging conflations

### Tutorial vs how-to guide

The most common conflation in software documentation. Both are practical, ordered
steps promising success — the difference is the need served:

- study vs work; acquiring competence vs applying it
- a managed path in a contrived, safe setting vs the real world and what it throws up
- one line, no choices vs forks, branches, judgement
- eliminates the unexpected vs prepares for it
- explicit about basics vs assumes them as implicit knowledge
- concrete and particular vs general and adaptable
- responsibility on the teacher vs responsibility on the user
- repeatable and harmless vs sometimes one chance to get it right

Not basic-vs-advanced: how-to guides can cover trivial procedures, and tutorials can
teach advanced skills to experts. The question is only ever whether the reader is here
to learn or to get something done.

### Reference vs explanation

Both inform rather than direct. Reference states facts the working user consults and
trusts: neutral, complete, close to the machinery. Explanation discusses, from above
and around, for the studying reader: perspectival, bounded by a topic. A fact-table
buried in an essay serves neither reader; nor does an essay lodged in a fact-table.

## Working method

- Diátaxis is a guide, not a plan. Never create empty four-section scaffolding.
- Improve one small thing, commit it, repeat. Structure is the outcome: move material
  under a Diátaxis heading only when accumulated improvements already demand it.
- Assessment questions for any unit of content: what user need does this serve? How
  well? What single addition, move, removal, or change would serve it better?
- Applying the framework exposes hidden functional defects — inaccuracy, gaps,
  inconsistency — as a side effect. That exposure is part of its value; report what
  surfaces.
- Documentation is never finished, but it can be complete at every stage: useful,
  healthy in structure, ready to grow.
