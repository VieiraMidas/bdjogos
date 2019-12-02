use BDjogos;

select nome_pessoa,
cpf_pessoa from pessoa order by nome_pessoa;

select * from endereco order by bairro_endereco;

select nome_pessoa from pessoa where tipopessoa_idtipopessoa = 2 order by cpf_pessoa;

select P.nome_pessoa, P.cpf_pessoa, T.descricao_tipopessoa
from pessoa P join tipopessoa T
on P.tipopessoa_idtipopessoa = T.idtipopessoa
order by T.descricao_tipopessoa;

select N.nome_pessoa, E.*
from pessoa N join endereco E
on N.idpessoa = E.pessoa_idpessoa
where bairro_endereco = 'Interlagos'
order by nome_pessoa; 