SELECT 
    c.cancoes AS nome, COUNT(h.cancoes_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_de_reproducoes AS h ON c.cancoes_id = h.cancoes_id
        INNER JOIN
    SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
        INNER JOIN
    SpotifyClone.plano AS p ON u.plano_id = p.plano_id
WHERE
    p.plano IN ('gratuito','pessoal')
GROUP BY c.cancoes_id
ORDER BY cancoes;