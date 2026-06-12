---
name: the-client-pulse
description: The twin's retention radar. Watches for the clients who are about to quietly leave — who's slipping, who's gone silent, who hit a milestone, who's up for renewal — and flags them with the why and a talking point. It NEVER writes the check-in; the coach does the human touch. Data arrives in layers (told by voice → weekly exports → live tools later); never blocks on an integration. Triggered by "how are my clients", "who's at risk", "run my client pulse", or on a weekly cadence.
---

# the-client-pulse — Catch the client who's about to quit, before they do.

Clients don't churn overnight — they go quiet first. Coaches miss it because they're buried in delivery. This skill makes the twin watch the signals and surface the human moments early: the at-risk client, the win worth celebrating, the renewal coming up. Retention is the cheapest revenue there is; this is the skill that protects it.

## The boundary (hard rule — this is the product's line)

**The twin flags who needs you. You do the needing.** It surfaces the person, the why, and at most a talking point — it never drafts or sends the check-in itself. The check-in IS the coaching, and the coaching belongs to the human. The line to remember: *"Your twin never talks to your clients for you. It makes sure you never miss the client who needs you."*

## The health model (how the twin thinks about every client)

The twin keeps one simple state file per client in `~/[TwinName]/Clients/<name>.md`:

- **Baseline** — what "normal" looks like for *this* person (their usual rhythm, not a global average)
- **Recent signals** — dated log of what's been observed or told
- **Status** — 🟢 steady / 🟠 watch / 🔴 act now — always with the **why** in one line
- **Last human touch** — when the coach last genuinely reached out
- **Renewal / program end date** — so the conversation happens early, not late

**The signals it watches:** activity dropping vs their own baseline · gone quiet (no replies, no check-ins, no logins) · response latency stretching · a milestone or streak worth celebrating · renewal or program-end approaching · a payment hiccup (often the first churn tell).

## Where the data comes from (layers — use what exists, never demand more)

1. **Told by voice (day one — works for everyone).** The coach mentions things in passing ("Sarah skipped again this week") and the twin updates the file. Plus the rhythm-maker: a **weekly cron roster review** — the twin asks, *"Give me ninety seconds on the roster — who's smashing it, who's gone quiet?"* The twin asking on schedule is what makes this stick; it never relies on the coach remembering to report.
2. **Exports (week one — works for ~every platform).** Hapana, 1FIT, Everfit and friends all export CSVs and reports even when they gate their APIs. The coach drops the weekly export (or a screenshot) into the chat; the twin reconciles it against the client files and updates every status. 80% of the integration value, zero API fragility.
3. **Live tools (later — where they exist).** Payment platform, calendar, client platform APIs where access is granted — set up one at a time as community missions, never assumed, never required. If a connection exists, use it; if not, layers 1–2 already work.

## The weekly pulse (the output)

A short ranked list, delivered in the briefing or on demand:

- **Who** → **status** → **why, in one line** ("Sarah — 🔴 — no sessions logged in 9 days, went quiet right after the program change")
- **One talking point** the coach might open with — a fact, not a script ("she mentioned her sister's wedding is coming up")
- **Celebrations too** — a milestone missed is trust lost; surface the wins worth a genuine message
- Renewals coming inside the next two weeks, every time

## Quality bar (done when)

- The coach gets a weekly pulse that names real people with real reasons — nothing generic, nothing padded.
- At-risk clients are caught *early* — before they cancel, not after.
- The coach can say it in a line: "It tells me who needs me before I'd have noticed. I make the call."

## Guardrails

- **Never draft or send a client check-in.** Flags and talking points only — the Never-without-asking rules apply absolutely.
- **Never fabricate a signal.** If the data is thin, say so ("I've only got what you've told me — drop in this week's export and I'll sharpen up").
- Each client's data stays scoped to their own file; never reference one client in another's context.
- Surface concerns; don't diagnose or alarm. The coach owns the relationship.
