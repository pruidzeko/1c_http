﻿
Функция ПоддерживаемыеТипыХешФункций() Экспорт
	фРезультат = Новый Соответствие;
	фРезультат.Вставить("md5", ХешФункция.MD5);
	фРезультат.Вставить("md5-sess", ХешФункция.MD5);
	фРезультат.Вставить("sha", ХешФункция.SHA1);
	фРезультат.Вставить("sha-256", ХешФункция.SHA256);
	
	Возврат фРезультат;
КонецФункции
