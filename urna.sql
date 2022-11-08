-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Nov-2022 às 20:39
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `urna`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessos`
--

CREATE TABLE `acessos` (
  `AcessoID` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Senha` varchar(255) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `CandidatoID` int(11) NOT NULL,
  `NomeUrna` varchar(150) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Genero` varchar(45) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `EstadoCivil` varchar(45) NOT NULL,
  `DataNascimento` date NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f',
  `PartidosID` int(11) NOT NULL,
  `CargosID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidaturas`
--

CREATE TABLE `candidaturas` (
  `CandidaturaID` int(11) NOT NULL,
  `EleicaoID` int(11) NOT NULL,
  `CandidatoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `CargosID` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f',
  `TipoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eleicoes`
--

CREATE TABLE `eleicoes` (
  `EleicaoID` int(11) NOT NULL,
  `Data` date NOT NULL,
  `HoraI` time NOT NULL,
  `HoraF` time NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f',
  `TipoID` int(11) NOT NULL,
  `VotoCandidatoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `EstadoID` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Sigla` char(3) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `importar`
--

CREATE TABLE `importar` (
  `ImportarID` int(11) NOT NULL,
  `SecaoID` int(11) NOT NULL,
  `urnaID` int(11) NOT NULL,
  `DataHora` datetime NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `TipoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipios`
--

CREATE TABLE `municipios` (
  `MunicipiosID` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'F',
  `EstadoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `municipios`
--

INSERT INTO `municipios` (`MunicipiosID`, `Nome`, `Excluido`, `EstadoID`) VALUES
(1100015, 'Alta Floresta D oeste', 'F', 11),
(1100023, 'Ariquemes', 'F', 11),
(1100031, 'Cabixi', 'F', 11),
(1100049, 'Cacoal', 'F', 11),
(1100056, 'Cerejeiras', 'F', 11),
(1100064, 'Colorado do Oeste', 'F', 11),
(1100072, 'Corumbiara', 'F', 11),
(1100080, 'Costa Marques', 'F', 11),
(1100098, 'Espigão D oeste', 'F', 11),
(1100106, 'Guajará-Mirim', 'F', 11),
(1100114, 'Jaru', 'F', 11),
(1100122, 'Ji-Paraná', 'F', 11),
(1100130, 'Machadinho D oeste', 'F', 11),
(1100148, 'Nova Brasilândia D oeste', 'F', 11),
(1100155, 'Ouro Preto do Oeste', 'F', 11),
(1100189, 'Pimenta Bueno', 'F', 11),
(1100205, 'Porto Velho', 'F', 11),
(1100254, 'Presidente Médici', 'F', 11),
(1100262, 'Rio Crespo', 'F', 11),
(1100288, 'Rolim de Moura', 'F', 11),
(1100296, 'Santa Luzia D oeste', 'F', 11),
(1100304, 'Vilhena', 'F', 11),
(1100320, 'São Miguel do Guaporé', 'F', 11),
(1100338, 'Nova Mamoré', 'F', 11),
(1100346, 'Alvorada D oeste', 'F', 11),
(1100379, 'Alto Alegre dos Parecis', 'F', 11),
(1100403, 'Alto Paraíso', 'F', 11),
(1100452, 'Buritis', 'F', 11),
(1100502, 'Novo Horizonte do Oeste', 'F', 11),
(1100601, 'Cacaulândia', 'F', 11),
(1100700, 'Campo Novo de Rondônia', 'F', 11),
(1100809, 'Candeias do Jamari', 'F', 11),
(1100908, 'Castanheiras', 'F', 11),
(1100924, 'Chupinguaia', 'F', 11),
(1100940, 'Cujubim', 'F', 11),
(1101005, 'Governador Jorge Teixeira', 'F', 11),
(1101104, 'Itapuã do Oeste', 'F', 11),
(1101203, 'Ministro Andreazza', 'F', 11),
(1101302, 'Mirante da Serra', 'F', 11),
(1101401, 'Monte Negro', 'F', 11),
(1101435, 'Nova União', 'F', 11),
(1101450, 'Parecis', 'F', 11),
(1101468, 'Pimenteiras do Oeste', 'F', 11),
(1101476, 'Primavera de Rondônia', 'F', 11),
(1101484, 'São Felipe D oeste', 'F', 11),
(1101492, 'São Francisco do Guaporé', 'F', 11),
(1101500, 'Seringueiras', 'F', 11),
(1101559, 'Teixeirópolis', 'F', 11),
(1101609, 'Theobroma', 'F', 11),
(1101708, 'Urupá', 'F', 11),
(1101757, 'Vale do Anari', 'F', 11),
(1505601, 'Peixe-Boi', 'F', 15),
(1505635, 'Piçarra', 'F', 15),
(1505650, 'Placas', 'F', 15),
(1505700, 'Ponta de Pedras', 'F', 15),
(1505809, 'Portel', 'F', 15),
(1505908, 'Porto de Moz', 'F', 15),
(1506005, 'Prainha', 'F', 15),
(1506104, 'Primavera', 'F', 15),
(1506112, 'Quatipuru', 'F', 15),
(1506138, 'Redenção', 'F', 15),
(1506161, 'Rio Maria', 'F', 15),
(1506187, 'Rondon do Pará', 'F', 15),
(1506195, 'Rurópolis', 'F', 15),
(1506203, 'Salinópolis', 'F', 15),
(1506302, 'Salvaterra', 'F', 15),
(1506351, 'Santa Bárbara do Pará', 'F', 15),
(1506401, 'Santa Cruz do Arari', 'F', 15),
(1506500, 'Santa Izabel do Pará', 'F', 15),
(1506559, 'Santa Luzia do Pará', 'F', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `partidos`
--

CREATE TABLE `partidos` (
  `PartidosID` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Sigla` varchar(20) NOT NULL,
  `NumLegenda` int(2) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `partidos`
--

INSERT INTO `partidos` (`PartidosID`, `Nome`, `Sigla`, `NumLegenda`, `Excluido`) VALUES
(1, 'Partido Musical', 'PMU', 81, 'F'),
(2, 'Partido dos Esportes', 'PES', 82, 'F'),
(3, 'Partido das Profissões', 'PPR', 83, 'F'),
(4, 'Partido dos Animes', 'PAN', 84, 'F'),
(5, 'Partido dos Personagens Literário - Filmes e Séries', ' PPLFS', 85, 'F'),
(6, 'Partido dos Games', ' PGAM', 86, 'F'),
(7, 'Partido da Tecnologia da Informação', ' PTI', 87, 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao`
--

CREATE TABLE `secao` (
  `SecaoID` int(11) NOT NULL,
  `Num` varchar(45) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f',
  `ZonasID` int(11) NOT NULL,
  `MunicipiosID` int(11) NOT NULL,
  `EstadoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `TipoID` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `urnas`
--

CREATE TABLE `urnas` (
  `UrnaID` int(11) NOT NULL,
  `N.Identificacao` varchar(45) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `votoscandidatos`
--

CREATE TABLE `votoscandidatos` (
  `VotoCandidatoID` int(11) NOT NULL,
  `DataHora` datetime NOT NULL,
  `SecaoID` int(11) NOT NULL,
  `CandidatoID` int(11) NOT NULL,
  `importarID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `votoseleitores`
--

CREATE TABLE `votoseleitores` (
  `VotoEleitor` int(11) NOT NULL,
  `DataHora` datetime NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `SecaoID` int(11) NOT NULL,
  `EleicaoID` int(11) NOT NULL,
  `importarID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `zonas`
--

CREATE TABLE `zonas` (
  `ZonasID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Excluido` varchar(1) NOT NULL DEFAULT 'f',
  `EstadoID` int(11) NOT NULL,
  `MunicipiosID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`AcessoID`);

--
-- Índices para tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`CandidatoID`);

--
-- Índices para tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD PRIMARY KEY (`CandidaturaID`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`CargosID`);

--
-- Índices para tabela `eleicoes`
--
ALTER TABLE `eleicoes`
  ADD PRIMARY KEY (`EleicaoID`);

--
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`EstadoID`);

--
-- Índices para tabela `importar`
--
ALTER TABLE `importar`
  ADD PRIMARY KEY (`ImportarID`);

--
-- Índices para tabela `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`MunicipiosID`);

--
-- Índices para tabela `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`PartidosID`);

--
-- Índices para tabela `secao`
--
ALTER TABLE `secao`
  ADD PRIMARY KEY (`SecaoID`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`TipoID`);

--
-- Índices para tabela `urnas`
--
ALTER TABLE `urnas`
  ADD PRIMARY KEY (`UrnaID`);

--
-- Índices para tabela `votoscandidatos`
--
ALTER TABLE `votoscandidatos`
  ADD PRIMARY KEY (`VotoCandidatoID`);

--
-- Índices para tabela `votoseleitores`
--
ALTER TABLE `votoseleitores`
  ADD PRIMARY KEY (`VotoEleitor`);

--
-- Índices para tabela `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`ZonasID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `AcessoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `CandidatoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  MODIFY `CandidaturaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `CargosID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `eleicoes`
--
ALTER TABLE `eleicoes`
  MODIFY `EleicaoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `EstadoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `municipios`
--
ALTER TABLE `municipios`
  MODIFY `MunicipiosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1506560;

--
-- AUTO_INCREMENT de tabela `partidos`
--
ALTER TABLE `partidos`
  MODIFY `PartidosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `secao`
--
ALTER TABLE `secao`
  MODIFY `SecaoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `TipoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `votoscandidatos`
--
ALTER TABLE `votoscandidatos`
  MODIFY `VotoCandidatoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `votoseleitores`
--
ALTER TABLE `votoseleitores`
  MODIFY `VotoEleitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `zonas`
--
ALTER TABLE `zonas`
  MODIFY `ZonasID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
