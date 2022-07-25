SELECT
	a.nome_artista AS 'artista',
  al.nome_album AS 'album',
  COUNT(af.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = a.artista_id
INNER JOIN SpotifyClone.artistas_seguidos AS af ON a.artista_id = af.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, album;