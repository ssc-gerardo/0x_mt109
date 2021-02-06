SELECT * 
FROM actor 
WHERE act_id IN(
    SELECT act_id 
    FROM cast 
    WHERE serie_id IN (
        SELECT serie_id 
        FROM serie 
        WHERE mov_title='Big Sister'
    )
);



SELECT dir_name
FROM (
        SELECT dir_name, COUNT(dir_name) mycount
        FROM (
            SELECT dir_name
            FROM Director
            WHERE dir_id IN (
                SELECT dir_id
                FROM ep_direction
                WHERE ep_id IN (
                    SELECT ep_id
                    FROM Episodio
                    WHERE ep_id IN
                        SELECT serie_id
                        FROM episodios
                        WHERE serie_id IN (
                            SELECT serie_id
                            FROM serie
                        )
                )
            )
        )  
GROUP BY dir_name 
HAVING COUNT (dir_name)=( 
    SELECT MAX(mycount) 
    FROM (
        SELECT dir_name, COUNT(dir_name) mycount
        FROM (
            SELECT dir_name
            FROM Director
            WHERE dir_id IN (
                SELECT dir_id
                FROM ep_direction
                WHERE ep_id IN (
                    SELECT ep_id
                    FROM Episodio
                    WHERE ep_id IN
                        SELECT serie_id
                        FROM episodios
                        WHERE serie_id IN (
                            SELECT serie_id
                            FROM serie
                        )
                )
            )
        )
        GROUP BY dir_name
    )
);
