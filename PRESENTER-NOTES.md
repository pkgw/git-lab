# Presenter Notes

These are notes from when the tutorial is presented. I always come away from a
presentation with ideas for how to improve things next time, but I almost
never have the time to sit down and make those improvements when everything is
fresh in my mind. So, I jot down notes here.

## 2022-10-17: Center for Astrophysics

- 90 minute tutorial, with a relatively slow start as people filtered in;
  consistent with previous experience, we didn't get much past Part 1. Two hours
  is better.
- Biggest note for next time: gotta handle the prerequisites better. Need to
  reach out to attendees in advance and ask them to confirm that they have Git
  and Python installed. Should figure out a recommended approach for Windows —
  if you install Git Bash and then standard Python, they can't talk to each
  other. Conda is probably the way to go. This could/should also help with
  turnout.
- Addressed the magic commit ID for the `print-my-name` branch as logged last
  time. I think I didn't reference `origin/master` since we haven't defined
  remotes, etc. at that stage of the tutorial. Alternative approach is to have
  the person create the branch early in the tutorial. Chief downside, fully
  expected, is that if they forget to do so, they run into problems in Part 2.
  But if that happens it's easy for a lab assistant to fix.
- Some confusion mixing window scrolling plus `less`. I added some commentary in
  the `less` cheat sheet, but should probably mention it verbally and in the
  handout.
- Despite my continued efforts, someone always types in the placeholder curly
  braces!!! One day I'll figure out how to handle this. Should have a huge slide
  dedicated to it in the intro.
- Trouble with systems where `python3` is available but not unversioned `python`.
  I've updated the demo to use the former.
- While I was at it, updated `master` branch name to `main`. Handout *should*
  match now ...
- Big "wall of text" feeling in the slide talking about merge semantics. Can do
  better.

Carried over from last time:

- Play music or something? I don't like how it gets all silent while people are
  typing away, even though of course that means that they're concentrating.
- Live-presentation materials should emphasize more the freedom enabled by being
  able to give up on experiments safely.
- Would be good to mention CI and other GitHub value-adds at the end.
- Asking people to turn to their neighbors and introduce themselves is *very*
  effective for getting a nice hubbub in the room at the beginning of the
  session.
- Idea: "gold stars" (stickers, WWT bookmarks, whatever) for good questions
- Idea: *command* people to tell things to their neighbors at various stages
  of the tutorial to raise the mean chatter level.
- Should add some scripts to auto-download the necessary font files and
  potentially other large-or-non-redistributable assets.
- My slides don't fill up the browser window without manual zooming. Something
  weird in the `reveal.js` files here? The files are pretty old.


## 2019-11-12: Center for Astrophysics

- Two-hour tutorial. The timing felt just about perfect. One hour for intro
  and Part 1, about 25 minutes each for Parts 2 and 3, and a bit of wrap-up.
- About 18 attendees, right-sized for just me to manage everything.
- Deployed the new landscape format handout with marginal notes. I like how it
  came out.
- Had a spiel about branches and DAGs, delivered between Parts 1 and 2, rather
  than lots of text in the handout. I think this worked better, but still feel
  super unsure as to whether the graph-theory stuff is at all helpful.
- Was happy with how new GitHub pull request bit worked out, and I like the
  way we accumulate "alumni" in the repo.
- Should have a list of prerequisites somewhere: Unix-like CLI, git, web
  browser, GitHub account, Python installation with Numpy, a laptop, a code
  editor, extremely basic familiarity with Python. As ever, something to
  ponder is how to get the fiddly bits set up ahead of time (e.g., getting git
  to launch the right editor).
- Play music or something? I don't like how it gets all silent while people
  are typing away, even though of course that means that they're
  concentrating.
- Live-presentation materials should have emphasized more the freedom enabled
  by being able to give up on experiments safely.
- Quickly mentioned CI and other GitHub value-adds at the end. I feel like that
  was an OK balance of time, but could have spent more time on that. CI, code
  review ... what else would be important to emphasize?
- In 2 attempts thus far, asking people to turn to their neighbors and
  introduce themselves is *very* effective for getting a nice hubbub in the
  room at the beginning of the session.
- Idea: "gold stars" (stickers, WWT bookmarks, whatever) for good questions
- Idea: *command* people to tell things to their neighbors at various stages
  of the tutorial to raise the mean chatter level.
- Several more advanced people were confused by the magic commit ID when
  creating the `print-my-name` branch. Just use origin/master? I forget why
  exactly I went this route.
- Should add some scripts to auto-download the necessary font files and
  potentially other large-or-non-redistributable assets.
- My slides weren't filling up the browser window. Something weird in the
  reveal.js files here? The files are pretty old.
