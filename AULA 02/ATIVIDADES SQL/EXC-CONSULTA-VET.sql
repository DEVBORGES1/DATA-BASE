USE VETERINARIA;

-- A) Quantidade total de animais registrados no sistema

SELECT COUNT(*)
 FROM ANIMAL;
 
 -- B) Total de vacinas aplicadas registradas no sistema
 
SELECT COUNT(*) AS total_vacinas FROM VACINA;

-- C) Quantidade de animais registrados por categoria

SELECT TIPO_ANIMAL.NOME AS categoria, COUNT(ANIMAL.ID) AS total_animais
FROM ANIMAL
JOIN TIPO_ANIMAL ON ANIMAL.ID_TIPO_ANIMAL = TIPO_ANIMAL.ID
GROUP BY TIPO_ANIMAL.NOME;

-- D) Categoria de animais que mais recebeu vacinas

SELECT TIPO_ANIMAL.NOME AS categoria, COUNT(VACINA.ID) AS total_vacinas
FROM VACINA
JOIN ANIMAL ON VACINA.ID_ANIMAL = ANIMAL.ID
JOIN TIPO_ANIMAL ON ANIMAL.ID_TIPO_ANIMAL = TIPO_ANIMAL.ID
GROUP BY TIPO_ANIMAL.NOME
ORDER BY total_vacinas DESC
LIMIT 1;
