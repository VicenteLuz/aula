-- Deploy escola:deleta_aluno to pg
-- requires: aluno

BEGIN;

-- XXX Add DDLs here.
CREATE OR REPLACE FUNCTION ESCOLA.DELETA_ALUNO(ID_ALUNO BIGINT)
RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS 
$$

BEGIN
    delete from escola.aluno where id = id_aluno;
    return FOUND;
END;
$$;


COMMIT;
