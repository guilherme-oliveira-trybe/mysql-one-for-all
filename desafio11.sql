SELECT
	nome_cancoes AS 'nome_musica',
	CASE 
    WHEN nome_cancoes LIKE '%Streets' THEN REPLACE(nome_cancoes, 'Streets', 'Code Review')
    WHEN nome_cancoes LIKE '%Her Own' THEN REPLACE(nome_cancoes, 'Her Own', 'Trybe')
    WHEN nome_cancoes LIKE '%Inner Fire' THEN REPLACE(nome_cancoes, 'Inner Fire', 'Project')
    WHEN nome_cancoes LIKE '%Silly' THEN REPLACE(nome_cancoes, 'Silly', 'Nice')
    WHEN nome_cancoes LIKE '%Circus' THEN REPLACE(nome_cancoes, 'Circus', 'Pull Request')
    ELSE nome_cancoes
	END AS "novo_nome"
FROM SpotifyClone.cancoes
WHERE 
	nome_cancoes LIKE '%Streets' OR
	nome_cancoes LIKE '%Her Own' OR
  nome_cancoes LIKE '%Inner Fire' OR
  nome_cancoes LIKE '%Silly' OR
  nome_cancoes LIKE '%Circus'
ORDER BY nome_cancoes;