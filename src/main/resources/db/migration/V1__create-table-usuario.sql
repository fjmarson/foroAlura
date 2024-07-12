create table usuario(

    id bigint not null auto_increment,
    nombre varchar(100) not null unique,
    email varchar(100) not null unique,
    contrasena varchar(300) not null,
    creation_date DATETIME,
    last_modified_date DATETIME,
    active BOOLEAN not null default 1,

    primary key (id)
);