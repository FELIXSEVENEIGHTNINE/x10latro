SMODS.Enhancement:take_ownership('bonus', {config = {bonus = 300}})
SMODS.Enhancement:take_ownership('mult', {config = {mult = 40}})
SMODS.Enhancement:take_ownership('wild', {})
SMODS.Enhancement:take_ownership('glass', {config = {Xmult = 20, extra = 40}})
SMODS.Enhancement:take_ownership('steel', {config = {h_x_mult = 15}})
SMODS.Enhancement:take_ownership('stone', {config = {bonus = 500}})
SMODS.Enhancement:take_ownership('gold', {config = {h_dollars = 30}})
SMODS.Enhancement:take_ownership('lucky', {config = {mult = 200, p_dollars = 20}})

-- SMODS.Enhancement:take_ownership(
--     'lucky', 
--     {
--         config = {
--             mult = 200, 
--             p_dollars = 20,
--             mult_odds = 50,
--             dollars_odds = 150,
--         },

--         -- these code were staightup copied for vanillaremade, will implement my own soon
--         loc_vars = function(self, info_queue, card)
--             local mult_numerator, mult_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.mult_odds,
--                 'vremade_lucky_mult')
--             local dollars_numerator, dollars_denominator = SMODS.get_probability_vars(card, 1,
--                 card.ability.extra.dollars_odds, 'vremade_lucky_money')
--             return { vars = { mult_numerator, dollars_numerator, card.ability.extra.mult, mult_denominator, card.ability.extra.dollars, dollars_denominator } }
--         end,
--         calculate = function(self, card, context)
--             if context.main_scoring and context.cardarea == G.play then
--                 local ret = {}
--                 if SMODS.pseudorandom_probability(card, 'vremade_lucky_mult', 1, card.ability.extra.mult_odds) then
--                     card.lucky_trigger = true
--                     ret.mult = card.ability.extra.mult
--                 end
--                 if SMODS.pseudorandom_probability(card, 'vremade_lucky_money', 1, card.ability.extra.dollars_odds) then
--                     card.lucky_trigger = true
--                     ret.dollars = card.ability.extra.dollars
--                 end
--                 -- 'lucky_trigger' is for Lucky Cat. Steamodded cleans this particular variable up for you, but in the general case you should do this:
--                 --[[
--                 G.E_MANAGER:add_event(Event {
--                 func = function()
--                     card.lucky_trigger = nil
--                     return true
--                 end
--                 )
--                 --]]
--                 return ret
--             end
--         end,

--     }
-- )