# Intent router: what the user really wants, and what to ask

Contents:
1. The router table
2. Length rules
3. Ask or assume
4. The question message
5. Worked examples

## 1. The router table

| User says | What they really want | Do this | Ask only if unknown |
|---|---|---|---|
| "5 sec clip of my desi hero" / "one shot" | **One wow beat** | Format A: one 5 s generation (the model allows 4–30 s). About 35% alive calm (mask adjust, cloth in wind, slow push), then the cue, then the reveal on the hit, then a deadpan hold. One event only. **No story.** | Which hero (sheets?), what the wow is (toy, power, entrance), song or SFX-only |
| "a reel" / "15–30 s" | Micro-story | Format B: 3–5 gens. Problem, then build, then reveal on the drop, then button | Hero, the one problem, track |
| "a 1 min video" / "60 s episode" | Vignette (default) or teaser | Format C, with the drop at 40–55%. State "vignette" in one line | Vignette or origin-teaser, if the request hints at either |
| "make an episode" | A full episode | Format D, 90–120 s (the sweet spot). One new toy, a build slot, an escalation ladder, the drop at about 35% | Series context, track, length if they care |
| "a 3-minute film" / "a long one" | An event | Format E: 2–3 music sections. **Offer to split into 2 parts** past about 160 s | Confirm the trade-off, budget |
| "a fight scene" | Action set piece | 15–30 s = 3–5 gens: master wide, impact ECUs in slow motion, a bystander cutaway, the button. Lit-circle (comic) or one-take brawl then 0.6 s bursts (epic) | Who vs who, comic or epic, location |
| "continue my series" | Next episode | Read their bible and last episode. **Open on its final image**, pay off the cliffhanger, one new toy, fold in a top comment. No bible? Build a 6-line mini-bible from their answers and confirm it | Where it ended, top comments, what's new |
| "a teaser" / "a trailer" | A promo | Format B/C structure but **withhold the payoff**: 3 money shots, title last, "Coming soon" | Which episode, release text |
| "a meme of my hit element" | A single-shot spin-off | Format A, with a calm subject in front and the breakout element erupting behind, vertical, silence then hit | Which element fans are naming |
| "a new hero" / "spin-off" | Launch | An "Episode 0" teaser: ritual → feat → witness → second feat → stare → title last. New colour and numeral 0; tag the parent series | Archetype, trade, colour, own track |
| "a crossover" / "versus" | Event | Format E: a misunderstanding turns heroes against each other, a flashback gives the stakes weight, a versus card in both colours. **Invent your own cause** | Which heroes, cliffhanger or resolution |
| "an origin story" | Hero's beginning | Format C/D: wound or injustice → turn → power discovery (reveal order) → victim payoff → twist button | Hero, the injustice, the power |
| "a reel for my brand" | An ad that doesn't feel like one | The product becomes the hero's **tool inside his trade**: 1 functional beat + 1 product ECU + 1 hero shot. **It must never break the hero's powers.** 30–60 s, with a disclosure label | Brand, product, must-show claims or logo, real product photos, mascot or user's hero |
| "use my face" / "me as the hero" | Self as hero | Their real photo or own character sheet as the identity reference. Check the likeness before showing | **Face visible, half-mask (mouth and jaw free) or full mask?** Consent for any other real people |
| "like the desi Batman / Spider-Man reels" | That genre | Explain the method and build an **original** hero by archetype substitution with a homemade, logo-free costume. Warn that official names and logos trip IP filters | Which archetype, trade, twist |
| "make a desi superhero video" (vague) | Not sure yet | Default to Format B, 30 s, 9:16, with a new hero; state the defaults in 3 lines | At most 3: archetype (or "surprise me"), the wow, the song |
| A pasted 20-scene story / "a 10-min film" | Their story, intact | Keep their beats and map them to the format slots. Merge or cut to fit and **list what you cut**. Past about 160 s, split into 90–120 s parts, each ending on a cliffhanger | Which beats are untouchable, length per part, budget |
| "add dialogue / voiceover" | Spoken lines | Allowed as an override. Prefer VO or captions over lip-sync on a masked face | Language, whose voice |
| "my video flopped, fix it" | A re-cut | Run the re-cut checklist (`music-and-edit.md`): signature song, reveal on the drop, trim tails and subplots, cover with the new element | The file or shot list, the original track |
| "just the prompts" | Prompts only | Skip the edit plan; still run Director and Critic; output the sheet prompts and clip prompts | Format, sheet status |
| "funnier" / "more action" / "more emotional" | Tone shift | Turn the dials (`story-and-series.md`), no questions | Nothing |

## 2. Length rules
- **A length the user states beats any verb.** "A 60 s episode" is Format C, not D.
- With no length given, infer from the verb: "clip" or "shot" → A, "reel" → B, "episode" → D, "film" → E. Confirm it in the same message.
- **"5 seconds"** is one 5 s generation of one event. Multi-shot beats use 7 s generations.
- If the request contradicts itself ("a 5 s episode"), say what you'll make: "a single beat, not a story".
- Past about 160 s, always offer parts. Audiences reported fatigue on single-song runs past about 150 s.

## 3. Ask or assume

| Decide yourself (state it in one line) | Always ask |
|---|---|
| Shot grammar, shot length, beat sheet, reveal timing | Anything that spends money or credits |
| Grade (golden-hour haze by default), title and cover style | Whose face; any real person |
| No dialogue; light SFX under the song | Brand claims, logos, sponsor rules |
| Hero colour: **pick one that isn't red**, and suggest 4 | Which copyrighted song (they add it in-app) |
| Toy reveal order, power-reveal order, fight pattern | Series continuity they haven't shared |
| Format by length; offer parts past 160 s | Masked or face visible when they are the hero |
| Tone: straight craft plus desi deflation | Anything grittier than slapstick |
| Skip the budget question when they asked for prompts only | Anything that would copy another creator |

If the user says "just make it", use every default and list them in 3 lines.

## 4. The question message
One message, at most 5 questions, each with a default in brackets, so "go" works as an answer:

> Quick check before I plan it (reply "go" to take the defaults):
> 1. **Length and format:** about how long, Reels 9:16 or a 16:9 film? *(30 s, 9:16)*
> 2. **Hero:** an existing one (send sheets or photos), or should I build an original? If new, which famous archetype and what desi trade? *(new: a bat-themed milkman)*
> 3. **The wow:** a toy or vehicle, a power, an ally or a villain? *(a toy: his buffalo-cart "car")*
> 4. **Music:** which nostalgic song will you add in-app? I'll time the reveal to its drop. *(SFX-only)*
> 5. **Generate or prompts only?** Generating needs about N clips (≈ M credits as 480p drafts). *(prompts only)*

Leave out any question the request already answers. Ask the conditional ones (brand, series continuity, faces, sponsor rules) only when the request triggers them.

## 5. Worked examples
- **"make me a 5 second clip of a desi superhero"** → Ask: the hero (or surprise), the wow, the song. Default: a new original hero, a toy reveal, SFX-only, 9:16. Output: one generation prompt, a 2-line edit note (where the hit lands), a caption.
- **"continue my series with a fight scene"** → Ask: who vs who, where the last episode ended, comic or epic, sheets available? Output: a 3–5 gen fight that opens on the last episode's final image.
- **"Apne chai brand ke liye superhero reel bana do"** → Ask: product, must-show elements, logo photos, length. The tea kettle becomes the hero's tool inside his trade; one product ECU; disclosure line in the caption.
