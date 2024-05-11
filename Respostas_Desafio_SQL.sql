-- resposta 1
SELECT
	nome,
	ano
FROM 
	Filmes

-- resposta 2
SELECT
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
ORDER BY ano

--resposta 3 
SELECT
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE Nome='De Volta para o Futuro'

-- resposta 4
SELECT
	Nome,
	Ano,
	Duracao
FROM 
	Filmes
WHERE Ano='1997'

-- resposta 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

-- resposta 6
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao

-- resposta 7
SELECT
	Ano,
	COUNT(*) Quantidade
FROM 
	Filmes
Group BY Ano
ORDER BY Quantidade DESC

-- resposta 8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM
	Atores
WHERE Genero='M'

-- resposta 9
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM
	Atores
WHERE Genero='F'
ORDER BY PrimeiroNome

-- resposta 10
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero
INNER JOIN Filmes On Filmes.Id = IdFilme
INNER JOIN Generos ON Generos.id = IdGenero


-- resposta 11
SELECT 
	Filmes.Nome,
	Generos.Genero
FROM 
	FilmesGenero
INNER JOIN Filmes On Filmes.Id = IdFilme
INNER JOIN Generos ON Generos.id = IdGenero
WHERE Generos.Genero = 'Mistério'

--resposta 12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	Papel
FROM
	ElencoFilme
INNER JOIN Atores ON Atores.Id = IdAtor
INNER JOIN Filmes ON Filmes.Id = IdFilme