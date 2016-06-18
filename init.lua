vignette = {
  huds = {}
}

vignette.render = function (defs)
  local max

  if (defs.darkness > #vignette.huds) then
    max = defs.darkness
  else
    max = #vignette.huds
  end

  for i=1, max do

    -- adding huds
    if (i >= #vignette.huds) then
      local hud_id=defs.player:hud_add({
        hud_elem_type = "image",
        position = {x = 0.5, y = 0.5},
        scale = {
          x = -100,
          y = -100
        },
        text = "vignette.png"
      })
      vignette.huds[i] = hud_id;
    end

    -- removing huds
    if (i > defs.darkness) then
      defs.player:hud_remove(vignette.huds[i])
    end
  end
end

minetest.register_on_joinplayer(function (player)
  vignette.render({
    darkness = 1,
    player = player
  })
end)
