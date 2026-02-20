return {
    descriptions = {
        Joker = {
            j_mime = {
                text = {
                    "Retrigger all",
                    "card {C:attention}held in",
                    "{C:attention}hand{} abilities",
                    "{C:attention}#1#{} times"
                }
            },

            j_raised_fist = {
                text = {
                    "Adds {C:attention}vigintuple{} (20) the rank",
                    "of {C:attention}lowest{} ranked card",
                    "held in hand to Mult",
                },
            },

            j_hack = {
                text = {
                    "Retrigger",
                    "each played",
                    "{C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5{}",
                    "{C:attention}#1#{} times"
                },
            },
        },

        Back = {
            b_magic = {
                text = {
                    "Start run with the",
                    "{C:tarot,T:v_crystal_ball}#1#{} voucher",
                    "and {C:attention}20{} copies",
                    "of {C:tarot,T:c_fool}#2#",
                },
            },
        },

        Voucher = {
            v_overstock_norm = {text = {"{C:attention}+#1#{} card slot", "available in shop",}},
            v_overstock_plus = {text = {"{C:attention}+#1#{} card slot", "available in shop",}},
            v_hieroglyph = {text = {"{C:attention}-#1#{} Ante,", "{C:blue}-#2#{} hand", "each round",}},
            v_petroglyph = {text = {"{C:attention}-#1#{} Ante,", "{C:blue}-#2#{} discard", "each round",}},
            v_antimatter = {text = {"{C:dark_edition}+#1#{} Joker Slot",}},
        }
    },
    misc = {
        dictionary = {
            x10_joker_shop_slot = "Enable x10 shop slots",
            x10_joker_booster_slot = "Enable x10 booster slots",
            x10_joker_playing_slot = "Enable x10 Joker slots",

            x10_game_handsize = "Enable x10 hand size",
            x10_game_perishable = "Enable x10 perishable rounds",
            x10_game_rental = "Enable x10 rental rate",

            x10_tarot_priestess = "Enable x10 The High Priestess",
            x10_tarot_emperor = "Enable x10 The Emperor",
            
        }
    }
}