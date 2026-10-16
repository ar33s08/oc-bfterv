# AI Offensive Coordinator — 7v7 Flag

## The link

# **tinyurl.com/flagoc**

Text that to the group chat. It opens on any iPhone, works offline, no app and no sign-in.
On your own phone: Share → **Add to Home Screen** and it runs full-screen like a real app.

Tap **SHARE** in the app to drop *this exact call* into the group — the receiver's link opens
straight onto the play with their front, coverage and situation already loaded.

The site itself lives at `ar33s08.github.io/oc-bfterv/`; the short link is the only thing worth
typing. Repo: `github.com/ar33s08/oc-bfterv`.

## How to use it at the field

1. Look at their front and tap it (e.g. `1-5-1`).
2. Tap their coverage — ZONE / MAN / PRESS.
3. Set the down, distance and field position.
4. Tap **CALL IT**.

Then the fun part: every call shows **what they'll do about it** with the answer one tap away.
Tap that and it becomes the new call — that's the chess match, pre-loaded.

## Texting a call to the group chat

Tap **SHARE** and it dumps a link into Messages. Whoever taps it opens straight onto that exact
play, with their front, their coverage and the situation already loaded. That's the whole point —
nobody has to set anything up.

## The scheme in one breath

Seven defenders is a fixed number, so every front is just them choosing where to be short.
Subtract their rushers from seven and that's what they have in coverage. With a free rusher and
no real blocking the clock is about 2.2 seconds, so everything either comes out fast or the QB is
gone. Read the **INSTALL** and **THEIR LOOK** tabs — the plays only work if the technique does.

## Things specific to us

- **No hands blocking.** Chip only, hands behind the back. It's a speed bump, not a wall — and if
  you chase after chipping you've blocked nobody and run nobody open.
- **The center snaps every play**, then either blocks or releases clean. He is the one player no
  defense accounts for, so *Center Leak* and *Center Arrow* are free money until they spend a
  defender on him — which opens everything else.
- **Kais and Fareed both run the whole book.** Same formations, same motion, so nobody knows which
  one is in. Only the flavour changes: lean run with Kais, lean vertical with Fareed, and use the
  motion and throwback stuff when they're both on the field.

## Files

- `index.html` — the whole app. One file, no dependencies, no build step, works offline.

## Editing plays

Everything lives in `PLAYS` inside `index.html`. Each play needs a `beats` list of the fronts and
coverages it beats, a `sit` list of situations it fits, a `next`/`next2` counter chain, and one
assignment per position including the center's job. Keep the counter chains honest — that's what
makes it a coordinator instead of a list.