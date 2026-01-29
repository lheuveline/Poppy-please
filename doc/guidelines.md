# Game Jam Guidelines

> A collection of practical guidelines for game jams.
> The goal is to help you avoid the most common mistakes.

# Team

---

## Have Fun

If there is one thing to remember, it's this: have fun.
This is the most important rule.
If you have a bad design, an ugly drawing, or a rough mechanic: in 48 hours, you will throw it anyway.
If you finish nothing, it's okay.
If the result is messy, it's okay too.
Don't put too much pressure on yourself or the team.
Just enjoy the adventure.

## Set Your Goals

There are many ways to approach a game jam.
Before starting, define your goal and make sure every team member is on the same page.
For example:

- Learning a new tool
- Experimenting with a specific gameplay mechanic
- Competing to win
- Simply having fun and finishing something

What matters is that everyone understands the team mindset.
And in any case, remember: the goal is always to have fun.

## Resolve Conflicts with Timers

During brainstorming, ideas may conflict (e.g., incompatible features, disagreement in the team).
When disagreements arise, you can:

1. Set a short timer to discuss and decide
2. If no decision is reached when the timer ends, use randomness to choose (dice, coin flip, etc.)

This avoids endless debates.

## Communicate

Show your progress (you can have a Discord or other sharing tools).
If you change direction, get a new idea, or discover a problem, share it immediately.

# Brainstorming

---

## Start Alone

When the theme is revealed, start by working individually.
Take some time to write down every idea that comes to your mind.
Don't overthink or refine them.
The final game will not be exactly one of these ideas anyway.
This may take a few minutes or several hours if required.

## Dump All Your Ideas

Then regroup and share everything.
This is where the magic happens: ideas combine, evolve, and inspire new directions through collaboration.

## Use Physical Whiteboards

If your team is physically together, prefer physical whiteboards over software tools.
This is kind of a personal preference, but I find physical tools feel more organic during a game jam.
They make it easier to combine ideas and shape the final concept.

## List Required and Optional Features

Split features into:

- Must-have: required to ship the game (core gameplay, essential art, basic UI)
- Nice-to-have: optional improvements, sorted by priority

Each team member should have their own list.
This allows people to switch to "nice-to-have" tasks when they are blocked.
For instance, Bob is waiting for Alice's asset to finish a must-have feature, so he works on a nice-to-have task instead.

# Gameplay

---

## Focus on One Core Mechanic

Design around one main core mechanic, with at most one small secondary mechanic.
A single polished mechanic is better than several unfinished ones.
Think of the game as a prototype showcasing that mechanic.
All efforts should focus on this mechanic.

## Keep It Simple

Remove unnecessary complexity.

Examples:

- Avoid supporting multiple platforms or controllers
- Use a single scene if possible
- Avoid complex transitions
- Keep NPCs simple or even static
- Minimize the number of controls

Simplicity increases your chance of finishing and focusing on the mechanic you choose.

## Focus on One Technical Challenge

Each team member should focus on only one major technical challenge.
For example, if you have never:

- Built a dialogue system
- Implemented AI
- Created an interaction system

Pick only one of them.
One challenge is already enough for a jam.
If you finish early, move on to nice-to-have tasks.

If learning a new tool is your challenge, then avoid adding other challenges on top of it.

# Tools

---

## Choose Your Tools in Advance

Decide on your tools before the jam.
Everyone should already know how to use their tools (unless learning one is part of the challenge).
Make sure all tools integrate well together (engine, audio middleware, version control, etc.).
This reduces the risk of spending half the jam on configuration issues.

## Set Up Everything Beforehand

Install and test all tools before the jam starts.
The jam is not the time to debug installations.
Make sure everything is installed and that you can:

- Build
- Export
- Compile
- Use version control (e.g., GitHub repository)

## Choose a Folder Structure

Define a clear project structure in advance:

- Folder hierarchy
- Naming conventions
- Prefix rules

You can create the basic structure before the jam begins.

## Decide on Conventions

If you use conventions, make sure everyone agrees on them.
Consistency saves time (easy search) and avoids confusion.

Example:

- Prefix assets by category (e.g., `TEX_texture_foo`, `EVT_event_foo`)
- Document the rules clearly

# Workflow

---

## All Scales at 1

Inside the engine editor, objects should stay at scale `(1, 1, 1)`.
If an asset is wrong, it should be re-exported at the correct scale instead of being scaled in the editor.
This prevents unexpected behavior, especially with rotations and physics.

## Create a Reference Cube

Early in the project, create a reference cube exported from the engine at scale `(1, 1, 1)`.
Artists can import this cube into their 3D software to ensure correct scaling relative to the engine.

## Prototype Early

Create a playable prototype as early as possible.
For a 48-hour jam, a simple prototype after ~20 hours is a good target.
This allows designers to test and iterate on the core mechanic early.
Visual polish can come later.

## Build Often

Don't wait until the last hours to create a real executable build.
Final builds often reveal issues that don't appear in the editor:

- Missing dependencies
- Configuration problems
- Crashes only in the final build

Build early and build often (you can do it every two hours, for instance).

## Sleep and Take Breaks

Most game jams run from Friday to Sunday (in 48 hours).

My suggestion is:

- Focus on the core gameplay and first prototype on Friday
- Sleep early on Friday
- Push harder on Saturday if needed
- Take regular breaks throughout the jam

## Only Polish on the Last Day

- Reserve the last day (usually Sunday) for polish only
- Do not add any new features on the last day
- Do not wait until Sunday to add audio

## The Game Jam Style

Don't sleep, don't eat, it's for the weak!
Drink only Monsters, and eat pizza.
Recruit an army of goblins: they will do the code for you!
If the project doesn't compile, crush your computer, buy a kiwi, and take 4 frogs.
Mix everything in a big cooking pot.
Start 6 minutes of incantations and the code may finally compile.
If not, remember that a beer is waiting for you at the end of the jam.
(Well, obviously, don't follow this advice.)
