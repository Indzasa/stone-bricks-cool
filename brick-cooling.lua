if not feature_flags.spoiling then return end
if not settings.startup["py-enable-decay"].value then
    return
end

local ticks_in_minute = 60 * 60  -- 3600 ticks in minute

local function add_decay (from, to, minutes)
	if from then
		from.spoil_ticks = minutes * ticks_in_minute
		from.spoil_result = to
	end 
end

local warm_spoil_time_minutes = settings.startup["sbc-warm-minutes"].value
local warmer_spoil_time_minutes = settings.startup["sbc-warmer-minutes"].value
local hot_spoil_time_minutes = settings.startup["sbc-hot-minutes"].value

local warm = data.raw.item["warm-stone-brick"]
add_decay (warm, "stone-brick", warm_spoil_time_minutes)

local warmer = data.raw.item["warmer-stone-brick"]
add_decay (warmer, "warm-stone-brick", warmer_spoil_time_minutes)

local hot = data.raw.item["hot-stone-brick"]
add_decay (hot, "warmer-stone-brick", hot_spoil_time_minutes)