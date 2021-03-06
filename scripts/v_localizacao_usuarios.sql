CREATE OR REPLACE VIEW V_LOCALIZACAO_USUARIOS AS 
SELECT 
CASE WHEN city.latitude IS NOT NULL THEN city.latitude ELSE stat.latitude END AS LATITUDE,
CASE WHEN city.longitude IS NOT NULL THEN city.longitude ELSE stat.longitude END AS LONGITUDE,
CASE WHEN city.nome IS NOT NULL THEN city.nome ELSE stat.nome END AS LOCAL,
tw.filter_id
FROM tweet_owner tw_owner
INNER JOIN tweet tw ON tw_owner.id = tw.owner_id
LEFT JOIN city ON tw_owner.city_id = city.codigo
LEFT JOIN br_state stat ON tw_owner.br_state_id = stat.codigo
WHERE (city.latitude IS NOT NULL AND city.longitude IS NOT NULL)  OR (stat.latitude IS NOT NULL AND stat.longitude IS NOT NULL);
   
    
select * from V_LOCALIZACAO_USUARIOS WHERE filter_id = 1;