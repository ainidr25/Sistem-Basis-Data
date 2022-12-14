-- Aini Diah Rahmawati
-- 211524033

SET SERVEROUTPUT ON
create or replace PROCEDURE celciusToFahrenheit(celcius NUMBER) AS
    fahrenheit NUMBER(5); -- Variabel untuk menampung nilai dari fahrenheit
BEGIN
    fahrenheit := (9/5) * celcius + 32; -- Rumus perhitungan untuk konversi dari celcius ke fahrenheit
    DBMS_OUTPUT.PUT('Celcius : ');
    DBMS_OUTPUT.PUT_LINE(celcius);
    DBMS_OUTPUT.PUT('Fahrenheit : ');
    DBMS_OUTPUT.PUT_LINE(fahrenheit);
END;

SET SERVEROUTPUT ON
create or replace PROCEDURE celciusToKelvin(celcius NUMBER) AS
    kelvin NUMBER(5); -- Variabel untuk menampung nilai dari kelvin
BEGIN
    kelvin := celcius + 273; -- Rumus perhitungan untuk konversi dari celcius ke kelvin
    DBMS_OUTPUT.PUT('Celcius : ');
    DBMS_OUTPUT.PUT_LINE(celcius);
    DBMS_OUTPUT.PUT('Kelvin : ');
    DBMS_OUTPUT.PUT_LINE(kelvin);
END;

SET SERVEROUTPUT ON
create or replace PROCEDURE celciusToReamur(celcius NUMBER) AS
    reamur NUMBER(5); -- Variabel untuk menampung nilai dari reamur
BEGIN
    reamur := (4/5) * celcius; -- Rumus perhitungan untuk konversi dari celcius ke fahrenheit
    DBMS_OUTPUT.PUT('Celcius : ');
    DBMS_OUTPUT.PUT_LINE(celcius);
    DBMS_OUTPUT.PUT('Reamur : ');
    DBMS_OUTPUT.PUT_LINE(reamur);
END;

EXECUTE celciusToFahrenheit(32); -- Memanggil serta menjalankan prosedur untuk mengubah dari celcius (melalui parameter) ke fahrenheit 
EXECUTE celciusToKelvin(32); -- Memanggil serta menjalankan prosedur untuk mengubah dari celcius (melalui parameter) ke kelvin 
EXECUTE celciusToReamur(32); -- Memanggil serta menjalankan prosedur untuk mengubah dari celcius (melalui parameter) ke reamur 