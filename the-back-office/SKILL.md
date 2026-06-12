---
name: the-back-office
description: The twin runs the shitty-but-necessary back office — to a high standard, with the coach's approval on anything that touches money or clients. Chases failed payments and unpaid invoices, flags renewals and expiries, handles the scheduling shuffle, and clears the recurring admin that eats the workday. Platform-agnostic — reads the coach's real stack from BUSINESS.md. Triggered by "who hasn't paid", "chase my unpaid invoices", "sort my calendar", or "run my admin".
---

# the-back-office — The drudgery, done. With your hand on the approve button.

It takes the recurring back-office work a coach does at 11pm — chasing money, juggling the calendar, the necessary admin — and runs it to a consistent, high standard. The deal that makes it trustworthy: **the twin prepares everything; the coach approves anything that touches money or a client.** That approval gate is the product, not a limitation — it's what lets a coach hand over the keys without fear.

## Never assume the stack — read it
Tools come from `BUSINESS.md` (via `business-builder`). Build around what they actually run; never hard-code a platform.
- **Payments:** Stripe, PayPal, GoCardless, ThriveCart, Stan, or payments inside their coaching platform (Everfit, Kajabi, Trainerize…).
- **Calendar:** Calendly, Acuity, Cal.com, or platform-native booking.
- **Comms:** email, WhatsApp, Telegram, IG DMs — wherever they actually reach clients.

### Day one runs draft-mode (be honest about depth)
- **Draft-mode (day one, every stack):** the coach pastes or forwards what the platform shows (a failed-payment email, an export, a screenshot); the twin drafts the action for one-tap approval. Huge time-save, zero brittle dependency.
- **Deeper later, where a clean connection exists:** once a tool is connected (the community missions), the twin reads the data and prepares actions directly. If a step can't run end-to-end, degrade to draft-for-approval — never fail silently, never guess a payment status.

## What it runs

### Money ops
- **Failed charges** — detect (or be told), draft a warm "your payment didn't go through" message, hold for approval.
- **Unpaid invoices** — surface who owes what and how overdue, draft the chase in the coach's voice (`SOUL.md`), escalating in tone only as far as the coach allows.
- **Renewals & expiries** — flag clients whose plans renew or lapse soon, draft the nudge.
- Always reconcile against the source of truth — if payment status is ambiguous, ask; never assume someone hasn't paid.

### The scheduling shuffle
- Confirmations, reminders, and reschedules for calls/sessions.
- Spot conflicts and gaps; propose fixes for the coach to confirm.
- Keep the calendar tidy without the coach touching it — handled where the calendar is connected, drafted where it isn't.

### Recurring admin
- The weekly necessary tasks the coach defines — filing, prep, reminders, follow-ups — done on a cadence, to a standard, so nothing slips.

## Quality bar (definition of done)
- A real task runs live — e.g. "chase everyone who hasn't paid" → a tidy list of drafted, on-voice messages ready for one-tap approval. (That's the demo and the time-back testimonial.)
- Everything money/client-facing waits for approval; nothing risky fires on its own.
- The coach can describe it in a line: "It handles the chasing and the calendar — I just tap approve."

## Guardrails
- **Honour the Never-without-asking rules absolutely** (spend money, message clients, send emails, delete) — these map to keeping the twin's approval prompts ON. The back office *prepares*; the coach *approves*.
- Never assume or fabricate a payment status — verify or ask.
- Never escalate a chase beyond the tone the coach has set. A bad debt is recoverable; a torched client relationship isn't.
- Each client's data stays scoped to their own file; never leak one client's details into another's message.
