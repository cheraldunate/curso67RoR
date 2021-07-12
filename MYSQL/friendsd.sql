use friends;
SELECT * FROM users 
LEFT JOIN friendships ON friendships.user_id=users.id
LEFT JOIN users as user2 ON friendships.friend_id= user2.id;

SELECT user2.first_name as friend_first_name, user2.last_name as friend_last_name, ...  
FROM ...;

-- 1. Devuelva a todos los usuarios que son amigos de Kermit, 
-- asegúrese de que sus nombres se muestren en los resultados.
-- Devuelve el recuento de todas las amistades.
SELECT users.first_name nombres FROM users 
LEFT JOIN friendships ON friendships.user_id=users.id
LEFT JOIN users as user2 ON friendships.friend_id= user2.id
where friendships.friend_id=4;
--
SELECT user2.first_name AS Nombre, user2.last_name AS Apellido, users.first_name AS Nombre_amigo, users.last_name AS apellido_amigo
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
WHERE friendships.friend_id = 4;

-- Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
select user2.first_name nombres, user2.last_name apellido
from users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS user2 ON friendships.friend_id = user2.id
where users.id=1;

SELECT iden, nom, ape, MAX(contador) AS amigos
FROM (SELECT friendships.user_id AS iden, first_name AS nom, last_name AS ape, COUNT(friendships.friend_id) AS contador 
FROM users
JOIN friendships
ON users.id = friendships.user_id
GROUP BY friendships.user_id
ORDER BY nom) AS tabla
JOIN friendships
ON iden = friendships.user_id
GROUP BY tabla.iden;-- quien tiene mas amigos

-- Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.
insert into users (first_name, last_name, created_at)
values ('cher','aldunate',now());
select * from users;
insert into friendships (user_id, friend_id, created_at)
values (6, 2, now());
insert into friendships (user_id, friend_id, created_at)
values (6, 4, now());
insert into friendships (user_id, friend_id, created_at)
values (6, 5, now());


-- Devuelve a los amigos de Eli en orden alfabético.
select users.first_name nombres, users.last_name apellido
from users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS user2 ON friendships.friend_id = user2.id
where  friendships.friend_id=2
order by nombres;-- o desc

-- Eliminar a Marky Mark de los amigos de Eli.
delete from friendships
where user_id=2 and friend_id=5
;

-- Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos

SELECT users.first_name, users.last_name, us2.first_name AS NomAmigo, us2.last_name AS ApeAmigo
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS us2 ON friendships.friend_id = us2.id;





