---
name: the-fuel-gauge
description: Keeps the twin sharp while stopping runaway token burn — the cost governor that ships in every Appfluence twin. Enforces tiered model routing (cheap brain for routine work, premium brain only when reasoning demands it), bounded sessions (checkpoint-and-reset instead of one ballooning conversation), lean context (load skills, mine them, drop them), and the right-engine rule (the brain lives on the flat Nous Portal subscription — no metered API key, ever; heavy builds aren't the twin's job). Triggered by "set up my fuel gauge", "why is my twin expensive", "check my token burn", "my AI bill is too high", or run automatically at twin setup.
---

# the-fuel-gauge — Stay smart. Stop the burn.

A digital twin that's brilliant but bankrupts you is a broken product. The pain is real and specific: an unmanaged twin can burn **80M+ tokens in a single day** (~$1,200) without doing anything obviously wrong. This skill is the governor that prevents it — and it does so **without making the twin dumber**. That distinction is the whole point. "Cheaper because it's worse" is a worse deal than "expensive but smart." The fix is architecture, not a downgrade.

## Why twins burn money (the real mechanics — teach the coach this once)

The bill is almost never "the model is too expensive." It's four compounding drivers, ranked by actual impact:

1. **Long sessions (the silent killer).** Every turn re-sends the *entire conversation so far*. A 50-message session doesn't cost 50× a 1-message one — it costs roughly the **square** of that, because turn 50 re-pays for turns 1–49. One ballooning session burns more than ten short ones doing the same work. **This dwarfs the model choice.**
2. **Fat resident skills.** A big skill loaded into context gets re-sent on *every* turn until the session ends. A 100KB skill = ~25K tokens taxed on every single message. Two of them in a long chat = millions of wasted tokens.
3. **Model tier.** Premium model vs mid-tier is a real ~5× gap — but it's *smaller* than the two above. Reaching for "use the cheap model" first is fixing the third-biggest leak while ignoring the top two.
4. **The wrong engine for the wrong job.** A twin that tries to do *heavy building* (apps, pages, mountains of code) inline does it slowly, badly, and expensively. Building isn't the twin's job — the twin thinks with you, handles the repetitive, and keeps the pulse. Big builds are the advanced path, on different rails.

**The insight to internalise:** input-to-output token ratios on a burning twin run 200:1 or worse. You're not paying it to *think* (output) — you're paying to re-send *context* (input). Attack the context, not the intelligence.

## The four pillars (this is the architecture every twin runs)

### Pillar 1 — Tiered brain (smart where it matters, cheap everywhere else)
- **Default to the mid-tier model** for the 90% that is conversation, capture, routing, summarising, drafting. On these tasks it is **not meaningfully dumber** than the flagship — same answer, ~5× cheaper.
- **Escalate to the flagship only** for genuine deep reasoning: strategy, complex multi-constraint decisions, hard problems. Make this an explicit opt-in (a command, a keyword), then drop back.
- Never run the flagship as the always-on default. That single setting is the most common cause of a catastrophic bill.
- Config: `model.default` = mid-tier (e.g. `anthropic/claude-sonnet-4.6` — strong agentic performance at a fraction of flagship cost); flagship reachable via `/model <flagship>` per session.

### Pillar 2 — Bounded sessions (kill the O(N²) blow-up)
- The twin **checkpoints to memory and starts fresh** rather than letting one conversation grow to dozens of messages. Durable facts go to memory; the bloated transcript gets dropped.
- Set compression to trigger early (`compression.threshold: 0.35`) so a long session keeps shedding dead weight instead of re-sending it.
- Rule of thumb the coach can feel: **one task, one session.** Finished one job? New session for the next. This is the single biggest saving and costs *zero* quality.

### Pillar 3 — Lean context (load, mine, drop)
- Heavy skills are **loaded, used, and released** — never left resident across a whole session.
- Big reference material (price lists, brand guides, long SOPs) lives in **files the twin reads on demand**, not in always-on skills that ride every turn.
- Keep persistent memory **tight** — behaviour-shaping facts only, not archives. Memory re-sends every turn too.

### Pillar 4 — The right engine (the brain lives on the Portal, full stop)
- The twin's brain runs on the **Nous Portal subscription** — one flat monthly fee, one login. There is **no metered API key anywhere in the environment**: `echo $ANTHROPIC_API_KEY` must come back empty. One leaked key silently re-routes the brain onto pay-per-token billing — that exact mistake once burned ~$700 in a fortnight. Check it; keep it clean.
- **The twin does not attempt heavy builds inline.** If the coach asks for a big build (an app, a full website), the twin says so honestly: *"That's next-level work — it runs on different rails. I'll capture the brief so it's ready when you take that step."* Capture, don't churn tokens pretending.

## Setup (run this at twin install — make it invisible to the coach)

1. **Set the default model to mid-tier**, flagship as opt-in.
   - `hermes config set model.default <mid-tier-model>`
2. **Tune compression to shed context early.**
   - `hermes config set compression.threshold 0.35`
3. **Confirm prompt caching is on** (re-sent context prefix bills at ~10% on repeat turns — quality-neutral, pure saving).
4. **Confirm the brain is on the Portal** — logged in, and no `ANTHROPIC_API_KEY` (or other metered key) in the environment.
5. **Apply session discipline** — coach the "one task, one session" habit; the twin proactively checkpoints and resets on long jobs.
6. **Restart so config takes effect** (`hermes gateway restart`) — config changes are read at startup, not mid-session.

## The fuel gauge itself (give the coach visibility)
The twin can show its own burn on demand, so cost is never a surprise:
- `hermes insights --days 7` → tokens by model, by session, by platform. Surface this as a plain-English readout: "This week: X tokens, Y% on the premium model, your most expensive session was Z."
- Flag the pattern, not just the number: *"One session burned 18M tokens — that's a long-conversation problem, not a model problem. Want me to reset sessions more aggressively?"*
- Proactively warn when a single session crosses a token threshold, before it becomes a $200 conversation.

## Quality bar (definition of done)
- Default model is mid-tier; flagship is opt-in only. **No always-on flagship.**
- Compression threshold ≤ 0.35; prompt caching confirmed on.
- No skill over ~30KB sits resident across a full session; heavy reference is file-on-demand.
- Brain confirmed on the Portal subscription; no metered key in the environment.
- The coach can ask "what's my burn?" and get a clear, honest answer.
- **Net test:** the twin is as sharp as before, and the running cost is a flat, predictable subscription. If it got cheaper by getting dumber, this skill failed.

## What this is NOT
- It is **not** "switch to a cheap, weak model and hope." A weak model that fails tasks costs *more* — retries, corrections, abandoned work.
- It is **not** a one-time toggle. It's an operating discipline the twin enforces continuously: route smart, keep sessions short, keep context lean, stay in its lane.

## The pitch (why this is a product differentiator)
A raw ChatGPT wrapper or a generic competitor can't say this. "Your twin is *engineered* not to burn money — tiered brain, bounded sessions, a flat subscription, and it knows its lane" is a claim only a purpose-built twin can make. Cost-safety is a feature. Sell it as one.
