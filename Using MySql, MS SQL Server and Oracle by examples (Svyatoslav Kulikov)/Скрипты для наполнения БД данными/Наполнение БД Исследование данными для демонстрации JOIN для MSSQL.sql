SET IDENTITY_INSERT [rooms] ON;
INSERT INTO [rooms] ([r_id], [r_name], [r_space])
VALUES
(1, N'Комната с двумя компьютерами', 5),
(2, N'Комната с тремя компьютерами', 5),
(3, N'Пустая комната 1', 2),
(4, N'Пустая комната 2', 2),
(5, N'Пустая комната 3', 2);
SET IDENTITY_INSERT [rooms] OFF;

SET IDENTITY_INSERT [computers] ON;
INSERT INTO [computers] ([c_id], [c_room], [c_name])
VALUES
(1, 1, N'Компьютер A в комнате 1'),
(2, 1, N'Компьютер B в комнате 1'),
(3, 2, N'Компьютер A в комнате 2'),
(4, 2, N'Компьютер B в комнате 2'),
(5, 2, N'Компьютер C в комнате 2'),
(6, NULL, N'Свободный компьютер A'),
(7, NULL, N'Свободный компьютер B'),
(8, NULL, N'Свободный компьютер C');
SET IDENTITY_INSERT [computers] OFF;