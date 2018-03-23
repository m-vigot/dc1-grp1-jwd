USE dc1_grp1_jwd;

SELECT 
	id,
    titre,
    image,
    nb_likes,
    date_creation,
    DATE_FORMAT(date_creation, '%e %M %Y') AS 'date_creation_format'
FROM photo 
ORDER BY date_creation DESC 
LIMIT 6;

SELECT
	content,
    date_creation,
    DATE_FORMAT(date_creation, '%e %M %Y') AS 'date_creation_format'
FROM commentaire
WHERE photo_id=1
ORDER BY date_creation DESC 
LIMIT 6