
-- 1
SELECT * FROM ownedmovies;


-- 2
SELECT * FROM genres;
-- visar alla filmer med deras genres

SELECT * FROM genres_fantasy;
-- visar alla med genren Fantasy, i det här fallet bara Thor

SELECT * FROM genres_scifi;
-- visar alla med genren Sci-Fi, i det här fallet alla utom Thor

SELECT * FROM genres_action;
-- visar alla med genren action, i det här fallet alla

SELECT * FROM genres_adventure;
-- visar alla med genren adventure, i det här fallet alla


-- 3
SELECT * FROM notreturnedmovies;


-- 4
select * from overtimenotreturnedmovies;


-- 5
select * from employeemovies;


-- 7
-- call loanMovie(orderId,customerId,employeeId,MovieId,adress);
call loanMovie(3,2,3,4,"motala 451");
-- lägger till en film till en existerande beställning
select * from orders;
-- visar att inga beställningar har ändrats
select * from orderrows;
-- visar att en film lagts till i beställningen

call loanMovie(6,10,4,1,"linköping 635");
-- skapar en ny order eftersom orderId 6 inte finns och lägger till filmen till ordern i orderrows
select * from orders;
-- visar att en beställningen laggts till
select * from orderrows;
-- visar att beställningen har en film


-- Angående frågan om orderrows tabellen är den mer för att koppla flera filmer till samma order, ifall man ville låna flera filmer samtidigt