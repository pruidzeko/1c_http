
// SPDX-License-Identifier: Apache-2.0+

#Область СлужебныйПрограммныйИнтерфейс
// Парсит значение заголовка ответа Set-Cookie и сохраняет результат в базу Cookie сессии
//
// Параметры:
//     Сессия - Структура - данные HTTP-сессии
//     ОписаниеПеченья - Строка - значение заголовка ответа Set-Cookie
//     СерверURI - Строка - адрес сервера из разобранного URI
//
Процедура ПринятьПеченье(Сессия, Знач ОписаниеПеченья, Знач СерверURI) Экспорт
	КлиентHTTP.ПринятьПеченье(Сессия, ОписаниеПеченья, СерверURI);
КонецПроцедуры

// Возвращает текущую универсальную дату сервера
//
// Возвращаемое значение:
//     Дата - текущая универсальная дата сервера
//
Функция ТекущаяУниверсальнаяДатаНаСервере() Экспорт
	Возврат КлиентHTTP.ТекущаяУниверсальнаяДатаНаСервере();
КонецФункции

// Возвращает раскодированный URI
//
// Параметры:
//     ИдентификаторРесурса - Строка - URI
//
// Возвращаемое значение:
//     Строка - раскодированная строка идентификатора ресурса
//
Функция РаскодированныйИдентификаторРесурса(Знач ИдентификаторРесурса) Экспорт
	Возврат КлиентHTTP.РаскодированныйИдентификаторРесурса(ИдентификаторРесурса);
КонецФункции

// Возвращает значение заголовка Digest-аутентификации
//
// Параметры:
//     Конфигурация - Структура - конфигурация выполнения запроса
//     КонтекстВыполненияАдресВХ - Строка - адрес контекста выполнения запроса во временном хранилище
//
// Возвращаемое значение:
//     Строка - значение заголовка Digest-авторизации
//
Функция ЗаголовокDigest(Знач Конфигурация, Знач КонтекстВыполненияАдресВХ) Экспорт
	Возврат КлиентHTTP.ЗаголовокDigest(Конфигурация, КонтекстВыполненияАдресВХ);
КонецФункции

// Возвращает заголовки AWS4-аутентификации
//
// Параметры:
//  Метод			 - Строка	 - имя HTTP-метода
//  Конфигурация	 - Структура - конфигурация выполнения запроса
//  ДанныеАдресВХ	 - Строка	 - адрес данных тела запроса во временном хранилище
// 
// Возвращаемое значение:
//  Массив - заголовки AWS4-авторизации
//
Функция ЗаголовкиAWS4(Знач Метод, Знач Конфигурация, Знач ДанныеАдресВХ) Экспорт
	Возврат КлиентHTTP.ЗаголовкиAWS4(Метод, Конфигурация, ДанныеАдресВХ);
КонецФункции

// Добавляет запись ошибки в журнал регистрации
//
// Параметры:
//     Данные - Ссылка, Число, Строка, Дата, Булево, Неопределено, Null, Тип - данные, с которыми связано событие
//     Комментарий - Строка - произвольная строка комментария к событию
//     СобытиеВТранзакции - Булево - аргумент возвращаемого значения, открыта ли транзакция на момент добавления записи в журнал регистрации
//
Процедура ДобавитьЗаписьОшибкиВЖурналРегистрации(Знач Данные = Неопределено, Знач Комментарий = "", СобытиеВТранзакции = Ложь) Экспорт
	КлиентHTTP.ДобавитьЗаписьОшибкиВЖурналРегистрации(Данные, Комментарий, СобытиеВТранзакции);
КонецПроцедуры

// Возвращает коллекцию раскодированных строк
//
// Параметры:
//  КоллекцияСтрок	 - Структура	 - коллекция строк для раскодирования (обрабатываются только значения)
//  Способ			 - СпособКодированияСтроки	 - способ, которым была закодирована исходная строка
// 
// Возвращаемое значение:
//  Структура - коллекция раскодированных строк
//
Функция РаскодированныеСтроки(Знач КоллекцияСтрок, Знач Способ = Неопределено) Экспорт
	Возврат КлиентHTTP.РаскодированныеСтроки(КоллекцияСтрок, Способ);
КонецФункции

// Возвращает коллекцию кодированных строк
//
// Параметры:
//  КоллекцияСтрок	 - Структура	 - коллекция строк для кодирования (обрабатываются только значения)
//  Способ			 - СпособКодированияСтроки	 - способ кодирования строки
// 
// Возвращаемое значение:
//  Структура - коллекция кодированных строк
//
Функция ЗакодированныеСтроки(Знач КоллекцияСтрок, Знач Способ = Неопределено) Экспорт
	Возврат КлиентHTTP.ЗакодированныеСтроки(КоллекцияСтрок, Способ);
КонецФункции

// Возвращает коллекцию раскодированных полей HTML-Формы
//
// Параметры:
//  ПоляФормыHTML	 - Массив	 - поля HTML-формы
// 
// Возвращаемое значение:
//  Массив - коллекция раскодированных полей HTML-формы
//
Функция РаскодированныеПоляФормыHTML(Знач ПоляФормыHTML) Экспорт
	Возврат КлиентHTTP.РаскодированныеПоляФормыHTML(ПоляФормыHTML);
КонецФункции

// Возвращает коллекцию закодированных полей HTML-Формы
//
// Параметры:
//  ПоляФормыHTML	 - Массив	 - поля HTML-формы
// 
// Возвращаемое значение:
//  Массив - коллекция закодированных полей HTML-формы
//
Функция ЗакодированныеПоляФормыHTML(Знач ПоляФормыHTML) Экспорт
	Возврат КлиентHTTP.ЗакодированныеПоляФормыHTML(ПоляФормыHTML);
КонецФункции
#КонецОбласти
