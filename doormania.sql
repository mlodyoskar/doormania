-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Sie 2021, 13:21
-- Wersja serwera: 10.4.20-MariaDB
-- Wersja PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `doormania`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Drzwi wejściowe wewnętrzne'),
(2, 'Drzwi ramowe wewnętrzne'),
(3, 'Drzwi drewniane zewnętrzne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkt`
--

CREATE TABLE `produkt` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `short_desc` varchar(45) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkt`
--

INSERT INTO `produkt` (`id`, `category_id`, `name`, `short_desc`, `desc`, `price`, `img_path`) VALUES
(1, 2, 'test', 'testowy opis krótki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar rutrum magna. Proin non justo leo. Mauris felis nunc, sollicitudin eget est faucibus, dictum ultricies sem. Pellentesque sapien dui, aliquet vitae volutpat ut, egestas feugiat elit. Etiam nibh mi, accumsan sit amet convallis non, ullamcorper vitae ante. Ut eu ex orci. Mauris a dui laoreet, accumsan dolor vel, convallis est. Suspendisse sit amet semper mi. Etiam ligula purus, laoreet eget lorem ut, aliquam consequat neque. Cras nibh ipsum, sagittis nec faucibus at, fermentum id dui.\n\nEtiam hendrerit sit amet dui ut sollicitudin. Praesent a quam pretium, porta nisi eu, rhoncus nulla. Cras blandit id ipsum quis eleifend. Nullam magna tortor, iaculis in gravida vel, molestie vitae sapien. Nullam et velit at nisi euismod facilisis. Sed viverra tristique turpis, quis volutpat mauris placerat ut. Maecenas dignissim orci leo, at mattis diam congue vel. Suspendisse porttitor metus placerat, mattis nisl non, commodo orci. Sed sagittis venenatis nisl, et mollis nunc iaculis ut. Sed at ultricies odio.', '1920.56', 'białe.jpg'),
(2, 3, 'P105', 'Drzwi drewniane', 'Drzwi drewniane super jakosciowe', '2000.23', 'czarne.png'),
(3, 2, 'test', 'testowy opis krótki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar rutrum magna. Proin non justo leo. Mauris felis nunc, sollicitudin eget est faucibus, dictum ultricies sem. Pellentesque sapien dui, aliquet vitae volutpat ut, egestas feugiat elit. Etiam nibh mi, accumsan sit amet convallis non, ullamcorper vitae ante. Ut eu ex orci. Mauris a dui laoreet, accumsan dolor vel, convallis est. Suspendisse sit amet semper mi. Etiam ligula purus, laoreet eget lorem ut, aliquam consequat neque. Cras nibh ipsum, sagittis nec faucibus at, fermentum id dui.\r\n\r\nEtiam hendrerit sit amet dui ut sollicitudin. Praesent a quam pretium, porta nisi eu, rhoncus nulla. Cras blandit id ipsum quis eleifend. Nullam magna tortor, iaculis in gravida vel, molestie vitae sapien. Nullam et velit at nisi euismod facilisis. Sed viverra tristique turpis, quis volutpat mauris placerat ut. Maecenas dignissim orci leo, at mattis diam congue vel. Suspendisse porttitor metus placerat, mattis nisl non, commodo orci. Sed sagittis venenatis nisl, et mollis nunc iaculis ut. Sed at ultricies odio.', '1920.56', 'białe.jpg'),
(4, 2, 'test', 'testowy opis krótki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar rutrum magna. Proin non justo leo. Mauris felis nunc, sollicitudin eget est faucibus, dictum ultricies sem. Pellentesque sapien dui, aliquet vitae volutpat ut, egestas feugiat elit. Etiam nibh mi, accumsan sit amet convallis non, ullamcorper vitae ante. Ut eu ex orci. Mauris a dui laoreet, accumsan dolor vel, convallis est. Suspendisse sit amet semper mi. Etiam ligula purus, laoreet eget lorem ut, aliquam consequat neque. Cras nibh ipsum, sagittis nec faucibus at, fermentum id dui.\r\n\r\nEtiam hendrerit sit amet dui ut sollicitudin. Praesent a quam pretium, porta nisi eu, rhoncus nulla. Cras blandit id ipsum quis eleifend. Nullam magna tortor, iaculis in gravida vel, molestie vitae sapien. Nullam et velit at nisi euismod facilisis. Sed viverra tristique turpis, quis volutpat mauris placerat ut. Maecenas dignissim orci leo, at mattis diam congue vel. Suspendisse porttitor metus placerat, mattis nisl non, commodo orci. Sed sagittis venenatis nisl, et mollis nunc iaculis ut. Sed at ultricies odio.', '1920.56', 'białe.jpg'),
(5, 2, 'test', 'testowy opis krótki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar rutrum magna. Proin non justo leo. Mauris felis nunc, sollicitudin eget est faucibus, dictum ultricies sem. Pellentesque sapien dui, aliquet vitae volutpat ut, egestas feugiat elit. Etiam nibh mi, accumsan sit amet convallis non, ullamcorper vitae ante. Ut eu ex orci. Mauris a dui laoreet, accumsan dolor vel, convallis est. Suspendisse sit amet semper mi. Etiam ligula purus, laoreet eget lorem ut, aliquam consequat neque. Cras nibh ipsum, sagittis nec faucibus at, fermentum id dui.\r\n\r\nEtiam hendrerit sit amet dui ut sollicitudin. Praesent a quam pretium, porta nisi eu, rhoncus nulla. Cras blandit id ipsum quis eleifend. Nullam magna tortor, iaculis in gravida vel, molestie vitae sapien. Nullam et velit at nisi euismod facilisis. Sed viverra tristique turpis, quis volutpat mauris placerat ut. Maecenas dignissim orci leo, at mattis diam congue vel. Suspendisse porttitor metus placerat, mattis nisl non, commodo orci. Sed sagittis venenatis nisl, et mollis nunc iaculis ut. Sed at ultricies odio.', '1920.56', 'białe.jpg'),
(6, 1, 'test', 'testowy opis krótki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar rutrum magna. Proin non justo leo. Mauris felis nunc, sollicitudin eget est faucibus, dictum ultricies sem. Pellentesque sapien dui, aliquet vitae volutpat ut, egestas feugiat elit. Etiam nibh mi, accumsan sit amet convallis non, ullamcorper vitae ante. Ut eu ex orci. Mauris a dui laoreet, accumsan dolor vel, convallis est. Suspendisse sit amet semper mi. Etiam ligula purus, laoreet eget lorem ut, aliquam consequat neque. Cras nibh ipsum, sagittis nec faucibus at, fermentum id dui.\r\n\r\nEtiam hendrerit sit amet dui ut sollicitudin. Praesent a quam pretium, porta nisi eu, rhoncus nulla. Cras blandit id ipsum quis eleifend. Nullam magna tortor, iaculis in gravida vel, molestie vitae sapien. Nullam et velit at nisi euismod facilisis. Sed viverra tristique turpis, quis volutpat mauris placerat ut. Maecenas dignissim orci leo, at mattis diam congue vel. Suspendisse porttitor metus placerat, mattis nisl non, commodo orci. Sed sagittis venenatis nisl, et mollis nunc iaculis ut. Sed at ultricies odio.', '1920.56', 'białe.jpg'),
(7, 1, 'test', 'testowy opis krótki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar rutrum magna. Proin non justo leo. Mauris felis nunc, sollicitudin eget est faucibus, dictum ultricies sem. Pellentesque sapien dui, aliquet vitae volutpat ut, egestas feugiat elit. Etiam nibh mi, accumsan sit amet convallis non, ullamcorper vitae ante. Ut eu ex orci. Mauris a dui laoreet, accumsan dolor vel, convallis est. Suspendisse sit amet semper mi. Etiam ligula purus, laoreet eget lorem ut, aliquam consequat neque. Cras nibh ipsum, sagittis nec faucibus at, fermentum id dui.\r\n\r\nEtiam hendrerit sit amet dui ut sollicitudin. Praesent a quam pretium, porta nisi eu, rhoncus nulla. Cras blandit id ipsum quis eleifend. Nullam magna tortor, iaculis in gravida vel, molestie vitae sapien. Nullam et velit at nisi euismod facilisis. Sed viverra tristique turpis, quis volutpat mauris placerat ut. Maecenas dignissim orci leo, at mattis diam congue vel. Suspendisse porttitor metus placerat, mattis nisl non, commodo orci. Sed sagittis venenatis nisl, et mollis nunc iaculis ut. Sed at ultricies odio.', '1920.56', 'białe.jpg'),
(8, 1, 'test', 'testowy opis krótki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque pulvinar rutrum magna. Proin non justo leo. Mauris felis nunc, sollicitudin eget est faucibus, dictum ultricies sem. Pellentesque sapien dui, aliquet vitae volutpat ut, egestas feugiat elit. Etiam nibh mi, accumsan sit amet convallis non, ullamcorper vitae ante. Ut eu ex orci. Mauris a dui laoreet, accumsan dolor vel, convallis est. Suspendisse sit amet semper mi. Etiam ligula purus, laoreet eget lorem ut, aliquam consequat neque. Cras nibh ipsum, sagittis nec faucibus at, fermentum id dui.\r\n\r\nEtiam hendrerit sit amet dui ut sollicitudin. Praesent a quam pretium, porta nisi eu, rhoncus nulla. Cras blandit id ipsum quis eleifend. Nullam magna tortor, iaculis in gravida vel, molestie vitae sapien. Nullam et velit at nisi euismod facilisis. Sed viverra tristique turpis, quis volutpat mauris placerat ut. Maecenas dignissim orci leo, at mattis diam congue vel. Suspendisse porttitor metus placerat, mattis nisl non, commodo orci. Sed sagittis venenatis nisl, et mollis nunc iaculis ut. Sed at ultricies odio.', '1920.56', 'białe.jpg'),
(9, 1, 'P105', 'Drzwi drewniane', 'Drzwi drewniane super jakosciowe', '2000.23', 'czarne.png'),
(10, 1, 'P105', 'Drzwi drewniane', 'Drzwi drewniane super jakosciowe', '2000.23', 'czarne.png'),
(11, 1, 'P105', 'Drzwi drewniane', 'Drzwi drewniane super jakosciowe', '2000.23', 'czarne.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkt`
--
ALTER TABLE `produkt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `produkt`
--
ALTER TABLE `produkt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `produkt`
--
ALTER TABLE `produkt`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
