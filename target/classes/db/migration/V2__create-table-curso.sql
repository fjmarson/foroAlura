create table curso(

    id bigint not null auto_increment,
    nombre varchar(200) not null,
    categoria varchar(100) not null,
    creation_date DATETIME,
    last_modified_date DATETIME,
    active BOOLEAN not null default 1,

    primary key (id)
);