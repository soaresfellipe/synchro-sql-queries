SELECT CTRL_DT_INCLUSAO, DOF_IMPORT_NUMERO dof_import, ID, EMITENTE_PFJ_CODIGO emitente, UF_CODIGO_EMITENTE uf,EDOF_CODIGO especie, 
   serie_subserie serie, NUMERO,nfe_cod_situacao cod, NFE_DESC_SITUACAO descr, TIPO_CTE tipo, nfe_localizador
FROM COR_DOF
WHERE CTRL_DT_INCLUSAO >= to_date(sysdate,'dd/mm/yyyy hh24:mi:ss')
AND CTRL_CONTEUDO = 'C'
AND MODO_EMISSAO = 'L'                  
AND EMITENTE_PFJ_CODIGO = INFORMANTE_EST_CODIGO
ORDER BY CTRL_DT_INCLUSAO;
