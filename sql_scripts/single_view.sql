 SELECT
    uuid_generate_v4() AS id,
    matchup_map.uuid,
    matchup_map.id AS map_id,
    matchup_map.matchup_id,
    matchup_map.tournament_id,
    matchup_map.map_number,
    matchup_map.patch,
    matchup_map.blue_side AS team_id,
    'blue'::text AS side,
    matchup_map.length,
    to_seconds(matchup_map.length::text) AS length_sec,
    matchup_map.winner,
    matchup_map.winner_side,
    matchup_map.blue_ban_1 AS ban_1,
    matchup_map.blue_ban_2 AS ban_2,
    matchup_map.blue_ban_3 AS ban_3,
    matchup_map.blue_ban_4 AS ban_4,
    matchup_map.blue_ban_5 AS ban_5,
    matchup_map.blue_pick_1 AS pick_1,
    matchup_map.blue_pick_2 AS pick_2,
    matchup_map.blue_pick_3 AS pick_3,
    matchup_map.blue_pick_4 AS pick_4,
    matchup_map.blue_pick_5 AS pick_5,
    matchup_map.blue_baron_pick AS baron_pick,
    matchup_map.blue_jungle_pick AS jungle_pick,
    matchup_map.blue_mid_pick AS mid_pick,
    matchup_map.blue_dragon_pick AS dragon_pick,
    matchup_map.blue_sup_pick AS sup_pick,
    matchup_map.blue_baron_kills AS baron_kills,
    matchup_map.blue_jungle_kills AS jungle_kills,
    matchup_map.blue_mid_kills AS mid_kills,
    matchup_map.blue_dragon_kills AS dragon_kills,
    matchup_map.blue_sup_kills AS sup_kills,
    matchup_map.blue_baron_deaths AS baron_deaths,
    matchup_map.blue_jungle_deaths AS jungle_deaths,
    matchup_map.blue_mid_deaths AS mid_deaths,
    matchup_map.blue_dragon_deaths AS dragon_deaths,
    matchup_map.blue_sup_deaths AS sup_deaths,
    matchup_map.blue_baron_assists AS baron_assists,
    matchup_map.blue_jungle_assists AS jungle_assists,
    matchup_map.blue_mid_assists AS mid_assists,
    matchup_map.blue_dragon_assists AS dragon_assists,
    matchup_map.blue_sup_assists AS sup_assists,
    matchup_map.blue_baron_dmg_taken AS baron_dmg_taken,
    matchup_map.blue_jungle_dmg_taken AS jungle_dmg_taken,
    matchup_map.blue_mid_dmg_taken AS mid_dmg_taken,
    matchup_map.blue_dragon_dmg_taken AS dragon_dmg_taken,
    matchup_map.blue_sup_dmg_taken AS sup_dmg_taken,
    matchup_map.blue_baron_dmg_dealt AS baron_dmg_dealt,
    matchup_map.blue_jungle_dmg_dealt AS jungle_dmg_dealt,
    matchup_map.blue_mid_dmg_dealt AS mid_dmg_dealt,
    matchup_map.blue_dragon_dmg_dealt AS dragon_dmg_dealt,
    matchup_map.blue_sup_dmg_dealt AS sup_dmg_dealt,
    matchup_map.blue_baron_total_gold AS baron_total_gold,
    matchup_map.blue_jungle_total_gold AS jungle_total_gold,
    matchup_map.blue_mid_total_gold AS mid_total_gold,
    matchup_map.blue_dragon_total_gold AS dragon_total_gold,
    matchup_map.blue_sup_total_gold AS sup_total_gold,
    matchup_map.blue_baron_player AS baron_player,
    matchup_map.blue_jungle_player AS jungle_player,
    matchup_map.blue_mid_player AS mid_player,
    matchup_map.blue_dragon_player AS dragon_player,
    matchup_map.blue_sup_player AS sup_player,
    matchup_map.blue_turrets_destroyed AS turrets_destroyed,
    matchup_map.team_first_blood = matchup_map.blue_side AS first_blood,
    matchup_map.player_first_blood,
    matchup_map.player_first_death,
    matchup_map.place_first_blood,
	matchup_map.team_first_herald = matchup_map.blue_side AS first_herald,
	matchup_map.first_herald_teamfight,
	matchup_map.first_herald_stealed,
	matchup_map.first_herald_route,
	matchup_map.team_second_herald = matchup_map.blue_side AS second_herald,
	matchup_map.second_herald_teamfight,
	matchup_map.second_herald_stealed,
	matchup_map.second_herald_route,
	matchup_map.team_first_tower = matchup_map.blue_side AS first_tower,
	matchup_map.first_tower_route,
	matchup_map.first_tower_herald,
	matchup_map.team_first_drake = matchup_map.blue_side AS first_drake,
	matchup_map.first_drake_teamfight,
    matchup_map.first_drake_stealed,
    matchup_map.first_drake_type,
	matchup_map.team_second_drake = matchup_map.blue_side AS second_drake,
	matchup_map.second_drake_teamfight,
	matchup_map.second_drake_stealed,
	matchup_map.second_drake_type,
	matchup_map.team_third_drake = matchup_map.blue_side AS third_drake,
	matchup_map.third_drake_teamfight,
	matchup_map.third_drake_stealed,
	matchup_map.third_drake_type
FROM matchup_map
UNION ALL
SELECT
    uuid_generate_v4() AS id,
    matchup_map.uuid,
    matchup_map.id AS map_id,
    matchup_map.matchup_id,
    matchup_map.tournament_id,
    matchup_map.map_number,
    matchup_map.patch,
    matchup_map.red_side AS team_id,
    'red'::text AS side,
    matchup_map.length,
    to_seconds(matchup_map.length::text) AS length_sec,
    matchup_map.winner,
    matchup_map.winner_side,
    matchup_map.red_ban_1 AS ban_1,
    matchup_map.red_ban_2 AS ban_2,
    matchup_map.red_ban_3 AS ban_3,
    matchup_map.red_ban_4 AS ban_4,
    matchup_map.red_ban_5 AS ban_5,
    matchup_map.red_pick_1 AS pick_1,
    matchup_map.red_pick_2 AS pick_2,
    matchup_map.red_pick_3 AS pick_3,
    matchup_map.red_pick_4 AS pick_4,
    matchup_map.red_pick_5 AS pick_5,
    matchup_map.red_baron_pick AS baron_pick,
    matchup_map.red_jungle_pick AS jungle_pick,
    matchup_map.red_mid_pick AS mid_pick,
    matchup_map.red_dragon_pick AS dragon_pick,
    matchup_map.red_sup_pick AS sup_pick,
    matchup_map.red_baron_kills AS baron_kills,
    matchup_map.red_jungle_kills AS jungle_kills,
    matchup_map.red_mid_kills AS mid_kills,
    matchup_map.red_dragon_kills AS dragon_kills,
    matchup_map.red_sup_kills AS sup_kills,
    matchup_map.red_baron_deaths AS baron_deaths,
    matchup_map.red_jungle_deaths AS jungle_deaths,
    matchup_map.red_mid_deaths AS mid_deaths,
    matchup_map.red_dragon_deaths AS dragon_deaths,
    matchup_map.red_sup_deaths AS sup_deaths,
    matchup_map.red_baron_assists AS baron_assists,
    matchup_map.red_jungle_assists AS jungle_assists,
    matchup_map.red_mid_assists AS mid_assists,
    matchup_map.red_dragon_assists AS dragon_assists,
    matchup_map.red_sup_assists AS sup_assists,
    matchup_map.red_baron_dmg_taken AS baron_dmg_taken,
    matchup_map.red_jungle_dmg_taken AS jungle_dmg_taken,
    matchup_map.red_mid_dmg_taken AS mid_dmg_taken,
    matchup_map.red_dragon_dmg_taken AS dragon_dmg_taken,
    matchup_map.red_sup_dmg_taken AS sup_dmg_taken,
    matchup_map.red_baron_dmg_dealt AS baron_dmg_dealt,
    matchup_map.red_jungle_dmg_dealt AS jungle_dmg_dealt,
    matchup_map.red_mid_dmg_dealt AS mid_dmg_dealt,
    matchup_map.red_dragon_dmg_dealt AS dragon_dmg_dealt,
    matchup_map.red_sup_dmg_dealt AS sup_dmg_dealt,
    matchup_map.red_baron_total_gold AS baron_total_gold,
    matchup_map.red_jungle_total_gold AS jungle_total_gold,
    matchup_map.red_mid_total_gold AS mid_total_gold,
    matchup_map.red_dragon_total_gold AS dragon_total_gold,
    matchup_map.red_sup_total_gold AS sup_total_gold,
    matchup_map.red_baron_player AS baron_player,
    matchup_map.red_jungle_player AS jungle_player,
    matchup_map.red_mid_player AS mid_player,
    matchup_map.red_dragon_player AS dragon_player,
    matchup_map.red_sup_player AS sup_player,
    matchup_map.red_turrets_destroyed AS turrets_destroyed,
    matchup_map.team_first_blood = matchup_map.red_side AS first_blood,
    matchup_map.player_first_blood,
    matchup_map.player_first_death,
    matchup_map.place_first_blood,
	matchup_map.team_first_herald = matchup_map.red_side AS first_herald,
	matchup_map.first_herald_teamfight,
	matchup_map.first_herald_stealed,
	matchup_map.first_herald_route,
	matchup_map.team_second_herald = matchup_map.red_side AS second_herald,
	matchup_map.second_herald_teamfight,
	matchup_map.second_herald_stealed,
	matchup_map.second_herald_route,
	matchup_map.team_first_tower = matchup_map.red_side AS first_tower,
	matchup_map.first_tower_route,
	matchup_map.first_tower_herald,
	matchup_map.team_first_drake = matchup_map.red_side AS first_drake,
	matchup_map.first_drake_teamfight,
    matchup_map.first_drake_stealed,
    matchup_map.first_drake_type,
	matchup_map.team_second_drake = matchup_map.red_side AS second_drake,
	matchup_map.second_drake_teamfight,
	matchup_map.second_drake_stealed,
	matchup_map.second_drake_type,
	matchup_map.team_third_drake = matchup_map.red_side AS third_drake,
	matchup_map.third_drake_teamfight,
	matchup_map.third_drake_stealed,
	matchup_map.third_drake_type
FROM matchup_map;
