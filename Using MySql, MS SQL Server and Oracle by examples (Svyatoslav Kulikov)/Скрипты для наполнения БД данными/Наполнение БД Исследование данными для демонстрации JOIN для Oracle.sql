INSERT ALL
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (1, N'Комната с двумя компьютерами', 5)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (2, N'Комната с тремя компьютерами', 5)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (3, N'Пустая комната 1', 2)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (4, N'Пустая комната 2', 2)
	INTO "rooms" ("r_id", "r_name", "r_space") VALUES (5, N'Пустая комната 3', 2)
SELECT 1 FROM "DUAL";

INSERT ALL
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (1, 1, N'Компьютер A в комнате 1')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (2, 1, N'Компьютер B в комнате 1')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (3, 2, N'Компьютер A в комнате 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (4, 2, N'Компьютер B в комнате 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (5, 2, N'Компьютер C в комнате 2')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (6, NULL, N'Свободный компьютер A')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (7, NULL, N'Свободный компьютер B')
	INTO "computers" ("c_id", "c_room", "c_name") VALUES (8, NULL, N'Свободный компьютер C')
SELECT 1 FROM "DUAL";







