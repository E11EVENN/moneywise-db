
CREATE TABLE CREDITO_LOTE_PAGOS (
   ID_CREDITO_LOTE_PAGO NUMERIC(10) NOT NULL,
   ID_CREDITO_PAGO      NUMERIC(10),
   CONSTRAINT PK_CREDITO_LOTE_PAGOS PRIMARY KEY (ID_CREDITO_LOTE_PAGO)
);
