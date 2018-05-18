BEGIN
PC_MULTIMEDIA.Adicionar_multimedia(2111,'corredores coyotes',1,'0horas 48minutos',973,'Willd-up y por conducircom animada F Is for Family. En 2017 la Rolling Stone lo coloco en el nmero diecisiete de los cincuenta mejores comediantes en vivo de todos los tiempos',TO_DATE('24-4-1901','DD-MM-YYYY'));               
END;
/


SELECT PC_MULTIMEDIA.Consultar_multimedia(null) FROM DUAL;

SELECT PC_ACTOR.Mostrar_actua(null) FROM DUAL;

SELECT PC_MULTIMEDIA.Consultar_series(null) FROM DUAL;






