# README

С Ruby и с Rails я работал в первый раз, сделал как смог, создал сущности, связи между ними, на главной выводится список турбаз, изначальные тестовые данные загружаются через seed.db, стилизацию сделал через bootstrap, можно добавлять новые турбазы, страны, удалять и редактировать

вторую часть sql запрос напишу здесь

SELECT
    country.name AS Country,
    region.name AS Region,
    city.name AS City,
    COUNT(base.id) AS Base_Count
FROM
    country
LEFT JOIN
    region ON country.id = region.country_id
LEFT JOIN
    city ON region.id = city.region_id
LEFT JOIN
    base ON city.id = base.city_id
GROUP BY
    country.id, region.id, city.id
ORDER BY
    country.name, region.name, city.name;

