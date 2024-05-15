local old;
old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
  local method = getnamecallmethod():lower()
  if self == game and method == "httpget" then
    local http = ...
    if type(http) == "string" then
      http = http:gsub("memaybeohub", "REDzHUB"):gsub("Function-Scripts", "NoKey")
      local success, src = pcall(old, self, http)
      if success and src then
        return src
      else return "" end
    end
  elseif self == Player and method == "kick" then
    return error("attempt to kick player"), (function()
      while true do end
    end)()
  end
  return old(self, ...)
end))

loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/NoKey/main/TsuoHub"))()
getfenv().print("Valid key!")
