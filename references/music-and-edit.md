# Music and edit

The song carries the series. This file covers choosing it, timing the edit to its real drop, changing tracks inside a story, the SFX-only recipe, the assembly, and staying legal.

**Contents**
1. Song as brand
2. Choosing the track
3. Timing the edit to the drop, step by step
4. Lyrics, in-story song changes and long films
5. Generation audio (what to tell the video model)
6. SFX-only recipe (no song)
7. Assembly and mix
8. Legality

---

## 1. Song as brand

**Evidence:** in a top-performing desi superhero series, the same core footage re-cut around its signature nostalgic song did **12.6× the likes** (136K → 1.71M), reposted about 2 hours later. The re-cut also changed the shot order, length, cover, letterbox and tail, so treat it as strong but not a clean test. Comments on the flop asked for the song back by name.

**Why it works:** a 90s Indian love or wedding song under a deadpan superhero is **the desi half of the joke**. Its structure times the reveals, and its name works as a search and share hook.

**Rules**
1. **One recognisable nostalgic Indian track per hero**, a song the audience's parents sang along to. Each new hero gets his own track and colour.
2. **Never swap it for a "fitting" Western track.** New characters still arrive on its drop.
3. **Keep one master edit of the track** (the same start point and section order) and cut every episode to it, so the audience learns where the drop is.
4. **Map the song to the acts:** intro = calm setup · quiet build = suit-up / tension · **drop = reveal** · chorus = climax · tail = button or ident.
5. **Name the song in the caption** when the audio is the draw.

---

## 2. Choosing the track

Ask: "Which song will you add? I'll time the edit to it." Then check it has:

| Need | Why |
|---|---|
| A soft intro of 10–40 s | Room for the hook, stakes and build |
| **One unmistakable drop** (beat drop, dhol entry, first chorus hit) | The reveal lands here |
| A chorus with a strong downbeat | Climax and hard cuts |
| It's in the platform's in-app music library | You'll add it there, not bake it in (§8) |
| Long enough in the library for your runtime | Some libraries cap clip length on long reels; test before cutting a 2–3 min film |

No song in mind? Suggest a decade and a mood ("an 80s–90s Hindi film song with a slow intro and a dhol drop") and let the user pick. Never pick a copyrighted song for them to bake in.

---

## 3. Timing the edit to the drop

**Principle:** the song's drop sits wherever it sits. Move the song's start point and the edit, not the drop.

1. **Get a local reference copy** of the track, for timing only (it never goes in the export).
2. **Find the drop in the track (T_song).** Listen and note it, then confirm with a loudness scan in 0.1 s windows:
   ```bash
   ffmpeg -hide_banner -nostats -i track.mp3 -vn \
     -af "aresample=8000,asetnsamples=n=800:p=0,astats=metadata=1:reset=1,ametadata=print:key=lavfi.astats.Overall.RMS_level:file=rms.txt" \
     -f null -
   # list every jump of 6 dB or more above the previous second
   awk '/pts_time/{split($0,a,"pts_time:");t=a[2]} /RMS_level/{split($0,b,"=");n++;T[n]=t;V[n]=b[2]}
        END{for(i=11;i<=n;i++){s=0;for(j=i-10;j<i;j++)s+=V[j];m=s/10;if(V[i]-m>=6)printf "%.1f s  +%.1f dB\n",T[i],V[i]-m}}' rms.txt
   ```
   The drop is the first big, sustained jump (the level stays up after it). Confirm by ear; silence prints as `-inf`.
3. **Pick T_edit,** where the reveal should land in the film (`formulas-by-length.md`: A 40%, B 33–40%, C 40–50%, D 33–38%).
4. **Set the song's start point:** `start = T_song − T_edit`. If it comes out negative, the song's intro is too short: move the reveal later or lengthen the intro of the film.
5. **Note the other landmarks** in film time (chorus downbeats, the outro) and slot the second reveal and the climax onto them.
6. **Plan the reveal shot so its wow is at frame 0** of that shot (prompt: "frame 0: the toy already bursting through…"). Then the edit can cut it **exactly on the drop frame**.
7. **Cut the dip before the drop** (0.3–1 s). This is an **edit choice**, not part of the song: in the reference series, two episodes shared the identical master edit, and only the better one had a 0.75 s near-silence cut in just before the reveal.
   - **If you can edit the song** (a licensed or royalty-free track you're allowed to export): duck it to near-silence (about −35 to −50 dB) for 0.3–1 s, ending on the drop frame.
   - **If the song will be added in-app** (you can't cut into it): choose a start point where the song has its own break or build before the drop; make the dip in **picture and SFX** (kill the ambience and Foley 0.5 s before, hold a still frame or a slow push, then the hit SFX on the drop frame).
8. **Cut the biggest visual change on downbeats.** Beat length = 60 / BPM. Hard-cut the ident, the climax and the second reveal on a chorus downbeat.
9. **Export without the song** (§8), add it in-app, **set the start point** from step 4, and preview: the reveal should hit within ±2 frames. Nudge the start point, not the picture.
10. **Write the handover line:** "Add [song] in-app, start at mm:ss.s; the drop lands on the reveal at mm:ss."

---

## 4. Lyrics, in-story song changes, long films

**Lyric as commentary:** put a line's literal meaning on the least appropriate image: a "come, come" line as the villain beckons into a trap; a lullaby line as he's knocked out; a wedding line on a photobomb. Check the lyric timing in the reference copy and plan that shot onto it.

**In-story song change:** make the new track a plot event.

| Source | Example |
|---|---|
| A radio knob | An old man at the tea stall tunes his transistor at the turn |
| A wedding band or DJ | The baraat strikes up and the fight becomes a dance-off |
| A phone | The villain's ringtone starts at the worst moment |
| A loudspeaker | The e-rickshaw announcement speaker switches to a song |

**When to change:**
- At the story's turn (a loss, a new ally, the climax).
- **A sad classic for grief or a flashback.**
- **Past about 150 s, always change the music at least once** (2–3 sections: signature → second track → silence → signature for the ending). One song for 193 s drew "slow even at 2×".
- By episode 3 or so, vary the music inside the episode: an audience asked "change the song" when the same track ran under a slow third episode.

**Silence as comic delay:** cut the music completely under interruption gags (a cow, then goats, then a tractor crossing between the fighters).

---

## 5. Generation audio

Seedance can generate audio with the clip. Tell it what you want:

| Plan | Audio line in the prompt |
|---|---|
| A song goes on later | `Audio: <ambience>, <impacts>, <SFX>. No music, no singing, no dialogue.` |
| SFX-only film | `Audio: <ambience>, <Foley>, <impacts>, a dhol hit on <moment>. Grunts only, no dialogue.` |

- **Dialogue from the model is gibberish risk:** always "grunts only, no dialogue" or "no voices". If speech appears anyway, mute that track and use your own SFX.
- Keep a **backup SFX set** (whoosh, impact, splash, dhol hit, bell, crowd cheer, one crow caw) so any clip can be re-mixed.

---

## 6. SFX-only recipe (no song)

Build the dip-and-hit with sound design alone:

| Layer | What | Level guide |
|---|---|---|
| 1. Ambience bed | The place: lane chatter, crickets, rain, a distant train | Constant, −30 to −24 dB |
| 2. Foley | Footsteps, cloth flaps, chai poured, a bell | Synced to action |
| 3. Riser (optional) | A rising whoosh or a dhol roll, 1–2 s before the reveal | Builds into the dip |
| 4. **The dip** | Cut layers 1–3 to near-silence for **0.3–0.5 s** | One tiny sound may remain (a fly, a drip) |
| 5. **The hit** | On the reveal's first frame: bass boom + impact + whoosh, stacked | The loudest moment of the film |
| 6. Tail | Debris, an echo, the ambience fading back in | Under the hold |
| 7. Button | One small sound for the comic button (a "tok", a crow, a cycle bell) | Dry, close |

- **Dhol grammar** sells desi action without a song: a roll under the build, a single big hit on the reveal, a dhol-tasha groove under the fight, silence on the gag.
- For a 5–8 s wow: ambience 0–33% → riser → dip at 33–40% → **hit at 40%** → tail under the hold → button.

---

## 7. Assembly and mix

1. **Order** the clips to the beat sheet. **Hard cuts**; no cross-fades between action shots.
2. **Frame 1 is never black**, and never a fade from black. Start on the full image.
3. Cut beat clips on their **held button's last frame**; cut coverage on motion or on the beat.
4. **The song is never ducked under action** (only the cut dip). Light impact SFX sit under it, never over it.
5. **Grade pass across the whole cut** so clips from different resolutions or platforms match (one LUT, one grain).
6. **Upscale** 480p/720p keepers to 1080p (or finalize at 1080p) before posting.
7. **Loudness:** about **−14 LUFS** integrated, true peak ≤ −1 dBTP, for the SFX/ambience export.
8. **Check the cut:** reveal on the drop? median shot ≤ 2 s? tail ≤ 10%? no clip ends mid-morph? no flash cuts under about 0.4 s except deliberate KO bursts?

---

## 8. Legality

- **Never bake copyrighted music into the export.** The user owns the in-app music choice.
- **Workflow:**
  1. Edit against a **local reference copy** for timing only.
  2. **Export picture + SFX, no song.**
  3. On the platform, add the same track from its **in-app music library**.
  4. Set the start point to the timestamp you edited to (§3 step 4) and check the drop in preview.
- **Not in the library?** Pick another nostalgic track that is, or use licensed / royalty-free music with the same shape (soft intro, clear drop, chorus), which you may then bake in and cut a dip into.
- **Long films:** confirm the library lets the track run your full length; if not, split into parts.
- Viewers do notice: one comment on a reference episode simply said "copyright song".
