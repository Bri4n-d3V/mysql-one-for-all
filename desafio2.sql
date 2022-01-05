SELECT 
    COUNT(c.cancoes_id) AS cancoes,
    COUNT(DISTINCT(a.artista_id)) AS artistas,
    COUNT(DISTINCT(c.album_id)) AS albuns
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.album AS a ON c.album_id = a.album_id;