CREATE TABLE rockets_analysis_v2 AS

SELECT r.season as year, 
r.W as wins, r.L as losses,
r.PTS as rockets_ppg, o.PTS as opponent_ppg, l.PTS as league_avg_ppg,
r.AST as rockets_apg, o.AST as opponent_apg, l.AST as league_avg_apg,
r.TRB as rockets_rbg, o.TRB as opponent_rbg, l.TRB as league_avg_rbg,
r.ORB as rockets_orbg, o.ORB as opponent_orpg, l.ORB as league_avg_orpg,
r.DRB as rockets_drbg, o.DRB as opponent_drbg, l.DRB as league_avg_drpg,
r.STL as rockets_spg, o.STL as opponent_spg, l.STL as league_avg_spg,
r.BLK as rockets_bpg, o.BLK as opponent_bpg, l.BLK as league_avg_bpg,
r.Coach as head_coach

FROM rocketsPerGame as r

JOIN rocketsOpponentPerGame as o ON r.Season = o.Season
JOIN leagueAveragePerGame as l on r.Season = l.Season

ORDER BY year DESC