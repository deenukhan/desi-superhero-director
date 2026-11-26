# Director and Critic: plan until they agree

Why two roles: one pass of planning reliably produces plans that *sound* great but ask the video model for too much. In testing, a first-draft plan asked for about 18 events in 7 s, plus props too small to read and a gag that couldn't render. A separate Critic caught 8 such problems. The plan that both signed off rendered cleanly on the first try.

## How to run it
- **Claude Code / an environment with subagents:** spawn two real agents. Give the Director the brief, the user's answers and the references. Give the Critic the brief and the Director's plan file only, not the Director's reasoning. Loop: Director → Critic → Director revises → Critic signs off. Stop after 2 rounds; if they still disagree, take the safer option and tell the user the open point.
- **claude.ai / no subagents:** run two clearly separated passes in your own reasoning. Write the plan; then, as the Critic, read only the plan and attack it against the checklist below; then revise. Show the user only the final plan, plus a one-line "Critic caught: …" note.

## Director brief (fill in)
```
GOAL: <format A–E, length, aspect>, <hero>, <the user's idea in one line>
MUST: every clip = setup → escalation → payoff + comic button; 2–3 shots per 5–7 s clip;
      1 event per single-shot clip, ≤2 per shot in a multi-shot clip (cap 4); one camera move per shot;
      one-way speed ramps (start slow at frame 0, snap to full speed once); no tiny wide shots;
      hero on-model (identity lock); wordless; ≤350 words per prompt, one paragraph.
STORY: one new toy (revealed in parts, full reveal on the drop), real stakes played straight,
       escalation ladder (each set piece bigger than the last), a build/suit-up before the drop.
DELIVER: logline · cast table · clip table (location, light, action, wow frame, comic beat) ·
         music map with the drop timestamp · sheet prompts · clip prompts · risks · credit estimate.
```

## Critic checklist (verdict: APPROVE / APPROVE WITH FIXES / REVISE, max 8 required fixes)
**Will it render?**
- [ ] Events per shot within the limit; no "two running steps then a foot plant on a bench" choreography
- [ ] Props big enough to read at the output resolution; nothing important smaller than a hand
- [ ] Physical sense: a flat swing at a ducking head can't hit something hanging above him; left/right geography consistent across shots
- [ ] At most about 4–5 distinct faces per clip; every face has a reference sheet
- [ ] No continuity gag that needs the same tiny object to survive across shots
- [ ] Prompt ≤ 350 words, one paragraph, references mapped to the right @image numbers, no contradictions

**Will it work as a film?**
- [ ] Frame 0 is a complete, striking image (never black); the reveal itself lands on the drop
- [ ] Archetype readable from a thumbnail silhouette in under 0.5 s
- [ ] The wow fills at least 40% of the frame, or is bigger than the hero
- [ ] Stakes are personal, not trivial; the comedy sits in the props, never in the stakes
- [ ] There is a build before the drop and an escalation ladder (for 45 s and longer)
- [ ] The hero's mouth and jaw are visible if a mask is used (deadpan needs it)
- [ ] The tail or ident is ≤ 10% of the runtime
- [ ] Each clip differs from the others in location, action and light (for multi-clip episodes)
- [ ] **"Would this beat the best desi superhero reel in its slot?"** If not, name the weakest beat and fix it

**Is it safe and original?**
- [ ] No official superhero names or logos in prompts; the emblem is homemade and asymmetric
- [ ] No copied characters, plots, covers or signature compositions from another creator (the format is fine, the specifics are not)
- [ ] No gore or real-looking injury; no child or animal in danger (a child near a stunt becomes a happy accident, at a safe distance); no explosives or fire on or near people; no one standing on rail tracks or in traffic
- [ ] Real faces only with consent; brand claims only as approved

## Sign-off block (append to the plan)
```
CRITIC SIGN-OFF: APPROVED WITH FIXES
Fixed: 1) … 2) … 3) …
Watch in take 1: … (what is most likely to go wrong)
```
