# MineWithNoCraft (Minecraft Datapack)

MineWithNoCraft is a custom survival datapack for **Minecraft Java 1.21.5** centered around:
- selling blocks/items at a beacon,
- buying tools and weapons with money,
- surviving without normal crafting progression.

## Core Rules

- Crafting is effectively disabled (`doLimitedCrafting=true` + recipes stripped every tick).
- World is forced to daytime (`doDaylightCycle=false` + time set to day every tick).
- Beacon location is randomized near spawn:
  - within 10 blocks,
  - always more than 5 blocks from spawn.

## First-Time Tutorial (new worlds)

Fresh worlds start with no beacon, no shop book, and no money UI.

Flow:
1. After 2 seconds: welcome message.
2. 5 seconds later: beacon appears + compass is granted.
3. Sell your first log at the beacon.
4. Message prompts you to sell 4 more logs (to reach $10 total).
5. Shop book unlocks after those 4 logs.
6. Buy Wooden Pickaxe from the shop.
7. Final message plays + torch is granted.

After tutorial completion:
- money actionbar stays active,
- shop system stays unlocked,
- torch enforcement begins.

Existing worlds automatically migrate to tutorial-complete state.

## Selling System

- Drop items into the beacon sell zone (2-block horizontal radius around beam column).
- Stack selling is supported.
- Raw ores are auto-smelted before pricing:
  - `raw_iron -> iron_ingot`
  - `raw_gold -> gold_ingot`
  - `raw_copper -> copper_ingot`

### Sell Prices

| Item | Price |
|---|---:|
| `dirt` | $1 |
| Logs + planks (`#minewithnocraft:sellable_wood`) | $2 |
| `cobblestone` | $2 |
| `cobbled_deepslate` | $5 |
| `gravel` | $4 |
| Other stone types (`#minewithnocraft:sellable_stone_four`) | $4 |
| `coal` | $8 |
| `redstone` | $14 |
| `lapis_lazuli` | $18 |
| `copper_ingot` | $20 |
| `iron_ingot` | $30 |
| `gold_ingot` | $45 |
| `diamond` | $220 |
| `emerald` | $300 |

## Shop System

- Shop book appears only when near beacon (within 5 blocks on X/Z).
- Book is non-transferable and self-cleaning (dropped/duplicate copies removed).
- Purchases are done through clickable book buttons (`/trigger mwnc_shop`).
- You cannot buy a tool/sword you already own (same tier).
- Shop-bound tools cannot be permanently dropped.

### Tool/Sword Prices

| Tier | Pickaxe | Sword |
|---|---:|---:|
| Wooden | $10 | $10 |
| Stone | $100 | $100 |
| Iron | $2,500 | $2,500 |
| Gold | $10,000 | $10,000 |
| Diamond | $100,000 | $100,000 |
| Netherite | $1,000,000 | $1,000,000 |

## Player Utility Rules

- Exactly one bound compass per player (starts when beacon stage begins).
- Exactly one bound torch per player (starts after tutorial completion).
- Slow permanent hunger support via saturation pulse (every 5 seconds).

## Installation

1. Copy this repo folder into your world's `datapacks/` directory (or copy only `pack.mcmeta` + `data/` as a datapack folder).
2. Run `/reload` in-game.

Pack metadata:
- `pack_format: 71` (Minecraft Java 1.21.5)
