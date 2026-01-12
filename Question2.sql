SELECT nom_tournoi, dotation_totale, nom_jeu
FROM tournoi t 
INNER JOIN jeu j
ON t.id_jeu = j.id_jeu
HAVING dotation_totale > 1000000;
