CREATE OR REPLACE PROCEDURE SP CONFERE_NM_FUNCIONARIO (P_ID_FUNCIONARIO NUMBER,
                                                        P_NM_FUNCIONARIO VARCHAR2) IS 
V_NM_FUNCIONARIO employees.first_name%TYPE;                               

--todas as variaveis---

V_NM_FUNCIONARIO   employees.first_name%Type;

BEGIN
-- logica de programacao--

SELECT first_name
INTO V_NM_FUNCIONARIO
FROM employees
WHERE employees_id = 102;

IF V_NM_FUNCIONARIO <> `NM_FUNCIONARIO THEN
   DMS_OUTPUT.put_line(V_NM_FUNCIONARIO);
ELSE
DMS_OUTPUT.put_line(NOK);
END IF;

-- maior>, menor<, igual=, diferente<>, diferente forma diferente!=, igual ou menor=<, igual ou maior=>

END SP_CONFERE_NM_FUNCIONARIO;
