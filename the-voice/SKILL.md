---
name: the-voice
description: How the twin gives itself the owner's voice and tunes it to sound right — taking the ElevenLabs API key, setting the accent-correct model, and fixing the common problems (clipping, too-intense delivery, accent drift). Triggered by "use this ElevenLabs key", "tune my voice", "my voice sounds off / clipped / not like me", "make me sound calmer", or "upgrade to my Pro voice".
---

# the-voice — Sound like them, then get it right

The voice is the moment the tool becomes *theirs*. This skill is how the twin sets up its own speech from the owner's ElevenLabs key and tunes it until it actually sounds like them. Most "it doesn't sound like me" problems are config, not the clone — and they're all fixable from chat, no restart.

## Wiring it up (when they paste the key)

When the owner pastes an ElevenLabs API key and tells you to use it:
1. Set the provider to `elevenlabs` and store the key.
2. Set the voice to the one they created (by name or voice_id).
3. Set the **model and settings below**, then reply with a voice note so they hear it immediately.

## The settings that matter (start here)

```
provider:          elevenlabs
model_id:          eleven_turbo_v2_5      # NOT multilingual — see accent note
stability:         0.5
similarity_boost:  0.9
style:             0.1
use_speaker_boost: true
speed:             1                       # must live INSIDE voice_settings, not a top-level arg
```

- **Accent (read this).** Use **`eleven_turbo_v2_5`**. The multilingual model drifts Australian and New Zealand accents toward British or American — it flattens exactly what makes them sound like them. Turbo holds the accent. If the accent sounds wrong, the model is almost always the cause.
- **similarity_boost** high (~0.9) keeps it close to their clone.
- **style** low (~0.1) keeps it natural; high style over-acts and clips.

Config is read **fresh on every voice note** — changing any of these takes effect on the next reply. No restart needed.

## Tuning — the three problems you'll hit

**1. Clipped, too loud, or too intense.**
- Raise `stability` (0.5 → 0.65 → 0.8 for calmer).
- Lower `style` (0.1 → 0.0 to fully flatten).
- Rewrite the script shorter: short sentences, full stops and pauses. Pacing in the *text* drives the delivery more than any setting. Try this BEFORE touching config.

**2. Doesn't sound like me.**
- Raise `similarity_boost` toward 0.95.
- If it's the *energy* that's off, it's usually style/stability (above), not the clone.
- If it's still not them, the 30-second Instant clone is the limit — move them to the **Pro voice** (below).

**3. Accent drifted (British/American creeping in).**
- Confirm `model_id` is `eleven_turbo_v2_5`, not `eleven_multilingual_v2`.

## The Pro upgrade (the spot-on version)

The 30-second Instant clone is a rough sketch — the roughest their voice ever sounds. When they want it spot-on:
1. They record a few minutes of clean audio at home (2–3 min, varied, natural).
2. Create a **Professional Voice Clone** at ElevenLabs (it trains for a bit).
3. Swap the twin's `voice_id` to the new Pro clone. Same settings above.
Tell them this upgrade path on day one so the rough Instant clone reads as "the floor, not the ceiling."

## Pitfalls (these waste the most time)

- **Settings need no restart.** They're read per call. Just change config and send another voice note.
- **Gateway restart is blocked from inside the chat** (the twin runs inside the gateway). A restart — only needed if Hermes itself was patched on disk — must be run by the owner from a Terminal outside the app.
- **Use the provider-specific config path** for the voice (e.g. `tts.elevenlabs.voice_id`), never a generic `tts.voice` key — ElevenLabs ignores the generic one.

## Quality bar (done when)

- The twin replies in the owner's voice, accent intact, no clipping.
- The owner has heard it and said "that's me" (or "close enough for now — I'll do the Pro version").
- The owner knows they can say "tune my voice" any time and you'll adjust.

## Guardrails

- Never swap the voice or model without the owner hearing the result.
- Their API key is theirs — never expose it or paste it anywhere it leaves the machine.
