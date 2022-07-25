SELECT
	c.nome_cancoes AS cancao,
    COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h ON h.cancoes_id = c.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
  
  