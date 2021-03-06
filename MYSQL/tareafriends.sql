use friends;

SELECT * FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id;

-- 1. Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.

SELECT users.first_name AS usuario_nom, users.last_name AS Usuario_ape, user2.first_name AS amigo_nom, user2.last_name AS amigo_ape
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
WHERE friendships.friend_id = 4;

-- 2) Devuelve el recuento de todas las amistades.

SELECT friendships.user_id, first_name, last_name, COUNT(friendships.friend_id) AS contador 
FROM users
JOIN friendships
ON users.id = friendships.user_id
GROUP BY friendships.user_id
ORDER BY first_name;

-- 3)Descubre quién tiene más amigos y devuelve el recuento de sus amigos.

SELECT iden, nom, ape, MAX(contador) AS amigos
FROM (SELECT friendships.user_id AS iden, first_name AS nom, last_name AS ape, COUNT(friendships.friend_id) AS contador 
FROM users
JOIN friendships
ON users.id = friendships.user_id
GROUP BY friendships.user_id
ORDER BY nom) AS tabla
JOIN friendships
ON iden = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
GROUP BY tabla.iden;

-- 4) Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.

INSERT INTO users (first_name, last_name, created_at) 
VALUES ('Giovanni', 'Franco', NOW());

INSERT INTO friendships (user_id, friend_id, created_at) 
VALUES (6, 2, NOW());

INSERT INTO friendships (user_id, friend_id, created_at) 
VALUES (6, 4, NOW());

INSERT INTO friendships (user_id, friend_id, created_at) 
VALUES (6, 5, NOW());

-- 5 Devuelve a los amigos de Eli en orden alfabético.

SELECT users.id, us.first_name, us.last_name
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS us
ON friendships.user_id = us.id
WHERE friendships.friend_id = 2
ORDER BY us.first_name;
--

select user2.first_name, user2.last_name from users
left join friendships fs on users.id=fs.user_id
left join users as user2 ON fs.friend_id=user2.id
where users.first_name='Eli'
order by user2.first_name;

-- 6 Eliminar a Marky Mark de los amigos de Eli.

DELETE FROM friendships
WHERE user_id = 2 AND friend_id = 5;
--

 delete from friendships where friend_id = (select id from users where first_name='Marky') and
 user_id = (select id from users where first_name='Eli');


-- 7 Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos

SELECT users.first_name, users.last_name, us2.first_name AS NomAmigo, us2.last_name AS ApeAmigo
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS us2
ON friendships.friend_id = us2.id;

--
select users.first_name, users.last_name, concat (user2.first_name, ' ', user2.last_name) friend from users
left join friendships fs on users.id=fs.user_id
left join users as user2 ON fs.friend_id=user2.id;

