use BDjogos;

insert into tipolocal (descricao_tipolocal) values ('Residencial');

insert into tipolocal (descricao_tipolocal) values ('Comercial');

insert into tipolocal (descricao_tipolocal) values ('Pessoal');
select * from tipolocal;



insert into jogos (nome_jogo,descricao_jogo,genero_jogo,produtora_jogo) values ('Snoopy','Jogo de a��o com cachorro, fases','A��o','Top Games Kids');

insert into jogos (nome_jogo,descricao_jogo,genero_jogo,produtora_jogo) values ('Super Mario','','A��o','Top Games Kids');

insert into jogos (nome_jogo,descricao_jogo,genero_jogo,produtora_jogo) values ('Copa do Mundo 2010 - Africa do Sul','Competi��o futebol�stica','Futebol','Top Games Kids');

insert into jogos (nome_jogo,descricao_jogo,genero_jogo,produtora_jogo) values ('Fifa','Simulador do EA Sports','Futebol','Top Games Kids');

insert into jogos (nome_jogo,descricao_jogo,genero_jogo,produtora_jogo) values ('Homem Aranha','Vers�o TEEN','A��o','Top Games Kids');

insert into jogos (nome_jogo,descricao_jogo,genero_jogo,produtora_jogo) values ('LetsLearn','Jogo para praticar ingl�s','Educativo','Top Games Kids');

insert into jogos (nome_jogo,descricao_jogo,genero_jogo,produtora_jogo) values ('Capit�o Am�rica','','A��o','Top Games Kids');
select * from jogos;



insert into videogame (modelo_videogame,ns_videogame) values ('XBOX360','XB91054125');

insert into videogame (modelo_videogame,ns_videogame) values ('Playstation 3Slim','SO85E5689');

insert into videogame (modelo_videogame,ns_videogame) values ('Sony PSP','SOF582189');

insert into videogame (modelo_videogame,ns_videogame) values ('Sony PS Vita Wi-Fi Bundle','SOG782290');

insert into videogame (modelo_videogame,ns_videogame) values ('PlayStation 2 Slim','SO5A0999');

insert into videogame (modelo_videogame,ns_videogame) values ('Nintendo Wii','NINFF0051486');
select * from videogame;



insert into tipopessoa (descricao_tipopessoa) values ('Cliente');

insert into tipopessoa (descricao_tipopessoa) values ('Funcion�rio');
select * from tipopessoa;



insert into pessoa (tipopessoa_idtipopessoa,nome_pessoa,rg_pessoa,cpf_pessoa) values ('2','Alexandre Ara�jo','3597848-9','35765898777');

insert into pessoa (tipopessoa_idtipopessoa,nome_pessoa,rg_pessoa,cpf_pessoa) values ('2','Giomar de Oliveira','2657945-8','26597520944');

insert into pessoa (tipopessoa_idtipopessoa,nome_pessoa,rg_pessoa,cpf_pessoa) values ('1','Bruno Correa','4875204-0','35987489601');

insert into pessoa (tipopessoa_idtipopessoa,nome_pessoa,rg_pessoa,cpf_pessoa) values ('1','Jonathan Almeida','3978459-9','39874548407');

insert into pessoa(tipopessoa_idtipopessoa,nome_pessoa,rg_pessoa,cpf_pessoa) values ('2','Ricardo Lopes','4587457-1','29874587915');
select * from pessoa;



insert into cliente (pessoa_idpessoa,nick_cliente,senha_cliente) values('3','bcorrea','159874');

insert into cliente (pessoa_idpessoa,nick_cliente,senha_cliente) values('4','jalmeida','854789');
select * from cliente;



insert into funcionario(pessoa_idpessoa,sexo,idade) values('1','M','22');

insert into funcionario(pessoa_idpessoa,sexo,idade) values('2','M','19');

insert into funcionario(pessoa_idpessoa,sexo,idade) values('5','F','19');
select * from funcionario;



insert into contato(tipolocal_idtipolocal,pessoa_idpessoa,telefone_contato,email_contato) values('3','1','1156662008','aaraujo@ig.com.br');

insert into contato(tipolocal_idtipolocal,pessoa_idpessoa,telefone_contato,email_contato) values('1','1','1156691587','alearaujo@uol.com.br');

insert into contato(tipolocal_idtipolocal,pessoa_idpessoa,telefone_contato,email_contato) values('3','2','1156698877','goliveira@terra.com.br');

insert into contato(tipolocal_idtipolocal,pessoa_idpessoa,telefone_contato,email_contato) values('3','3','11998770028','bcorrea@ig.com.br');

insert into contato(tipolocal_idtipolocal,pessoa_idpessoa,telefone_contato,email_contato) values('3','4','11998887900','jalmeida@bol.com.br');

insert into contato(tipolocal_idtipolocal,pessoa_idpessoa,telefone_contato,email_contato) values('3','5','1156637895','rlopes@hotmail.com.br');
select * from contato;



insert into endereco(tipolocal_idtipolocal,pessoa_idpessoa,logradouro,numero_endereco,complemento_endereco,bairro_endereco,cep_endereco,cidade_endereco,estado_endereco) values('3','1','Rua Demonte Risco','220','','Interlagos','04814-578','S�o Paulo','SP');

insert into endereco(tipolocal_idtipolocal,pessoa_idpessoa,logradouro,numero_endereco,complemento_endereco,bairro_endereco,cep_endereco,cidade_endereco,estado_endereco) values('3','2','Rua Nascimento de Moraes','51','','Graja�','04922-510','S�o Paulo','SP');

insert into endereco(tipolocal_idtipolocal,pessoa_idpessoa,logradouro,numero_endereco,complemento_endereco,bairro_endereco,cep_endereco,cidade_endereco,estado_endereco) values('3','3','Pra�a Montes Claros','15','A','Progresso','04914-000','S�o Paulo','SP');

insert into endereco(tipolocal_idtipolocal,pessoa_idpessoa,logradouro,numero_endereco,complemento_endereco,bairro_endereco,cep_endereco,cidade_endereco,estado_endereco) values('3','4','Av. Primavera','1010','','Primavera','04010-100','S�o Paulo','SP');

insert into endereco(tipolocal_idtipolocal,pessoa_idpessoa,logradouro,numero_endereco,complemento_endereco,bairro_endereco,cep_endereco,cidade_endereco,estado_endereco) values('3','5','Rua Marinez','2','','Orion','04878-879','S�o Paulo','SP');
select * from endereco;



insert into aluguel (funcionario_idfuncionario,videogame_idvideogame,cliente_idcliente,jogos_idjogos,valor_aluguel,data_aluguel) values('3','6','1','3','17.86','2004/01/20');

insert into aluguel (funcionario_idfuncionario,videogame_idvideogame,cliente_idcliente,jogos_idjogos,valor_aluguel,data_aluguel) values('3','6','1','3','17.86','2013/01/19');

insert into aluguel (funcionario_idfuncionario,videogame_idvideogame,cliente_idcliente,jogos_idjogos,valor_aluguel,data_aluguel) values('3','6','1','3','17.86','2013/01/04');

insert into aluguel (funcionario_idfuncionario,videogame_idvideogame,cliente_idcliente,jogos_idjogos,valor_aluguel,data_aluguel) values('1','1','2','1','19.5','2013/03/03');
select * from aluguel;