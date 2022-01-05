SELECT 
    c1.cancoes AS nome_musica,
    REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(c2.cancoes,
                        'Streets',
                        'Code Review'),
                    'Her Own',
                    'Trybe'),
                'Inner Fire',
                'Project'),
            'Silly',
            'Nice'),
        'Circus',
        'Pull Request') AS novo_nome
FROM
    SpotifyClone.cancoes AS c1
        INNER JOIN
    SpotifyClone.cancoes AS c2 ON c1.cancoes_id = c2.cancoes_id
WHERE
    c1.cancoes LIKE '%Streets%'
        OR c1.cancoes LIKE '%Her Own%'
        OR c1.cancoes LIKE '%Inner Fire%'
        OR c1.cancoes LIKE '%Silly%'
        OR c1.cancoes LIKE '%Circus'
ORDER BY c1.cancoes;