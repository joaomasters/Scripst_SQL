BEGIN 
  
SELECT MIN(BDCO_DH_LANCTO)
INTO   W_DATA_LANC_MENOR
FROM   CONSIGNACAO_SBD
WHERE  BDPR_CD_DINAP
AND    BDED_NU_EDICAO = L.BDPR_CD_DINAP
AND    BDCO_CD_RELATORIO IN ('PSE78' , 'PSE81');
IF W_DATA_LANC_MENOR >= TO_DATE ('01/09/2017' , 'DD/MM/YYYY') THEN
    W_ERP_SEGMENT6 := '038';
ELSE
    W_ERP_SEGMENT6 := '023';
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
  W_ERP_SEGMENT6 := '038';
END;

ELSE
    IF L.BDAC_DH_LANCTO >= TO_DATE ('01/09/2017' , 'DD/MM/YYYY') THEN
       W_ERP_SEGMENT6 := '038';
    ELSE
      W_ERP_SEGMENT6 := '023';
     END IF;
 END IF;                 
SELECT MIN(BDCO_DH_LANCTO)
INTO   W_DATA_LANC_MENOR
FROM   CONSIGNACAO_SBD
WHERE  BDPR_CD_DINAP
AND    BDED_NU_EDICAO = L.BDPR_CD_DINAP
AND    BDCO_CD_RELATORIO IN ('PSE78' , 'PSE81');
IF W_DATA_LANC_MENOR >= TO_DATE ('01/09/2017' , 'DD/MM/YYYY') THEN
    W_ERP_SEGMENT6 := '038';
ELSE
    W_ERP_SEGMENT6 := '023';
END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
  W_ERP_SEGMENT6 := '038';
END;

ELSE
    IF L.BDAC_DH_LANCTO >= TO_DATE ('01/09/2017' , 'DD/MM/YYYY') THEN
       W_ERP_SEGMENT6 := '038';
    ELSE
      W_ERP_SEGMENT6 := '023';
     END IF;
 END IF;                 -- Created on 8/28/2019 by A702840 
declare 
  --todas as variaveis sao declarada aqui ---

  V_NM_FUNCIONARIO   employees.first_name%Type;
  i integer;
begin
 -- logica de programacao--

SELECT first_name
INTO V_NM_FUNCIONARIO
FROM employees
WHERE employees_id = 102;

-- se aplica a logica de prog--
IF V_NM_FUNCIONARIO <> `LEX` THEN
   DMS_OUTPUT.put_line(V_NM_FUNCIONARIO);
ELSE
DMS_OUTPUT.put_line(NOK);
END IF; -- FIM DO IF

-- package oracle DMS_OUTPUT
-- EXCEPTION 
-- PROCESSAMENTO DE EXCEPCOES  
-- maior>, menor<, igual=, diferente<>, diferente forma diferente!=, igual ou menor=<, igual ou maior=>
  
end; -- FIM DO BLOCO
