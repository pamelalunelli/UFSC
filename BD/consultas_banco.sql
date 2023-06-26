--quantidade de paradas e quais delas constam em uma linha especifica, retornando quantidade e nome da rua da parada resultante
SELECT COUNT(*) AS total_paradas, parada.endereco_rua 
FROM linha
inner join linha_parada on linha.id_linha = linha_parada.fk_linha_id_linha 
inner join parada on linha_parada.fk_parada_id_parada = parada.id_parada 
where linha.nome = 'Linha 1'
group by parada.id_parada

--numero de itinerarios de um tipo especfico presentes em um municipio especifico
select count(*) as total_itinerarios_noturnos
from itinerario
inner join linha_parada_itinerario on itinerario.id_itinerario = linha_parada_itinerario.FK_ITINERARIO_id_itinerario
inner join linha_parada on linha_parada_itinerario.fk_linha_parada_linha_parada_id_linha_parada  = linha_parada.id_linha_parada
inner join linha on linha_parada.FK_linha_id_linha = linha.id_linha
inner join conexao on linha.id_linha = conexao.FK_LINHA_id_linha
inner join terminal on conexao.FK_TERMINAL_id_terminal = terminal.id_terminal
inner join municipio on terminal.FK_MUNICIPIO_id_municipio = municipio.id_municipio
WHERE itinerario.tipo = 'Noturno' AND municipio.nome = 'Forquilhinha';

--linhas em que o numero de veiculos é menor do que um valor x, retornando nome da linha e total de veiculos
select linha.nome, count(veiculo.id_veiculo) as total_veiculos
from linha
left join veiculo on linha.id_linha = veiculo.FK_ITINERARIO_id_itinerario
group by linha.id_linha, linha.nome
having count(veiculo.id_veiculo) < 2;
