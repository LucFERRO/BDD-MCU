# BDD-MCU

## Requêtes SQL demandées:

### Les titres et dates de sorties des films du plus récent au plus ancien:

```
SELECT title AS Film,release_date AS 'Date de sortie'
FROM movies 
ORDER BY release_date DESC
```




### Les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique:

```
SELECT last_name AS Nom,first_name AS Prénom,(year(now())-year(birthday)) AS Age FROM actors 
WHERE (year(now())-year(birthday)) > 30 
ORDER BY last_name ASC, actors.first_name ASC
```




### La liste des acteurs principaux pour un film donné (ici Avengers: Endgame):

```
SELECT actors.first_name AS Prénom,actors.last_name AS NOM
FROM actors
LEFT JOIN actors_movies ON actors.id=actors_movies.id_actors
LEFT JOIN movies ON actors_movies.id_movies = movies.id
WHERE movies.title = 'Avengers: Endgame'
ORDER BY actors.last_name ASC, actors.first_name ASC
```




### La liste des films pour un acteur donné (ici Robert Downey Jr.):

```
SELECT movies.title AS Film,movies.release_date AS 'Date de sortie'
FROM movies 
LEFT JOIN actors_movies ON movies.id=actors_movies.id_movies 
LEFT JOIN actors ON actors_movies.id_actors = actors.id 
WHERE actors.last_name = 'Downey' 
ORDER BY movies.release_date ASC
```




### Ajouter un film:

```

```




### Ajouter un acteur:

```

```




### Modifier un film:

```

```




### Supprimer un acteur:

```

```




### Afficher les 3 derniers acteurs ajoutés:

```

```
