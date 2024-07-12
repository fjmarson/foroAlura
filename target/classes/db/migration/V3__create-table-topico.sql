create table forohub.topico (
    id bigint auto_increment primary key,
    titulo varchar(200) not null,
    mensaje text not null,
    fechaCreacion datetime not null default current_timestamp,
    status ENUM('abierto', 'cerrado') not null,
    autor bigint,
    curso bigint,
    respuesta int,
    foreign key (autor) references usuario(id),
    foreign key (curso) references curso(id)
);
