DECLARE-- Declaração das varaveis 
  cdturma TURMA.CD_TURMA%TYPE;
  dsturma TURMA.DS_TURMA%TYPE;
     
   /*Declaração do curso*/ 
   CURSOR cs_turma IS
   SELECT t.cd_turma, t.ds_turma
   FROM turma t;
   
   BEGIN
   
    /*Abrir o curso*/OPEN cs_turma;
    
    /* EXECUTA  CICLO COM */
    FOR i IN (SELECT COUNT(*) OVER() FROM TURMA) LOOP              
      -- Extrai dados o registro corrente do cursor e avança para o próximoFETCH cs_turma INTO cdturma,dsturma;/* Exibi os dados do banco*/
      DBMS_OUTPUT.put_line(cdturma||'-'||dsturma);
      
    END LOOP;
    
    /*FECHAR O CURSO*/
    CLOSE cs_turma;
END;
/
