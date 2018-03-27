USE dc1_grp1_jwd;

SELECT *
FROM photo, categorie
WHERE categorie.id = photo.categorie_id;

SELECT *
FROM photo
INNER JOIN categorie ON categorie.id = photo.categorie_id;


SELECT *
FROM photo
INNER JOIN categorie ON categorie.id = photo.categorie_id
LEFT JOIN photo_has_tag ON  photo_has_tag.photo_id = photo.id;

-- Récupérer la liste des tags liés à une photo --

SELECT *
FROM tag
INNER JOIN photo_has_tag ON photo_has_tag.tag_id = tag.id
WHERE photo_has_tag.photo_id = 1;



SELECT 
	photo.id,
    photo.titre,
    photo.image,
    photo.nb_likes,
    photo.date_creation,
    DATE_FORMAT(photo.date_creation, '%e %M %Y') AS 'date_creation_format',
    categorie.titre AS 'categorie'
FROM photo 
INNER JOIN categorie ON categorie.id = photo.categorie_id
ORDER BY date_creation DESC 
LIMIT 6;

SELECT
	id,
	contenu,
    date_creation,
    DATE_FORMAT(date_creation, '%e %M %Y') AS 'date_creation_format'
FROM commentaire
WHERE photo_id=1;