SET IDENTITY_INSERT [site_pages] ON;
INSERT INTO [site_pages] ([sp_id], [sp_parent], [sp_name]) VALUES
(1, NULL, N'Главная'),
(2, 1, N'Читателям'),
(3, 1, N'Спонсорам'),
(4, 1, N'Рекламодателям'),
(5, 2, N'Новости'),
(6, 2, N'Статистика'),
(7, 3, N'Предложения'),
(8, 3, N'Истории успеха'),
(9, 4, N'Акции'),
(10, 1, N'Контакты'),
(11, 3, N'Документы'),
(12, 6, N'Текущая'),
(13, 6, N'Архивная'),
(14, 6, N'Неофициальная');
SET IDENTITY_INSERT [site_pages] OFF;

SET IDENTITY_INSERT [cities] ON;
INSERT INTO [cities] ([ct_id], [ct_name]) VALUES
(1, N'Лондон'),
(2, N'Париж'),
(3, N'Мадрид'),
(4, N'Токио'),
(5, N'Москва'),
(6, N'Киев'),
(7, N'Минск'),
(8, N'Рига'),
(9, N'Варшава'),
(10, N'Берлин');
SET IDENTITY_INSERT [cities] OFF;

INSERT INTO [connections] ([cn_from], [cn_to], [cn_cost], [cn_bidir]) VALUES
(1, 5, 10, 'Y'),
(1, 7, 20, 'N'),
(7, 1, 25, 'N'),
(7, 2, 15, 'Y'),
(2, 6, 50, 'N'),
(6, 8, 40, 'Y'),
(8, 4, 30, 'N'),
(4, 8, 35, 'N'),
(8, 9, 15, 'Y'),
(9, 1, 20, 'N'),
(7, 3, 5, 'N'),
(3, 6, 5, 'N');