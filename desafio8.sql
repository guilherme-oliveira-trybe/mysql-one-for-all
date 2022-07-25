SELECT
	a.nome_artista AS 'artista',
  al.nome_album AS 'album'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = a.artista_id
WHERE a.nome_artista = 'Walter Phoenix';