

/*==============================================================*/
/* Table: CLIENTE_EMAIL                                         */
/*==============================================================*/
create table CLIENTE_EMAIL (
   ID_CLIENTE_EMAIL      VARCHAR(20)         not null,
   ID_TIPO_EMAIL        VARCHAR(20)          null,
   EMAIL                VARCHAR(25)         null,
   constraint PK_CLIENTE_EMAIL primary key (ID_CLIENTE_EMAIL)
);