drop table if exists imposto;

create table imposto
(
    id               bigint auto_increment
        primary key,
    descricao        varchar(255) null,
    pais            varchar(255) null,
    valor            double       not null
);

INSERT INTO imposto (id, descricao, pais, valor) VALUES (1,'Imposto Básico','Brasil','200');
INSERT INTO imposto (id, descricao, pais, valor) VALUES (2,'Imposto Religioso','Thailandia','400');
INSERT INTO imposto (id, descricao, pais, valor) VALUES (3,'Imposto Básico no Mundo Todo','TODOS','20');


INSERT INTO promocao ( descricao, is_all_inclusive, local, preco, qtd_dias,imposto_id)
VALUES ('Viagem de Familia',0,'Campos do Jordão',600.0,5,1);
INSERT INTO promocao ( descricao, is_all_inclusive, local, preco, qtd_dias,imposto_id)
VALUES ('Viagem Radical',0,'Nova Zelandia',15000.0,15,2);
INSERT INTO promocao ( descricao, is_all_inclusive, local, preco, qtd_dias,imposto_id)
VALUES ('Viagem Religiosa',0,'Bali',9000.0,12,2);
INSERT INTO promocao ( descricao, is_all_inclusive, local, preco, qtd_dias,imposto_id)
VALUES ('Viagem Para ver animais selvagens',0,'Cidade do Cabo',8700.0,8,3);