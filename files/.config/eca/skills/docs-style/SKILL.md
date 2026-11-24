---
name: docs-style
description: Documentation style. Use whenever writing, rewriting, trimming, reviewing or restructuring documentation in any of his projects - README, guides, how-tos, architecture or design pages, reference pages, CHANGELOG entries, public docstrings and user-facing messages - and when he asks to slim, tidy or "kill the darlings" of a doc. Load it before the first sentence is written, not after he objects to one.
---

# Docs style

Write clear, succinct, natural English for a reader who already knows the
domain and the language. The user's own README is the model: it sounds like a
person explaining the project, says the essentials, and stops.

Don't use Simplified Technical English (ASD-STE100) or the `simple-english`
skill for his docs. He tried it, and it made the sentences awkward and often
gibberish: short is good, but terse word order and banned words are not.
Contractions, "e.g.", semicolons and modal verbs are all fine.


## The reader

- **Address the reader as "you".** The reader is a developer. Instructions
  speak to them: "Wrap the password with `secret/hide`", "Download each
  file in order".
- **Use the reader's own jargon, not yours.** Domain terms (podcast feed,
  enclosure, episode) and language terms (atom, Hiccup, decomplected) are
  fine, since the audience knows them. Don't define what they know, e.g.
  no "A podcast is a feed and the files it links to".
- **Never use the project's internal design words in prose.** Words like
  "front door", "layer", "views", "steps" or "below it" mean something only
  to whoever designed the code. Say the fact instead: "the views are the
  only namespaces that require the root namespace", or "Without the
  library, …".
- **Don't make the software a person.** Apps don't decide, know, keep or
  have to do things, and nothing is "up to your app". People do things, and
  software is used: "Downloading and deleting are up to you, since
  podcast-clj knows nothing about the battery", not "The app decides when,
  since it knows the battery". A function can still return or take
  something.
- **Name the concrete things, not a vague whole.** "Everything a listener
  has" means nothing; "the subscriptions, feeds, queue and play progress"
  does.
- **One word, one meaning.** If the domain gives a word a meaning, such as
  "host" for a podcast host, use a different word for anything else, such
  as "domain" for the host of a URL.


## Sentences

- **Read each sentence aloud.** If a person wouldn't say it, rewrite it.
  No fragments for punch, no odd word order to dodge a name, and no "X is
  of the Y": write "the app's clock", "the listener's wallet".
- **Start every sentence with a capital letter.** Never start with a code
  span or a lower-case project name. Rephrase instead: "This fetches
  whatever is due", "For a notification, `comments/text` gives…", "Search
  with `directory/search!`". After "e.g." and inside a code span, this
  doesn't apply.
- **A paragraph that's only a list should be a real list, or shorter.**
  "The view is the feed, its properties, the description as Hiccup and
  as text, the episodes, the seasons and the links…" is a mess to read.
  Make it a bulleted list, or cut it to what the reader needs and leave
  the details to the place that lists them, such as the function's own
  docstring. Option lists in docstrings are usually best as bullets.
- **Mark an example with "e.g." in the sentence it illustrates.** An example
  set off as its own sentence reads like a random fact.
- **Show by example when an abstract rule gets hard to follow.** "`(:enclosure
  (episode/view show item))` is what `(resolve/enclosure item)` returns"
  beats a paragraph about how views relate to the functions below them.
- **Split a long sentence only where two thoughts meet.** Don't cut ", so"
  into ". So" to hit a word count.
- **No cargo-culted phrases.** Don't copy a strange phrase from another
  page, a docstring or the code just because it's already there ("requests
  that strangers choose", "hidden text", "the strict path stays strict").
  Say it plainly in your own words.
- **No cute or fun phrases, and no tics.** No "in the wild", "for free",
  "genuinely", "by the book", no "A few things are worth knowing" or "A few
  events have more to them". When you remove a tic, don't swap in another
  one everywhere.
- **No counts that drift.** Not "fourteen lines" or "more than eighty
  functions", but "a few lines" or "one of them".


## Kill your darlings

Not every facet needs to be in the docs. The docstrings, the code, the
reference pages and git history hold the details, so a page only keeps what
its reader would miss.

- **Explanation pages keep decisions and reasons.** Cut what a function
  does, lists of limits and numbers, test inventories, dated research
  findings and performance figures. Keep the decision a reader couldn't
  guess, and why it was made.
- **How-to pages lead with the call that's usually enough,** then name the
  lower-level functions in a sentence for those who need more control. Don't
  re-implement the high-level call by hand in a second example.
- **Design or principles pages hold short rules with no specifics,** e.g.
  no var names, keys or examples. Each rule takes two or three lines.
- **Don't repeat another page.** Link to it once, or let the reader find it.
- **Write it short from the start.** The user shouldn't have to ask for the
  second cut.
- **Existing text has darlings too.** When restyling a page or a
  docstring, cut as well as rephrase: a tour of every function, an
  explanation that another page already gives, an example that only
  illustrates, or option details that the names make obvious.
- **His own prose is his.** In a page he wrote himself, check only typos,
  grammar and unclear sentences. Never argue for restoring something he
  cut.


## Structure

- **One mode per page,** as Diátaxis has it: a tutorial, a how-to guide, a
  reference or an explanation. Put content in the page of its mode.
- **Plain, short headings** that read as a set, e.g. "General", "API",
  "Code". A heading that says it all needs no lead sentence.
- **Put what the reader needs before the tasks near the top,** e.g. a
  "What you build yourself" list goes after "Before you start", not at the
  end.


## Code in docs

- **Write longer examples in the author's own code style.** For Clojure,
  load the `clojure-style` skill: name any logic as a small `defn` with a
  docstring, keep lines to 80 characters, align maps, thread, and pull long
  nested option maps into a `def`.
- **Run every example before you publish it,** and fix the prose where the
  code proves it wrong. Say which examples couldn't be run, e.g. ones that
  need credentials.
- **Keep comments in code short,** stating the result or the intent: `; =>
  []`, `; when to sync again`.


## Docstrings and messages

The same rules apply to public docstrings, CHANGELOG entries and messages
that users read: natural sentences, a capital letter first, the reader's
jargon, no internal design words.

Every docstring, the `ns` docstring included, opens with a summary of one
or two lines: one sentence that briefly says what the function returns or
does, or what the namespace is for. The rest follows after a blank line.
Don't follow this so strictly that it splits a short docstring: when the
whole thing fits in about three lines, keep it as one paragraph.

The summary names every parameter in backticks, `opts` included, e.g.
"Fetch the feed at `url` and parse it with the `opts` below". If that reads
badly, rewrite the summary or rename the parameter, and give an unnamed
destructured map an `:as` name.

A sentence that strings clauses together with commas carries too much,
e.g. "a Ring handler that answers GET, HEAD, PUT, DELETE and a PROPFIND at
depth zero or one, with ETags and the preconditions, and OPTIONS, so that
a client can ask". Make the items a list, or split the sentence where its
thoughts divide. Past about 30 words, a sentence almost always needs it.

In a docstring, backticks mark the function's own parameters and nothing
else, since more is distracting. Keywords, var names, map shapes and
example values are plain text, phrased to read naturally: "when :removed?"
rather than `:removed? true`, "a map of id to score" rather than
`{id score}`. Put longer code in an indented block.

Where code implements a spec, a short reference to the spec and its
section is enough, with no paragraph around it.


## How to work on a doc

1. Read the whole page and the pages it links to before cutting anything.
2. For a big rewrite, propose a plan first: section by section, what stays
   and what goes. Ask about anything that's a judgement call.
3. Rewrite in this style, and check every fact you keep against the
   source.
4. Scan the result for sentences that start with a code span or a
   lower-case letter, for the software doing human things, and for leftover
   phrases from the old text.
5. Report what you cut, section by section, and why, in a few lines.
