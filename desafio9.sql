SELECT
	COUNT(h.cancoes_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE nome_usuario = 'Bill';