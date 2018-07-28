ALTER TRIGGER "TRG_site_pages_sp_id" DISABLE;
INSERT ALL
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (1, NULL, N'Главная')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (2, 1, N'Читателям')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (3, 1, N'Спонсорам')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (4, 1, N'Рекламодателям')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (5, 2, N'Новости')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (6, 2, N'Статистика')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (7, 3, N'Предложения')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (8, 3, N'Истории успеха')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (9, 4, N'Акции')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (10, 1, N'Контакты')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (11, 3, N'Документы')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (12, 6, N'Текущая')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (13, 6, N'Архивная')
 INTO "site_pages" ("sp_id", "sp_parent", "sp_name") VALUES (14, 6, N'Неофициальная')
SELECT 1 FROM "DUAL";
ALTER TRIGGER "TRG_site_pages_sp_id" ENABLE;

ALTER TRIGGER "TRG_cities_ct_id" DISABLE;
INSERT ALL
 INTO "cities" ("ct_id", "ct_name") VALUES (1, N'Лондон')
 INTO "cities" ("ct_id", "ct_name") VALUES (2, N'Париж')
 INTO "cities" ("ct_id", "ct_name") VALUES (3, N'Мадрид')
 INTO "cities" ("ct_id", "ct_name") VALUES (4, N'Токио')
 INTO "cities" ("ct_id", "ct_name") VALUES (5, N'Москва')
 INTO "cities" ("ct_id", "ct_name") VALUES (6, N'Киев')
 INTO "cities" ("ct_id", "ct_name") VALUES (7, N'Минск')
 INTO "cities" ("ct_id", "ct_name") VALUES (8, N'Рига')
 INTO "cities" ("ct_id", "ct_name") VALUES (9, N'Варшава')
 INTO "cities" ("ct_id", "ct_name") VALUES (10, N'Берлин')
SELECT 1 FROM "DUAL";
ALTER TRIGGER "TRG_cities_ct_id" ENABLE;

INSERT ALL
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(1, 5, 10, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(1, 7, 20, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(7, 1, 25, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(7, 2, 15, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(2, 6, 50, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(6, 8, 40, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(8, 4, 30, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(4, 8, 35, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(8, 9, 15, 'Y')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(9, 1, 20, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(7, 3, 5, 'N')
 INTO "connections" ("cn_from", "cn_to", "cn_cost", "cn_bidir") VALUES(3, 6, 5, 'N')
SELECT 1 FROM "DUAL";