SELECT a.nm_assinante, t.n_fone, ta.ds_tipo
FROM Assinante a
JOIN ass_end ae ON a.cd_assinante = ae.cd_assinante
JOIN Endereco e ON ae.cd_endereco = e.cd_endereco
JOIN Municipio m ON e.cd_municipio = m.cd_municipio
JOIN ass_tipo at ON a.cd_assinante = at.cd_assinante
JOIN Tipo_Assinante ta ON at.cd_tipo = ta.cd_tipo
JOIN end_fone ef ON e.cd_endereco = ef.cd_endereco
JOIN Telefone t ON ef.cd_fone = t.cd_fone
WHERE (m.ds_municipio = 'Natal' OR m.ds_municipio = 'João Câmara') AND ta.ds_tipo = 'comercial';