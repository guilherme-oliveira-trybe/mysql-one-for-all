SELECT 
	DISTINCT(SELECT COUNT(cancoes_id) FROM SpotifyClone.cancoes) AS cancoes,
  (SELECT COUNT(artista_id) FROM SpotifyClone.artistas) AS artistas,
  (SELECT COUNT(album_id) FROM SpotifyClone.albuns) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.albuns AS al ON c.album_id = al.album_id
INNER JOIN SpotifyClone.artistas AS ar ON al.artista_id = ar.artista_id;