#!/usr/bin/env lua

local media = {}
local cmd = "playerctl "

function media.play()
   os.execute(cmd .. "play-pause")
end

function media.stop()
   os.execute(cmd .. "stop")
end

function media.next()
   os.execute(cmd .. "next")
end

function media.prev()
   os.execute(cmd .. "previous")
end

return media
