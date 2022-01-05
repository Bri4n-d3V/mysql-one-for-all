SELECT 
    u.usuario,
    COUNT(h.cancoes_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos/60), 2) AS total_minutos
FROM
    SpotifyClone.usuario AS u
        INNER JOIN
    SpotifyClone.historico_de_reproducoes AS h ON u.usuario_id = h.usuario_id
		INNER JOIN
        SpotifyClone.cancoes AS c ON c.cancoes_id = h.cancoes_id
GROUP BY u.usuario
ORDER BY u.usuario;