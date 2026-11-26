# Desi Superhero Director: a Claude skill

Turn a one-line idea into a **cinematic, wordless desi superhero film**: an Indian village or small-town hero shot like a Hollywood blockbuster, with deadpan desi humour. It works at any length, from a 5-second clip to a 3-minute episode, with AI video models like **Seedance 2.5** on Higgsfield or Runway.

## What it does
1. **Understands what you want.** A "5 sec clip" means one wow beat; an "episode" means a full story. It asks at most 5 quick questions, each with a default.
2. **Builds your cast:** an original hero with a homemade, logo-free costume, plus villains, sidekicks and props, with ready character-sheet prompts.
3. **Director + Critic agents** plan every scene and argue until they agree. No video is generated before that.
4. **Writes the Seedance prompts:** timed shots, camera moves, speed ramps, an identity lock and the right reference syntax for each platform.
5. **Saves credits:** 480p drafts first, then only the good scenes are finalized at 1080p.
6. **Music-first edit plan:** the big reveal lands on your song's drop, plus a cover and a caption.

## Install
- **Claude Code:** copy this folder to `~/.claude/skills/desi-superhero-director/`.
- **Claude.ai:** zip this folder, then go to Settings → Capabilities → Skills → Upload skill.

Then just ask: *"Mujhe ek 5 sec ka desi superhero clip chahiye"* or *"Make episode 2 of my desi hero, a fight at the sabzi mandi."*

## Files
| Path | What |
|---|---|
| `SKILL.md` | The workflow Claude follows |
| `references/` | The intent router, formulas by length, story and series, shot grammar, music and edit, characters and sheets, Director/Critic, Seedance and generation, look and packaging |
| `scripts/` | `frame_sheet.sh` (QA contact sheet), `join_clips.sh` (join clips at −14 LUFS) |
| `evals/` | Test prompts used to check the skill |

Made by **@neuraltech.ai**. Builds original heroes only; no official superhero names or logos.
