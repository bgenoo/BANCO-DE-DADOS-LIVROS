create schema cc1m1611;

use cc1m1611;

create table if not exists livros(
id_livro int primary key not null,
titulo VARCHAR(255) not null,
autor VARCHAR(255),
ano_publicacao int not null,
disponibilidade TINYINT(1) not null
);

insert into livros
(id_livro, titulo, autor, ano_publicacao, disponibilidade)
values
(1, "A Revolta de Atlas", "Ayn Rand", 1957, 1),
(2, "Dom Quixote", "Miguel De Cervantes", 1605, 1),
(3, "1984", "George Orwell", 1949, 1);

create table if not exists usuarios(
usuario_id int primary key not null,
nome_usuario varchar(255) not null,
email_usuario varchar(255) not null,
telefone_usuario VARCHAR(15)
);

insert into usuarios
(usuario_id, nome_usuario, email_usuario, telefone_usuario)
values
(1, "Breno", "breno@gmail.com", "21 987654321"),
(2, "Marcelo", "marcelo@gmail.com", "21 912345678"),
(3, "Renan", "renanTownerAzulBebê@gmail.com", "27 987654322");

create table if not exists emprestimos(
emprestimo_id int primary key not null,
data_emprestimo date not null,
data_devolucao_prevista date not null,
devolucao TINYINT(1) not null,
id_livro int,
constraint id_livro foreign key (id_livro) references livros(id_livro),
usuario_id int,
constraint usuario_id foreign key (usuario_id) references usuarios(usuario_id)
);

