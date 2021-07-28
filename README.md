# BDD-MCU

## Requêtes SQL demandées:

### Les titres et dates de sorties des films du plus récent au plus ancien:

```sql
SELECT title AS Film,release_date AS 'Date de sortie'
FROM movies 
ORDER BY release_date DESC
```




### Les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique:

```sql
SELECT last_name AS Nom,first_name AS Prénom,(year(now())-year(birthday)) AS Age FROM actors 
WHERE (year(now())-year(birthday)) > 30 
ORDER BY last_name ASC, actors.first_name ASC
```




### La liste des acteurs principaux pour un film donné (ici Avengers: Endgame):

```sql
SELECT actors.first_name AS Prénom,actors.last_name AS NOM
FROM actors
LEFT JOIN actors_movies ON actors.id=actors_movies.id_actors
LEFT JOIN movies ON actors_movies.id_movies = movies.id
WHERE movies.title = 'Avengers: Endgame'
ORDER BY actors.last_name ASC, actors.first_name ASC
```




### La liste des films pour un acteur donné (ici Robert Downey Jr.):

```sql
SELECT movies.title AS Film,movies.release_date AS 'Date de sortie'
FROM movies 
LEFT JOIN actors_movies ON movies.id=actors_movies.id_movies 
LEFT JOIN actors ON actors_movies.id_actors = actors.id 
WHERE actors.last_name = 'Downey' 
ORDER BY movies.release_date ASC
```




### Ajouter un film: Iron Man 5 par Michael Bay

```sql
INSERT INTO movies(title,director,running_time,release_date)
VALUES ('Iron Man 5','Michael Bay','123','2023')
```




### Ajouter un acteur:

```sql
INSERT INTO actors(last_name,first_name,birthday)
VALUES ('Bettany', 'Paul','1971-05-27')
```




### Modifier un film: IronMan 5 -> IronMan 6 trompé de numéro

```sql
UPDATE `movies`
SET `title` = "Iron Man 6"
WHERE `movies`.`title` = "Iron Man 5"
```




### Supprimer un acteur: Tuer Paul Bettany

```sql
DELETE FROM `actors`
WHERE `actors`.`last_name` = "Bettany" AND `actors`.`first_name` = "Paul"
```




### Afficher les 3 derniers acteurs ajoutés:

```sql
SELECT first_name AS Prénom, last_name AS NOM
FROM actors
ORDER BY id DESC LIMIT 3
```
