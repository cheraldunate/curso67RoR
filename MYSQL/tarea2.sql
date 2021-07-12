use world;


-- 1. ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente. (1)
select * from cities;
select * from countries;
select * from languages;
select language, percentage from languages where language like '%sloven%' order by percentage desc; 
select name from countries where id in (200,107, 96, 16);
-- para unir las dos lineas:
select name, language, percentage from languages
inner join countries on languages.country_id = countries.id
where language like '%sloven%' order by percentage desc;
-- otra forma
select * from cities;
select * from countries;
select * from languages;

select * from languages
WHERE language like '%loven%'
;

select  countries.name, languages.language, languages.percentage
from languages
INNER JOIN countries ON countries.id= languages.country_id
WHERE -- language like '%loven%'
countries.id in (16,96,107,200)
order by languages.percentage desc
;

-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente(3).

select cn.name, count(*) as ncities from cities ci
JOIN COUNTRIES CN ON CI.COUNTRY_ID=cn.id
group by ci.country_id
order by ncities DESC;
-- otra forma
select countries.name pais, count(countries.name) total_ciudades from cities
JOIN countries on countries.id = cities.country_id
group by countries.name
order by total_ciudades DESC;



-- 3. ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
-- Tu consulta debe organizar el resultado por población en orden descendente. (1)
select * from cities;
select * from countries;

select * from cities where country_code = "mex" and population > 500000
order by population desc;

-- otra forma
select * from countries where name like '%xico%'; -- id=136
select * from countries where name ='mexico'; -- otra opcion

select cities.name, cities.population from cities
JOIN countries on countries.id = cities.country_id
where countries.id = 136
and cities.population > 500000
order by  cities.population desc; 




-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%?
-- Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)

select name, language, percentage from countries
join languages on languages.country_id = countries.id
where percentage >89
order by percentage desc;

-- otra forma!!!!!!!!
select countries.name, languages.language, languages.percentage from languages
INNER JOIN countries ON countries.id= languages.country_id
WHERE languages.percentage > 89
order by languages.percentage desc
;

-- 5. ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y
-- una población superior a 100,000? (2)

select * from countries;

select name, surface_area, population from countries
where surface_area < 501 and population > 100000;

-- otra forma
select * from countries
where surface_area < 501 and population > 100000;

-- 6. ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200 y 
-- una esperanza de vida superior a 75 años? (1)
select * from countries;
select name, life_expectancy,capital, government_form from countries
where government_form = 'constitutional monarchy' and capital > 200 and  life_expectancy > 75 ; 

-- otra forma
select name, capital, life_expectancy from countries -- government_form - 'constituuional monarchy'; capital; life_expentancy
where government_form = 'constitutional monarchy'
and capital > 200
and life_expectancy > 75;



-- 7. ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires y 
-- tener una población superior a 500,000? La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población. (2)
select * from cities;
select * from countries;

select cn.name as country, ct.name as city, ct.district, ct.population
from cities ct
join countries cn on cn.id = ct.country_id
where ct.country_code like 'ARG' and ct.population > 500000 and ct.district = 'Buenos Aires';

-- otra forma!!!!!!!!!!!!corregir
select * from cities;
select * from countries;

select * from countries WHERE name like '%tina'; -- id = 9

select * from cities where country_id= 9 and population > 500000 and district = 'Buenos Aires';

select countries.name pais, ct.name ciudad, ct.district distrito, ct.population poblacion from cities ct
INNER JOIN countries on countries.id = ct.country_id
where ct.country_id= 9 and ct.population > 500000 and ct.district = 'Buenos Aires';


-- 8. ¿Qué consulta harías para resumir el número de países en cada región? La consulta debe mostrar el nombre de la región
-- y el número de países. Además, la consulta debe organizar el resultado por el número de países en orden descendente. (2)
select * from cities;
select * from countries;
-- count(*) cuenta filas
select region, count(*) as n_country from countries
group by region
order by n_country desc;

-- otra forma
select region, count(region) numero_paises from countries
group by  region
order by numero_paises desc 
;



