# Look and packaging

Grades, aspect and letterbox, covers, title cards, the ident, captions, and the fast meme spin-off.

**Contents**
1. Grades by setting
2. Hero colour and how it shows in the grade
3. Aspect ratio and letterbox
4. Covers
5. Title cards and end cards
6. The ident (≤ 10% of runtime)
7. Captions
8. The meme spin-off of a breakout element
9. Packaging checklist

---

## 1. Grades by setting

**House default:** golden-hour haze. Play it straight: blockbuster light on ordinary village things is the joke.

| Look | Use for | Prompt phrasing |
|---|---|---|
| **Golden-hour haze** (default) | Origins, chases, toy reveals | "low sun backlighting drifting dust, warm amber highlights, desaturated brown shadows, lifted blacks, anamorphic flares, film grain" |
| **Blue night with practicals** | Villain intros, lit-circle fights | "cobalt night sky, bare bulbs, one hard white streetlight pool, neon bokeh" |
| **Warm interior** | Homes, shops, the suit-up | "ochre mud walls, hard sun shafts through doorways and window bars" |
| **Wedding / festival night** | Baraat, mela | "tungsten fairy-light bokeh, marigold and magenta, warm gold grade" |
| **Crisp bright morning** | Ghats, markets, comedy | "hard sun, deep blue sky, saturated colour" |
| **Monsoon** | Climax fights | "slate-grey daylight, steady heavy rain, lightning flashes, cold grey-green grade" |
| **Ember night** | Kilns, forges (fire stays in the background) | "orange underlight from fires inside brick openings behind, embers high above, deep shadows" |
| **Sepia flashback** | "N Years Ago" | "cream-sepia, lifted blacks, soft vignette, film scratches" |
| **Ident monochrome** | The ident only | The whole frame tinted the **hero colour**, black silhouettes, vignette, a slight step-print flicker (it hides AI jitter) |

**Spend prompt words on objects, not adjectives.** One grade line is enough; the desi texture comes from 10+ specific objects per minute.

---

## 2. Hero colour

- **One colour per hero**, used in the costume accent, the title, the cover numeral, the ident and the end cards.
- **Default: not red** (red is a well-known series' signature). Offer four and let the user choose.
- A **spin-off hero gets a new colour**; a **versus card splits both colours**.

| Hero colour | Grade that flatters it | World accent to echo it |
|---|---|---|
| Turmeric yellow | Golden-hour haze, cooler shadows so yellow pops | Haldi, marigolds, a yellow school van |
| Indigo | Blue night with warm practicals | Indigo-washed walls, blue tarps |
| Emerald | Monsoon or crisp morning | Paddy fields, green glass bangles |
| Saffron | Dusk, festival night | Flags, a saffron gamchha |
| Rust | Ember night, red earth | Brick kilns, rusted tin roofs |
| Teal | Crisp morning, ghats | Painted boats, teal doors |
| Magenta | Wedding night | Shamianas, sweets boxes |

Keep the hero colour **out of the villain's palette**, and the toy's ornament in the hero colour where you can.

---

## 3. Aspect ratio and letterbox

| Format | Default aspect | Notes |
|---|---|---|
| 5–8 s single wow, meme spin-off | **9:16** | The wow fills the empty top two-thirds |
| 15–60 s | Ask: 9:16 or 16:9 | 9:16 fills the feed; 16:9 feels like a film |
| 90 s+ episodes | **16:9** | Proven for episodes. Optional: 16:9 inside a 9:16 frame with one line of white text above |

**Letterbox (2.0–2.2:1 bars) signals "an event".**
- **Off by default.**
- **On** for 150 s+ event episodes, or on the ident only.
- **Never hold bars across most of a long feed reel:** in the reference series an episode with 85 s of bars flopped, and the re-cut that removed them did 12× better (among other changes).
- Drop the bars for product shots that need the space.

---

## 4. Covers

**The new thing beats the portrait.** The best-performing cover in the reference set showed **no hero portrait**: just the twist character small in a doorway with the chaos around her, the song name and the episode number. A dark hero portrait with the number but none of the episode's new characters flopped.

**Cover formula (9:16, keep text out of the bottom fifth and the right edge):**
1. **The new thing in frame:** the toy, the twist character or the conflict. Big.
2. **A giant episode numeral** in the hero colour, top third.
3. Optional: the hero as a dark or misty silhouette, front-on, deadpan; the song name in small script.
4. **Never** a generic poster without the new element.

**Make the user invent their own numeral style.** Don't copy any existing series' treatment (for example a dripping red brush stroke). Offer a menu, then ask them to pick or invent one and **keep it for the whole series**:

| Numeral style | Feels like |
|---|---|
| Spray-painted stencil on a tin shutter | Street, gritty |
| Chalk on a slate or a blackboard | School, humble |
| Hand-painted shop-sign lettering | Classic small-town |
| Rangoli powder on the ground (shot top-down) | Festive |
| A truck-art numeral with borders and flowers | Highway, loud |
| An embroidered patch | Homemade costume |
| Neon tube | Night, mela |
| Laid out in objects (chappals, marigolds, bangles) | Comic, desi |

- **Spin-offs** number from **0** in their own colour.
- **Memes have no numeral**; the cover is the wow frame.
- **Cover prompt (image model):** "Vertical 9:16 cinematic poster frame, [the new thing] large in the centre, [hero] [silhouette / small / front-on deadpan] [where], [grade], empty dark space in the top third for a title, no text, no logos." Add the numeral and any text in an editor, not in the model.

---

## 5. Title cards and end cards

- **Episode title:** `[SERIES NAME] [N]` in the hero colour, in a serif or the series' own font, **over the first shot**, ideally **behind the subject in depth** (he walks in front of it). ≤ 2 s. Optional second line: the song name.
- **Frame 1 is never black** and never fades up from black. The title sits on a full image.
- **Spin-off teaser:** hold the title back to the **last 5 s**.
- **End cards:** "To Be Continued" in the hero colour · a parody "will return in [pun on a famous title]" · a versus card in both heroes' colours + "Coming Soon".
- **On-screen language:** the user's choice (English, Hindi, Hinglish or mixed scripts). Keep words few; the story is wordless.
- Put all text on **in the edit**, never in the video prompt (models garble text).

---

## 6. The ident (≤ 10% of runtime)

A reusable branded sequence, like a studio logo. **Optional.**
- **Cap: 10% of runtime** (≤ 3 s at 30 s, ≤ 6 s at 60 s, ≤ 10–12 s at 2 min). Under 30 s, skip it.
- **Rescue episodes don't need one:** the top episode in the reference set ended sincere (an extreme wide and a fade) with no ident and no end card.
- Generate it **once** and reuse it **verbatim**; it saves cost and builds brand memory.
- **Cut it in on a chorus downbeat.**
- **Your own concept, never another series' ident.** Ideas: the hero's silhouette assembled from his signature household objects in the hero colour; a painted-wall stencil of him being sprayed on; his toy's ornament spinning into the numeral; a monochrome hero-colour montage of 5 iconic poses (eyes ECU, cape swirl, weapon catch, a stare, the emblem) in a style you choose.

---

## 7. Captions

**Three formulas** (offer one of each):

| Formula | Example (original) |
|---|---|
| **Parody of a famous film line or title** | "With great power comes a great electricity bill" · "Mission: Impossible, Ration Queue" |
| **The toy's coined name** (+ a second franchise word for spin-offs) | "Camelmobile!!" · "Scootercar Reloaded" |
| **The song name** when the audio is the draw | "[Hero] 4 ft. [song name]" |

- Keywords as **plain words**, not hashtag walls: the series name, the archetype in plain words ("desi superhero"), the song, later the sponsor.
- A sponsored post carries the platform's paid-partnership label.
- Name the toy the way fans name it once they do.

---

## 8. The meme spin-off of a breakout element

**When an element breaks out, spin it into a 5–10 s single-shot meme within about 2 days.**

**Evidence:** in the reference series, a 9 s one-shot meme of a breakout toy, posted about 51 hours after its episode, got **1.22M likes, 43% of the parent episode**, from a single generation (about 130K likes per second of video).

**How to spot a breakout:** comments coin a nickname for it, quote it, or ask for more of it.

**Recipe**
1. **Format A** (`formulas-by-length.md` §3), the "spin-off of a known element" variant.
2. **9:16**, one shot, **one event**: the element arrives huge behind (or beside) the calm, deadpan hero.
3. Dip, then the hit at about 40%; hold; end before it morphs.
4. **Caption:** the fans' nickname + a franchise word ("[Nickname] Returns", "[Nickname] Reloaded").
5. **No numeral** on the cover. Post it between episodes; it feeds the next one.

---

## 9. Packaging checklist

- [ ] Grade matches the setting; one grade pass across the cut
- [ ] Hero colour chosen (not red by default) and used in title, numeral, ident, end card
- [ ] Letterbox off, unless this is a 150 s+ event or the ident
- [ ] Frame 1 is a full image, no fade from black
- [ ] Cover shows **the new thing** + the numeral in the user's own style
- [ ] Ident ≤ 10% of runtime, own concept, cut on a downbeat (or none)
- [ ] Three caption options given (parody, toy name, song name)
- [ ] A meme spin-off idea offered if anything is likely to break out
- [ ] Song handover line given: track, start point, drop timestamp
