# MineWithNoCraft Datapack

Basic starter datapack scaffold for **Minecraft Java Edition 1.21.5**.

## Structure

```
pack.mcmeta
data/
  minecraft/
    tags/
      function/
        load.json
        tick.json
  minewithnocraft/
    function/
      load.mcfunction
      tick.mcfunction
```

## Development

1. Copy this folder into your world's `datapacks/` directory.
2. In-game, run `/reload`.
3. Trigger the load function manually with:

   ```mcfunction
   /function minewithnocraft:load
   ```

## Notes

- Uses `pack_format: 71` for Minecraft Java **1.21.5**.
- Uses 1.21+ singular datapack folders (`function`, `tags/function`).
- Disables player crafting by forcing `doLimitedCrafting=true` and removing unlocked recipes every tick.
- Rebuilds a beacon every tick at a random point chosen on load, 6-10 blocks from spawn, with a lime-glass beam column.

## Selling

- Money is tracked in `mwnc_money` and shown above the hotbar each tick.
- Throw item entities into the beacon column (1-block X/Z radius around the beacon).
- Supported prices:
  - `minecraft:dirt` = `$1` each
  - Any item in `#minewithnocraft:sellable_wood` (`#minecraft:logs` + `#minecraft:planks`) = `$2` each
- Stack sizes are fully supported (for example, 64 dirt = `$64`).
- Sell burst particles now scale with sale value (`$1 => 1` particle, `$5 => 5`, capped at 256; larger sales increase burst size).

## Shop Book UI

- Every player always has exactly one `Shop` written book.
- Extra copies are removed, missing copies are restored, and dropped copies are deleted.
- Book buttons are clickable and use `/trigger` so non-op players can buy.
- Current buttons:
  - `Buy Wooden Pickaxe` for `$25`
  - `Buy Wooden Sword` for `$30`
