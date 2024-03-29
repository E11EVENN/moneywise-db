

/*==============================================================*/
/* Table: ORGANIZACION                                          */
/*==============================================================*/
create table ORGANIZACION (
   ID_ORGANIZACION      NUMERIC(10)          not null,
   NOMBRE               VARCHAR(100)         null,
   constraint PK_ORGANIZACION primary key (ID_ORGANIZACION)
);