SELECT 
    art.artista AS artista, alb.album AS album
FROM
    SpotifyClone.artista AS art
        INNER JOIN
    SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
WHERE
    art.artista = 'Walter Phoenix';