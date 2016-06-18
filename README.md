# Vignette

Dark gradient hud overlay for a immersive experience. By default it will add
a single overlay to a players screen at the beginning of the game.

Vignette also has an api for other mods to leverage.

## Api

Exposes an api on the vignette namespace.

### vignette.render(<vignette>)

The vignette properties can be updated using the render function. This function
can be performed at any moment in time.

```lua
vignette.render({

  -- player is a required field
  player = player,

  -- a number between 0 or 5, you can do more but that might result in
  -- a frame-rate drop
  darkness = 4

});
```
