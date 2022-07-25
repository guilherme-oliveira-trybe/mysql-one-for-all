SELECT
	c.nome_cancoes AS 'nome',
	COUNT(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.cancoes AS c ON h.cancoes_id = c.cancoes_id
INNER JOIN SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 4
GROUP BY nome
ORDER BY nome;