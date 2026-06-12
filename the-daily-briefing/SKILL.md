---
name: the-daily-briefing
description: The twin's compounding loop and its beating heart — a scheduled morning briefing + evening reflection, run as a cron via Hermes. The morning briefing opens on the coach's #1 number, runs ~90 seconds in their own voice, and is saved to disk so any briefing can be replayed; the evening reflection captures the day into memory so tomorrow's briefing is audibly sharper. Triggered by "set up my briefing", "run my briefing now", "do my evening reflection", or on schedule.
---

# the-daily-briefing — Your co-thinker every morning. Smarter every night.

This is the heart of the twin. It does the twin's three real jobs on a schedule: **co-thinker on your priorities**, **handler of the repetitive**, **pulse on your business** — delivered as a morning briefing, and deepened by an evening reflection that makes the whole thing *compound*. The twin is not a builder. It's the always-on operating layer, and this loop is where it lives.

## What it reads (no integrations required — twin-pure)

The twin's own brain first: `SOUL.md` / `BUSINESS.md` / `OFFER.md` / `ICP.md` + always-on memory + **The Download** (the operational brain-dump from setup — clients by name, this week's deadlines, the #1 number) + the client files in `Clients/` + the running reflection log. If a calendar or inbox happens to be connected, use it — but **never block on an integration.** Day one runs entirely off what the twin already knows about them.

## Morning briefing — the co-thinker + the pulse

**~90 seconds, hard cap.** Delivered as a voice note **in their own voice**, on schedule (default ~6am). The shape:

- **Open on their #1 number** — the metric they check obsessively (recurring revenue, active memberships, calls booked). First sentence, every morning. It's their pulse; hand it to them before anything else.
- **The ONE priority today** (from their goals + last night's reflection)
- **What's on** — calls/sessions + any prep
- **Who needs them** — from the client pulse: gone quiet, at risk, celebrating, due a check-in
- **Money / leads / follow-ups** to action
- **"Yesterday you said you'd ___"** — gentle accountability
- **One line of co-founder energy** in their voice

Rules: short, specific, spoken. **Names and numbers, never vibes** — if memory is thin on something, say so plainly rather than padding. The job: **they don't start the day from zero.** The twin hands them the day.

**Save every briefing** — write each one (dated) to `~/[TwinName]/Briefings/` so any briefing can be replayed later. The proof of compounding is hearing two briefings side by side; that only works if they persist.

## Evening reflection — the compounding engine

On schedule (default ~8pm) the twin prompts a 60-second voice-note reflection:
- Wins / what got done
- What slipped / blockers
- How they're feeling (founder check-in)
- Decisions made → **written to memory**
- Ideas today → idea bank
- Anything about a client → **their file in `Clients/` gets updated**
- The ONE thing for tomorrow → **feeds tomorrow's briefing**
- Lessons about what works for *them* → **accumulate**

Then: **write the durable learnings into the twin's memory** (running log + always-on memory updates). This is the single mechanism that makes tomorrow's briefing sharper than today's.

## Workshop mode — the same-day compounding demo (engineer the delta, don't assert it)

In the room: schedule both crons, trigger the first briefing live ("run my briefing now"), then — after the afternoon's delegation work — seed one reflection and trigger a **"tomorrow's briefing" preview**. The preview must be *audibly* different from the morning's. Three elements, every time:

1. **The delegated job, in motion** — *"Your three win-back drafts are sitting in Telegram waiting on your OK."* Delegation made visible.
2. **Their reflection, played back as a learned priority** — something they said an hour ago, now shaping tomorrow's plan.
3. **One progressive-delegation offer** — *"I noticed you [X] every week — want me to just handle that from now on?"*

Then the theatre: **play the morning's saved briefing first, the preview straight after.** Same twin, four hours apart. That side-by-side is the entire thesis, proven aurally. (This is why briefings persist to disk.)

## The compounding & progressive delegation (the north star — bake this in)

Every reflection deepens the twin's model of the coach — their patterns, priorities, what works, what drains them. Over weeks the twin should:
- **Pre-empt** — surface the thing before they ask.
- **Earn more of the grind** — *"I notice you do the Monday roster review by hand every week. Want me to have it waiting for you instead?"*

This is **progressive delegation**: the twin takes on more over time, so the coach keeps reclaiming hours for the work they love. **Always offer, never assume.**

## Setup as a cron (in Hermes)

- Schedule both jobs as Hermes scheduled tasks (morning briefing + evening reflection) at the coach's chosen times.
- Any briefing can also be **triggered on demand** ("run my briefing now") — and the first one can be scheduled near-term so it lands shortly after setup (in the workshop: it cooks over lunch and buzzes their phone mid-bite).

## Day-one framing (say this out loud)

With The Download captured, the first briefing already names real names and real numbers — it should never be generic mush. But it's still the shallowest the twin will ever be, and that's the pitch, not a flaw: *"This is the dumbest your twin will ever be. Watch where it is in a month."* Narrate the compounding so day one sets up the arc.

## Quality bar (done when)

- Both crons are scheduled at the coach's times.
- A briefing fires and lands as a voice note in their voice — **opens on their #1 number, runs ≤90 seconds, and is saved to disk.**
- One reflection is captured → memory and client files updated.
- A triggered "tomorrow's briefing" audibly contains the three delta elements — **they hear it compound.**

## Guardrails

- **Surfaces and suggests; the coach decides.** The twin is a co-thinker, not the boss. (Watch the echo-chamber trap — it amplifies their judgment, it doesn't replace outside challenge.)
- Nothing money/client-facing fires without approval (Never-without-asking).
- Never fabricate a metric or a priority — if memory/data is thin, say so.
- Progressive delegation is always **offered and approved**, never assumed.
