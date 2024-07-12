create table respuesta (
    id int auto_increment primary key,
    mensaje text not null,
    topico bigint,
    fechaCreacion datetime not null,
    autor bigint,
    solucion boolean,
    foreign key (topico) references topico(id),
    foreign key (autor) references usuario(id)
);
