

/*==============================================================*/
/* Table: TIPO_MOVIMIENTO                                       */
/*==============================================================*/
create table TIPO_MOVIMIENTO (
   ID_TIPO_MOVIMIENTO   VARCHAR(50)          not null,
   DESCRIPCION          VARCHAR(50)          null,
   constraint PK_TIPO_MOVIMIENTO primary key (ID_TIPO_MOVIMIENTO)
);
