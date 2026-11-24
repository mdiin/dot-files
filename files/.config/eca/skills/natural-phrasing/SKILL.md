---
name: natural-phrasing
description: A rewriting pass for the awkward phrasing that creeps into my prose - passive voice, odd verbs like "gives nil", inverted or stacked clauses, comma chains and ", and" joins, spec jargon and fully qualified names. Use it on every README, doc page, docstring and code comment that I write or revise in the user's projects, before they see it, and whenever they call a sentence awkward.
---

# Natural phrasing

The user keeps finding the same awkward patterns in what I write. They come
from packing a precise thought into as few words as possible, until the
sentence is correct but no person would say it. The fix is to say the same
thing the way a developer would say it out loud.

This is a pass over text, not a style to imitate. It complements
`docs-style`, which decides what belongs on a page. This skill is about how
each sentence reads.

## How to work

1. Read each sentence the way the reader will hear it. If a colleague
   wouldn't say it like that, it needs work.
2. Name what's wrong with it (see below), then rewrite the whole sentence.
   Don't patch one word, and don't swap in a synonym that's just as odd.
3. Check each claim you keep against the code. A rewrite is when stale
   docs get noticed, so don't polish a sentence that's no longer true.
4. Reread what you changed for the same patterns. A fix often brings in a
   new one, such as a fresh ", and" join.

## What to look for

- **Passive voice that hides who acts.** "A domain is converted by UTS #46"
  is dull and vague. Name the actor: the library, the function, the
  browser or the reader.
- **Verbs that nobody uses for code.** Code returns, takes, parses, checks
  and contains. It doesn't "give nil", "write" the URL that a string
  contains, "read" when it means parse, or "tell" when it means check. Use
  the verb a developer would use for the operation.
- **Inverted or stacked clauses.** "Whose tables the library carries", "the
  URL that the text writes" and "the X of the Y of the Z" make the reader
  untangle the sentence. Put the subject first with its verb next to it.
  When a clause carries a fact of its own, give it its own sentence.
- **Comma chains and ", and" joins.** Short bursts of words strung on
  commas read staccato. Joining sentences with ", and" out of habit makes
  one long sentence out of two thoughts. End the sentence, put an aside in
  parentheses, or drop the commas that the reader doesn't need.
- **Names spelled out in full.** Use the short name that the reader sees in
  their own code, e.g. the idna namespace rather than its fully qualified
  name. In docs, link it when the reader may want more.
- **Jargon from inside a spec.** Words that only mean something to someone
  who has read the standard (e.g. "flag" for an option) or a bare document
  number on its own. Say what the thing is in plain words and link the
  spec.
- **Saying something twice.** Cut a code block that repeats the sentence
  before it, a clause that restates the function's name, or an explanation
  that the page already gives elsewhere.
- **Fragments.** A comment or summary that's a noun phrase hanging on a
  comma, or an opening line without a verb. Make it a sentence.
- **Odd code without a reason.** A comment on code that looks strange
  should say why it's written that way, not what it does.

## What not to do

- Don't treat these as search-and-replace rules. "Gives the same answer"
  is plain English, one ", and" between two short clauses can be fine,
  and not every name needs a link. Fix what reads badly and leave what
  doesn't.
- Don't trade one tic for another. If every "gives" becomes "returns" and
  every sentence starts "The library", the text is as monotonous as before.
- Don't change the form that a codebase's docstrings already share, e.g.
  summaries written as noun phrases. Don't rewrite prose that the user wrote
  themselves, except for errors.
- Don't add words to sound friendly or casual ("just", "simply", "Note
  that"). A missing article or verb is still worse than a longer sentence.
- Don't let the pass make the text longer. Each rewrite should be about as
  long as the original or shorter. A verbose section should lose a
  sentence or two.

## Before you finish

Scan the changed text once more for passive constructions, the verbs
above, ", and" joins, runs of commas and claims that you didn't check.
Then report what you changed in a few lines, not sentence by sentence.
