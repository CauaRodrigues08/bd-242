-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 04/02/2025 às 14:47
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydatabase`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CLIENTES`
--

CREATE TABLE `TB_CLIENTES` (
  `id` varchar(80) NOT NULL,
  `customerName` varchar(80) DEFAULT NULL,
  `contactLastName` varchar(120) DEFAULT NULL,
  `contactFirstName` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `adressLine1` varchar(40) DEFAULT NULL,
  `adressLine2` varchar(40) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `postalCode` varchar(40) DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL,
  `salesRepEmployeeNumber` varchar(20) DEFAULT NULL,
  `creditLimit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DETALHES_PEDIDOS`
--

CREATE TABLE `TB_DETALHES_PEDIDOS` (
  `id_orderNumber` varchar(20) NOT NULL,
  `id_productCode` int NOT NULL,
  `quantityOrdered` int DEFAULT NULL,
  `priceEach` int DEFAULT NULL,
  `orderLineNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_EMPREGADOS`
--

CREATE TABLE `TB_EMPREGADOS` (
  `id` varchar(20) NOT NULL,
  `lastName` varchar(80) DEFAULT NULL,
  `firstName` varchar(40) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `officeCode` varchar(20) DEFAULT NULL,
  `reportsTo` varchar(20) DEFAULT NULL,
  `jobTitle` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ESCRITORIOS`
--

CREATE TABLE `TB_ESCRITORIOS` (
  `id` varchar(20) NOT NULL,
  `city` varchar(80) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addressLine1` varchar(20) DEFAULT NULL,
  `addressLine2` varchar(20) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL,
  `territory` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_LINHAS_DE_PRODUTO`
--

CREATE TABLE `TB_LINHAS_DE_PRODUTO` (
  `id` int NOT NULL,
  `htmlDescription` text,
  `image` varchar(80) DEFAULT NULL,
  `textDescription` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PAGAMENTOS`
--

CREATE TABLE `TB_PAGAMENTOS` (
  `id_costumerNumber` varchar(80) NOT NULL,
  `id` varchar(20) NOT NULL,
  `paymentDate` varchar(20) DEFAULT NULL,
  `amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PEDIDOS`
--

CREATE TABLE `TB_PEDIDOS` (
  `id` varchar(20) NOT NULL,
  `orderDate` varchar(40) DEFAULT NULL,
  `requiredDate` varchar(40) DEFAULT NULL,
  `shippedDate` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `comments` text,
  `id_customerNumber` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTOS`
--

CREATE TABLE `TB_PRODUTOS` (
  `id` int NOT NULL,
  `productName` varchar(80) DEFAULT NULL,
  `id_productLine` int DEFAULT NULL,
  `productScale` varchar(80) DEFAULT NULL,
  `productVendor` varchar(80) DEFAULT NULL,
  `productDescription` text,
  `quantityInStock` int DEFAULT NULL,
  `buyPrice` int DEFAULT NULL,
  `MSRP` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_DETALHES_PEDIDOS`
--
ALTER TABLE `TB_DETALHES_PEDIDOS`
  ADD PRIMARY KEY (`id_orderNumber`,`id_productCode`),
  ADD KEY `id_productCode` (`id_productCode`);

--
-- Índices de tabela `TB_EMPREGADOS`
--
ALTER TABLE `TB_EMPREGADOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_LINHAS_DE_PRODUTO`
--
ALTER TABLE `TB_LINHAS_DE_PRODUTO`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD PRIMARY KEY (`id_costumerNumber`,`id`);

--
-- Índices de tabela `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customerNumber` (`id_customerNumber`);

--
-- Índices de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_productLine` (`id_productLine`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `TB_LINHAS_DE_PRODUTO`
--
ALTER TABLE `TB_LINHAS_DE_PRODUTO`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_DETALHES_PEDIDOS`
--
ALTER TABLE `TB_DETALHES_PEDIDOS`
  ADD CONSTRAINT `TB_DETALHES_PEDIDOS_ibfk_1` FOREIGN KEY (`id_orderNumber`) REFERENCES `TB_PEDIDOS` (`id`),
  ADD CONSTRAINT `TB_DETALHES_PEDIDOS_ibfk_2` FOREIGN KEY (`id_productCode`) REFERENCES `TB_PRODUTOS` (`id`);

--
-- Restrições para tabelas `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD CONSTRAINT `TB_PAGAMENTOS_ibfk_1` FOREIGN KEY (`id_costumerNumber`) REFERENCES `TB_CLIENTES` (`id`);

--
-- Restrições para tabelas `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  ADD CONSTRAINT `TB_PEDIDOS_ibfk_1` FOREIGN KEY (`id_customerNumber`) REFERENCES `TB_CLIENTES` (`id`);

--
-- Restrições para tabelas `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD CONSTRAINT `TB_PRODUTOS_ibfk_1` FOREIGN KEY (`id_productLine`) REFERENCES `TB_LINHAS_DE_PRODUTO` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
