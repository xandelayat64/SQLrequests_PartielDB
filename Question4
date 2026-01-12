SELECT 
    jr.nom,
    AVG(s.kills * 1.0 / NULLIF(s.deaths, 0)) AS ratio_kd,
    e.nom_equipe,
    j.nom_jeu
FROM joueur jr
INNER JOIN statistiques s 
ON jr.id_joueur = s.id_joueur
INNER JOIN match_esport m 
ON s.id_match = m.id_match
INNER JOIN appartenir a 
ON jr.id_joueur = a.id_joueur
INNER JOIN equipe e 
ON e.id_equipe = a.id_equipe
INNER JOIN jeu j 
ON e.id_jeu = j.id_jeu
WHERE m.statut = 'termine'
GROUP BY jr.nom, e.nom_equipe, j.nom_jeu
HAVING /*AVG(s.kills * 1.0 / NULLIF(s.deaths, 0))*/ ratio_kd > 1;
