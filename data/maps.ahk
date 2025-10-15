global MAPS := [
    ; Page 1  - Beginner 
    [
        ["Monkey Meadow", MONKEY_MEADOW_DATA],
        ["In the Loop", IN_THE_LOOP_DATA],
        ["Three Mines 'Round", THREE_MINES_ROUND_DATA],
        ["Spa Pits", SPA_PITS_DATA],
        ["Tinkerton", TINKERTON_DATA],
        ["Tree Stump", TREE_STUMP_DATA],
    ],
    
    ; Page 2  - Beginner 
    [
        ["Town Center", TOWN_CENTER_DATA],
        ["Middle of the road", MIDDLE_OF_THE_ROAD_DATA],
        ["One Two Tree", ONE_TWO_TREE_DATA],
        ["Scrapyard", SCRAPYARD_DATA],
        ["The Cabin", THE_CABIN_DATA],
        ["Resort", RESORT_DATA],
    ],
    
    ; Page 3  - Beginner 
    [
        ["Skates", SKATES_DATA],
        ["Lotus Island", LOTUS_ISLAND_DATA],
        ["Candy Falls", CANDY_FALLS_DATA],
        ["Winter Park", WINTER_PARK_DATA],
        ["Carved", CARVED_DATA],
        ["Park Path", PARK_PATH_DATA],
    ],
    
    ; Page 4  - Beginner 
    [
        ["Alpine Run", ALPINE_RUN_DATA],
        ["Frozen Over", FROZEN_OVER_DATA],
        ["Cubism", CUBISM_DATA],
        ["Four Circles", FOUR_CIRCLES_DATA],
        ["Hedge", HEDGE_DATA],
        ["End of the Road", END_OF_THE_ROAD_DATA],
    ],
    
    ; Page 5  - Beginner 
    [
        ["Logs", LOGS_DATA],
    ],

    ; Page 6  - Intermediate 
    [
        ["Lost Crevasse", LOST_CREVASSE_DATA],
        ["Luminous Cove", LUMINOUS_COVE_DATA],
        ["Sulfur Springs", SULFUR_SPRINGS_DATA],
        ["Water Park", WATER_PARK_DATA],
        ["Polyphemus", POLYPHEMUS_DATA],
        ["Covered Garden", COVERED_GARDEN_DATA],
    ],

    ; Page 7  - Intermediate
    [
        ["Quarry", QUARRY_DATA],
        ["Quiet Street", QUIET_STREET_DATA],
        ["Bloonarius Prime", BLOONARIUS_PRIME_DATA],
        ["Balance", BALANCE_DATA],
        ["Encrypted", ENCRYPTED_DATA],
        ["Bazaar", BAZAAR_DATA],
    ],

    ; Page 8  - Intermediate
    [
        ["Adora's Temple", ADORAS_TEMPLE_DATA],
        ["Spring Spring", SPRING_SRPING_DATA],
        ["KartsNDarts", KARTSNDARTS_DATA],
        ["Moon Landing", MOON_LANDING_DATA],
        ["Haunted", HAUNTED_DATA],
        ["Downstream", DOWNSTREAM_DATA],
    ],

    ; Page 9  - Intermediate
    [
        ["Firing Range", FIRING_RANGE_DATA],
        ["Cracked", CRACKED_DATA],
        ["Streambed", STREAMBED_DATA],
        ["Chutes", CHUTES_DATA],
        ["Rake", RAKE_DATA],
        ["Spice Islands", SPICE_ISLANDS_DATA],
    ],
    
    ; Page 10 - Advanced
    [
        ["Sunset Gulch", SUNSET_GULCH_DATA],
        ["Enchanted Glade", ENCHANTED_GLADE_DATA],
        ["Last Resort", LAST_RESORT_DATA],
        ["Ancient Portal", ANCIENT_PORTAL_DATA],
        ["Castle Revenge", CASTLE_REVENGE_DATA],
        ["Dark Path", DARK_PATH_DATA],
    ],

    ; Page 11 - Advanced
    [
        ["Erosion", EROSION_DATA],
        ["Midnight Mansion", MIDNIGHT_MANSION_DATA],
        ["Sunken Columns", SUNKEN_COLUMNS_DATA],
        ["X Factor", X_FACTOR_DATA],
        ["Mesa", MESA_DATA],
        ["Geared", GEARED_DATA],
    ],
    
    ; Page 12 - Advanced
    [
        ["Spillway", SPILLWAY_DATA],
        ["Cargo", CARGO_DATA],
        ["Pat's Pond", PATS_POND_DATA],
        ["Peninsula", PENINSULA_DATA],
        ["High Finance", HIGH_FINANCE_DATA],
        ["Another Brick", ANOTHER_BRICK_DATA],
    ],

    ; Page 13 - Advanced
    [
        ["Off the Coast", OFF_THE_COAST_DATA],
        ["Cornfield", CORNFIELD_DATA],
        ["Underground", UNDERGROUND_DATA],
    ],

    ; Page 14 - Expert
    [
        ["Glacial Trail", GLACIAL_TRAIL_DATA],
        ["Dark Dungeons", DARK_DUNGEONS_DATA],
        ["Sanctuary", SANCTUARY_DATA],
        ["Ravine", RAVINE_DATA],
        ["Flooded Valley", FLOODED_VALLEY_DATA],
        ["Infernal", INFERNAL_DATA],
    ],

    ; Page 15 - Expert
    [
        ["Bloody Puddles", BLOODY_PUDDLES_DATA],
        ["Workshop", WORKSHOP_DATA],
        ["Quad", QUAD_DATA],
        ["Dark Castle", DARK_CASTLE_DATA],
        ["Muddy Puddles", MUDDY_PUDDLES_DATA],
        ["#Ouch", OUCH_DATA],
    ]
]

global ALL_MAPS := []
global MAP_LOCATIONS := Map()
for pageNumber, page in MAPS {
    for mapNumber, mapData in page {
        name := StrReplace(StrLower(mapData[1]), " ", "_")
        name := StrReplace(StrReplace(name, "'"), "#")
        MAP_LOCATIONS[name] := [pageNumber, mapNumber]
        ALL_MAPS.Push([pageNumber, mapNumber])
    }
}
