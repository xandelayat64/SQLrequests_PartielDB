SELECT nom_equipe, j.nb_joueurs_par_equipe
FROM equipe e
INNER JOIN jeu j
ON e.id_jeu = j.id_jeu
WHERE j.nom_jeu = "Counter-Strike 2";
