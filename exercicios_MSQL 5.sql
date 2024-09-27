SELECT a.nm_assinante, e.ds_endereco, e.complemento, e.bairro, e.CEP, t.ddd, t.n_fone
FROM Assinante a
JOIN ass_end ae ON a.cd_assinante = ae.cd_assinante
JOIN Endereco e ON ae.cd_endereco = e.cd_endereco
JOIN end_fone ef ON e.cd_endereco = ef.cd_endereco
JOIN Telefone t ON ef.cd_fone = t.cd_fone;

