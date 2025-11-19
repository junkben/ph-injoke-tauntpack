-- https://github.com/Wolvin-NET/prophuntx/blob/master/templates/lua/autorun/sh_additional_taunts.lua

local TEAM_HUNTERS = 1
local DIR_HUNTERS  = "bumblezone_hunters/"

local TEAM_PROPS   = 2
local DIR_PROPS    = "bumblezone_props/"

local FILE_EXT     = ".ogg"

local taunts       = {
    [TEAM_HUNTERS] = {},
    [TEAM_PROPS] = {
        ["Augh - Pufferfish"] = "augh",
        ["Better Call Saul"] = "better-call-saul",
        ["Elmo crashout"] = "elmo-crashout",
        ["Fart with Reverb"] = "fart-with-reverb",
        ["Jesus is the Bread"] = "jesus-is-the-bread",
        ["Lil Kiddo Fucking Dies"] = "lil-kiddo-fucking-dies",
        ["obamna 🥺👿 ... SODA!! 😅😁"] = "obamna-soda",
        ["Shoebody Bop"] = "shoebody-bop",
        ["Spiderman 3 Fart Jump With Scooby Doo Laugh"] = "spiderman-3-fart-jump-with-scooby-doo-laugh",
        ["This guy moaned at least this load..."] = "this-guy-moaned-at-least-this-loud",
        ["Turn that poop into wine"] = "turn-that-poop-into-wine",
        ["Watch your profanity"] = "watch-your-profanity"
    }
}

for key, value in pairs(taunts[TEAM_HUNTERS]) do
    taunts[TEAM_HUNTERS][key] = DIR_HUNTERS .. value .. FILE_EXT
end
for key, value in pairs(taunts[TEAM_PROPS]) do
    taunts[TEAM_PROPS][key] = DIR_PROPS .. value .. FILE_EXT
end

list.Set("PHX.CustomTaunts", "The Bumblezone", taunts)
