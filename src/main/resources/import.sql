insert into categoria (nome) values ('ESPORTIVAS');
insert into categoria (nome) values ('CASUAIS');
insert into categoria (nome) values ('FORMAIS');
insert into categoria (nome) values ('GUERRAS MEDIEVAIS');
insert into categoria (nome) values ('ENCONTROS ROMÂNTICOS');

-- insert into marca (nome) values ('GL');
-- insert into marca (nome) values ('Reizer');
-- insert into marca (nome) values ('Ynos');

insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Camiseta azul claro','Camisetinha azul claro', 56.0, 15, '/images/home/product1.jpg', 2);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Camiseta polo','Boa pra jogar baseball com os amigos', 49.95, 5, '/images/home/product2.jpg', 1);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Blusa carnal preta','Perfeita para usar no escuro.', 99.99, 4, '/images/home/product3.jpg', 1);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Kit vestido preto e bolsa azul','Kit pra ir nas festas', 199.0, 12, '/images/home/product4.jpg', 1);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Blusa azul pra dormir','Perfeita para sono leve', 81.12, 20, '/images/home/product5.jpg', 3);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Blusa branca pós vanish','Blusa recém lavada, branquinha pra você!!', 29.90, 99, '/images/home/product6.jpg', 4);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Blusa listrada verde-claro','Ótima para dançar ao ar livre`!!', 39.90, 99, '/images/home/gallery1.jpg', 1);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Camiseta azul claro','Boa para quando for jogar o lixo fora!!', 19.90, 40, '/images/home/gallery2.jpg', 2);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Easy Polo Black Edition','Versão fácil da edição POLO!!', 49.90, 99, '/images/home/gallery3.jpg', 4);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Kit "Eu to rica"','Kit completo de óculos, blusa de lã, camiseta leve e bolsa de luxo!!', 99.90, 35, '/images/home/gallery4.jpg', 5);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Pijama industrial','Pijama ideal para hora de durmir!!', 19.90, 81, '/images/home/recommend1.jpg', 2);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Blusa Taixan-xuan (Chinese edition)','Ótima para enconstros românticos entre asiáticos!!', 69.90, 65, '/images/home/recommend2.jpg', 5);
insert into produto (nome, descricao, valor, estoque, imagem, categoria_id) values ('Blusa doce e delicada, versão rosa','uma bela blusa com cachecol!!', 49.90, 12, '/images/home/recommend3.jpg', 5);

-- insert into produto (nome, descricao, valor, categoria_id, marca_id) values ('Camiseta azul claro','Camisetinha azul claro', 56.0,2,1);
-- insert into produto (nome, descricao, valor, categoria_id, marca_id) values ('Notebook Arus 15.6','Notebook Arus 15.6 Core I7, 16Gb Ram...',2449.0,1,3);
-- insert into produto (nome, descricao, valor, categoria_id, marca_id) values ('Monitor 27pol','Monitor Gamer 27pol 144Hz, 1ms',1129.99,1,2);
-- insert into produto (nome, descricao, valor, categoria_id, marca_id) values ('Kit Teclado e Mouse','Kit com teclado ABNT e mouse com 5 botões',199.0,1,1);

INSERT INTO permissao (nome) values('ROLE_ADMIN');
INSERT INTO permissao (nome) values('ROLE_USER');

INSERT INTO usuario(email, username, password) VALUES ('xande@hotmail.com', 'admin','$2a$10$.PVIfB07x.SfMYTcToxL0.yxcLWU0GbS2NUO1W1QAvqMm/TsFhVem');
INSERT INTO usuario(email, username, password) VALUES ('xandedragon23@gmail.com', 'teste','$2a$10$.PVIfB07x.SfMYTcToxL0.yxcLWU0GbS2NUO1W1QAvqMm/TsFhVem');

INSERT INTO usuario_permissoes(usuario_id, permissoes_id) VALUES (1, 1);
INSERT INTO usuario_permissoes(usuario_id, permissoes_id) VALUES (1, 2);
INSERT INTO usuario_permissoes(usuario_id, permissoes_id) VALUES (2, 2);

INSERT INTO cliente(bairro, cep, cidade, cpf, nome, endereco, estado, telefone, usuario_id) VALUES('abxcder', '12346-500', 'Paránopos', '121.121.121-01', 'xandzeraDaboy', 'Rua X', 'Minas Gerais', '(46) 91234-4321', 2);

INSERT INTO situacao(descricao) VALUES('Pedido Efetuado');
INSERT INTO situacao(descricao) VALUES('Aguardando pagamento');
INSERT INTO situacao(descricao) VALUES('Pagamento Aprovado');
INSERT INTO situacao(descricao) VALUES('Pagamento não aprovado');
INSERT INTO situacao(descricao) VALUES('Pedido em separação');
INSERT INTO situacao(descricao) VALUES('Pedido em Produção');
INSERT INTO situacao(descricao) VALUES('Pedido Enviado');

INSERT INTO pedido(data_alteracao, data_pedido, tipo_frete, tipo_pagamento, valor_frete, valor_total, cliente_id, situacao_id) VALUES('05/05/2021', '05/05/2021', 1, 1, 0, 5087.63, 1, 1);
INSERT INTO pedido(data_alteracao, data_pedido, tipo_frete, tipo_pagamento, valor_frete, valor_total, cliente_id, situacao_id) VALUES('05/05/2021', '05/05/2021', 1, 1, 0, 5087.63, 1, 1);
INSERT INTO pedido(data_alteracao, data_pedido, tipo_frete, tipo_pagamento, valor_frete, valor_total, cliente_id, situacao_id) VALUES('05/05/2021', '05/05/2021', 1, 1, 0, 5087.63, 1, 1);
INSERT INTO pedido(data_alteracao, data_pedido, tipo_frete, tipo_pagamento, valor_frete, valor_total, cliente_id, situacao_id) VALUES('05/05/2021', '05/05/2021', 1, 1, 0, 5087.63, 1, 1);

INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(1, 56.0, 1, 1);
INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(2, 49.95, 1, 2);
INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(3, 99.99, 1, 3);
INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(2, 199.0, 1, 4);

INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(1, 56.0, 2, 4);
INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(1, 49.95, 2, 5);
INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(1, 99.99, 2, 3);
INSERT INTO pedido_item(quantidade, valor, pedido_id, produto_id) VALUES(3, 199.0, 2, 6);