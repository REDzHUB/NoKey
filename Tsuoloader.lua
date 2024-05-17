local setcb = setclipboard

local old
old = hookfunction(game.HttpGet, newcclosure(function(self, str, ...)
  if type(str) == "string" then
    local git = "https://raw.githubusercontent.com/"
    if str == git.."memaybeohub/Function-Scripts/main/FastAttackLoader.lua" then
      return old(self, git.."REDzHUB/NoKey/main/BypassTsuo/FastAttack.lua", ...)
    elseif str == git.."memaybeohub/Function-Scripts/main/Magnetism.lua" then
      return old(self, git.."REDzHUB/NoKey/main/BypassTsuo/Magnetism.lua", ...)
    end
  end
  return old(self, str, ...)
end))

loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/NoKey/main/TsuoHub"))()
getfenv().print("Valid key!")
