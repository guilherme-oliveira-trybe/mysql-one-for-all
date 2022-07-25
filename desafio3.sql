SELECT
  u.nome_usuario AS 'usuario',
  COUNT(h.cancoes_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(c.duracao_segundos / 60), 2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.cancoes_id = h.cancoes_id
GROUP BY usuario
ORDER BY usuario ASC;