x10latro = {}

x10latro.config = SMODS.current_mod.config

assert(SMODS.load_file("src/backs.lua"))()
assert(SMODS.load_file("src/blinds.lua"))()
-- assert(SMODS.load_file("src/boosters.lua"))() -- better version out
-- assert(SMODS.load_file("src/editions.lua"))() -- better version out
-- assert(SMODS.load_file("src/enhancement.lua"))() -- better version out
assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/planets.lua"))()
-- assert(SMODS.load_file("src/pokerhands.lua"))() -- better version out
assert(SMODS.load_file("src/seals.lua"))()
-- assert(SMODS.load_file("src/spectrals.lua"))()
-- assert(SMODS.load_file("src/stakes.lua"))() -- stakes should NOT be touched
-- assert(SMODS.load_file("src/stickers.lua"))()
assert(SMODS.load_file("src/tags.lua"))()
-- assert(SMODS.load_file("src/tarots.lua"))() -- better version out
assert(SMODS.load_file("src/vouchers.lua"))() -- Hone and Tycoons have x10 spawn rate, might have to remove it.

assert(SMODS.load_file("functions/make_everything_10.lua"))() -- Function that makes mods x10 [WIP]

SMODS.current_mod.config_tab = function()
    return {
        n = G.UIT.ROOT,
        config = { r = 0.1, minw = 8, align = "tm", padding = 0.2, colour = G.C.BLACK },
        nodes = {
            {
                n = G.UIT.R,
                config = { padding = 0.2 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "cm" },
                        nodes = {
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_joker_shop_slot'),
                                        ref_table = x10latro.config,
                                        ref_value = 'joker_shop_slot'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_joker_booster_slot'),
                                        ref_table = x10latro.config,
                                        ref_value = 'joker_booster_slot'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_joker_playing_slot'),
                                        ref_table = x10latro.config,
                                        ref_value = 'joker_playing_slot'
                                    })
                                }
                            },
                        }
                    },
                    {
                        n = G.UIT.C,
                        config = { align = "cm" },
                        nodes = {
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_tarot_emperor'),
                                        ref_table = x10latro.config,
                                        ref_value = 'tarot_emperor'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_tarot_priestess'),
                                        ref_table = x10latro.config,
                                        ref_value = 'tarot_priestess'
                                    })
                                }
                            },
                        }
                    },
                    
                    {
                        n = G.UIT.C,
                        config = { align = "cm" },
                        nodes = {
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_game_handsize'),
                                        ref_table = x10latro.config,
                                        ref_value = 'game_handsize'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_game_perishable'),
                                        ref_table = x10latro.config,
                                        ref_value = 'game_perishable'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R, config = { align = "cm", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('x10_game_rental'),
                                        ref_table = x10latro.config,
                                        ref_value = 'game_rental'
                                    })
                                }
                            },
                        }
                    },
                }
            },
        }
    }
end