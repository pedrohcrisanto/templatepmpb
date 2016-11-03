

# Unidades militares
Unit.delete_all
qcg = Unit.create(name: "QCG",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340")

Unit.create(name: "Aguardando publicação",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: qcg)

aespa = Unit.create(name: "AESPA",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: qcg)
Unit.create(name: "Gab do Assessor",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: aespa)
Unit.create(name: "Seção de Apoio Administrativo",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: aespa)
Unit.create(name: "Seção de Estudos e Pareceres",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: aespa)
Unit.create(name: "Seção de Projetos Normativos",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: aespa)


corregedoria = Unit.create(name: "Corregedoria",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: qcg)

Unit.create(name: "CORG 1",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: corregedoria)
Unit.create(name: "CORG 2",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: corregedoria)
Unit.create(name: "CORG 3",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: corregedoria)
Unit.create(name: "CORG 4",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: corregedoria)
Unit.create(name: "CORG 5",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: corregedoria)
Unit.create(name: "Gab do Corregedor",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: corregedoria)
Unit.create(name: "Gab do Subcorregedor",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: corregedoria)

df = Unit.create(name: "DF",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: qcg)
Unit.create(name: "DF 1",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)
Unit.create(name: "DF 2",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)
Unit.create(name: "DF 3",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)
Unit.create(name: "DF 4",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)
Unit.create(name: "DF 5",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)
Unit.create(name: "DF 6",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)
Unit.create(name: "Gab do Diretor",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)
Unit.create(name: "Gab do Vicediretor",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: df)

dgp = Unit.create(name: "DGP",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: qcg)
Unit.create(name: "Capelania",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "DGP 1",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "DGP 2",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "DGP 3",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "DGP 4",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "DGP 5",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "DGP 6",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "Gab do Diretor",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "Gab do Vicediretor",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "NRS",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)

dgp_nao_vinculados = Unit.create(name: "Órgãos Não Vinculados",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: dgp)
Unit.create(name: "AESA",  address: "Av. Duarte da Silveira, s/n - Torre", zip_code: "58040-280", unit: dgp_nao_vinculados)
Unit.create(name: "SEG",  address: "Não informado", zip_code: "58010340", unit: dgp_nao_vinculados)
Unit.create(name: "TRT",  address: "R. Corálio Soares de Oliveira, s/n - Centro", zip_code: "58013-260", unit: dgp_nao_vinculados)
Unit.create(name: "CCB",  address: "Não informado", zip_code: "58010340", unit: dgp_nao_vinculados)
Unit.create(name: "Casa Civil",  address: "Não informado", zip_code: "58010340", unit: dgp_nao_vinculados)
Unit.create(name: "EB",  address: "Não informado", zip_code: "58010340", unit: dgp_nao_vinculados)
Unit.create(name: "Prefeitura Municipal de Bayeux",  address: "PNão informado", zip_code: "58010340", unit: dgp_nao_vinculados)
Unit.create(name: "SEC",  address: "Não informado", zip_code: "58010340", unit: dgp_nao_vinculados)
sedh = Unit.create(name: "SEDH",  address: "Não informado", zip_code: "58010340", unit: dgp_nao_vinculados)
fundac = Unit.create(name: "FUNDAC",  address: "Não informado", zip_code: "58010340", unit: sedh)
Unit.create(name: "CEA",  address: "Não informado", zip_code: "58010340", unit: fundac)
Unit.create(name: "CEJ",  address: "Não informado", zip_code: "58010340", unit: fundac)
Unit.create(name: "TRF",  address: "Não informado", zip_code: "58010340", unit: dgp_nao_vinculados)


dgp_vinculados = Unit.create(name: "Órgãos Vinculados",  address: "Não informado", zip_code: "58010340", unit: dgp)
senasp = Unit.create(name: "SENASP", address: "Não informado", zip_code: "58010340", unit: dgp_vinculados)
Unit.create(name: "Força Nacional", address: "Não informado", zip_code: "58010340", unit: senasp)



gabcg = Unit.create(name: "Gab Cmt Geral",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: qcg)
Unit.create(name: "CPL",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: gabcg)
Unit.create(name: "Ajudância de Ordens",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: gabcg)
Unit.create(name: "Assistência de Gabinete",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: gabcg)

gabscg = Unit.create(name: "Gab Subcmt Geral",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: qcg)
ajgeral = Unit.create(name: "Ajudância Geral",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: gabscg)
Unit.create(name: "AG 1",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "AG 2",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "Administração GMR",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "Banda de Música",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "CCSv",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "Gab Ajudante",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "Museu",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "Presídio da PM",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
aj_vinculados = Unit.create(name: "Órgãos Vinculados",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)
Unit.create(name: "AL",  address: "praça João Pessoa, s/n, Centro", zip_code: "58010340", unit: aj_vinculados)
Unit.create(name: "Justiça Militar",  address: "praça João Pessoa, s/n, Centro", zip_code: "58010340", unit: aj_vinculados)
Unit.create(name: "PGJ",  address: "não informado", zip_code: "58010340", unit: aj_vinculados)
Unit.create(name: "PMJP",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: aj_vinculados)
Unit.create(name: "SEAP",  address: "não informado", zip_code: "58010340", unit: aj_vinculados)
Unit.create(name: "TCE",  address: "jaguaribe", zip_code: "58010340", unit: aj_vinculados)
Unit.create(name: "TJPB",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: aj_vinculados)
aj_seds = Unit.create(name: "SEDS",  address: "mangabeira", zip_code: "58010340", unit: aj_vinculados)
Unit.create(name: "CIOP JP",  address: "mangabeira", zip_code: "58010340", unit: aj_seds)
Unit.create(name: "CIOP CG",  address: "Campina Grande", zip_code: "58010340", unit: aj_seds)
Unit.create(name: "CIOP PT",  address: "Patos", zip_code: "58010340", unit: aj_seds)
Unit.create(name: "GTA",  address: "mangabeira", zip_code: "58010340", unit: aj_seds)
Unit.create(name: "NACE",  address: "mangabeira", zip_code: "58010340", unit: aj_seds)
Unit.create(name: "ACADEPOL",  address: "jacarapé", zip_code: "58010340", unit: aj_seds)
Unit.create(name: "DETRAN",  address: "mangabeira", zip_code: "58010340", unit: aj_seds)

Unit.create(name: "Museu",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: ajgeral)




cprm = Unit.create(name: "CPRM",  address: "R. Cel. Estevão d'Ávila Lins, 464, Cruz das Armas", zip_code: "58085-010", unit: qcg)
Unit.create(name: "PM 4",  address: "R. Cel. Estevão d'Ávila Lins, 464, Cruz das Armas", zip_code: "58085-010", unit: cprm)
bpm1 = Unit.create(name: "1º BPM",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: cprm)
Unit.create(name: "Armamento e Munições",  address: "Praça Pedro Américo, s/n, Centro", zip_code: "58010340", unit: bpm1)

ceatur = Unit.create(name: "CEATur",  address:"Rua Márcionila da Conceição - Cabo Branco, João Pessoa - Paraíba", zip_code:"58045-050", unit:cprm)
Unit.create(name: "Gab do Comandante",  address:"Rua Márcionila da Conceição - Cabo Branco, João Pessoa - Paraíba", zip_code:"58045-050", unit:ceatur)
Unit.create(name: "Gab do Subcomandante",  address:"Rua Márcionila da Conceição - Cabo Branco, João Pessoa - Paraíba", zip_code:"58045-050", unit:ceatur)
Unit.create(name: "SAM",  address:"Rua Márcionila da Conceição - Cabo Branco, João Pessoa - Paraíba", zip_code:"58045-050", unit:ceatur)
Unit.create(name: "SCP",  address:"Rua Márcionila da Conceição - Cabo Branco, João Pessoa - Paraíba", zip_code:"58045-050", unit:ceatur)
Unit.create(name: "SGPO",  address:"Rua Márcionila da Conceição - Cabo Branco, João Pessoa - Paraíba", zip_code:"58045-050", unit:ceatur)
Unit.create(name: "STA",  address:"Rua Márcionila da Conceição - Cabo Branco, João Pessoa - Paraíba", zip_code:"58045-050", unit:ceatur)
