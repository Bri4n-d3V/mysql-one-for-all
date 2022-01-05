SELECT 
    COUNT(h.cancoes_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_de_reproducoes AS h
        INNER JOIN
    SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
WHERE u.usuario = 'Bill';