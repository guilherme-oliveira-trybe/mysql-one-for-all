SELECT
	MIN(valor_plano) AS 'faturamento_minino',
  MAX(valor_plano) AS 'faturamento_maximo',
  (SELECT
		ROUND(AVG(p.valor_plano), 2)
    FROM SpotifyClone.usuarios AS u
		INNER JOIN SpotifyClone.planos AS p ON p.plano_id = u.plano_id) AS 'faturamento_medio',
  (SELECT
		SUM(p.valor_plano)
		FROM SpotifyClone.usuarios AS u
		INNER JOIN SpotifyClone.planos AS p ON p.plano_id = u.plano_id) AS 'faturamento_total'
FROM SpotifyClone.planos;
  
  