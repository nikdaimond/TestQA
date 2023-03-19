﻿#language: ru

Функционал: Создание документа "Абонемент"

Как Администратор Центра я хочу
Создание документа "Абонемент"

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Создание документа "Абонемент"
//тест1
*Открытие формы списка Абонемент
	И я закрываю все окна клиентского приложения
	Когда я нажимаю на кнопку с именем 'КнопкаАбонементы'
	Тогда открылось окно 'Абонементы'
*Открытие формы создания документа Абонемент	
	И я нажимаю на кнопку с именем 'Создать'
	Тогда открылось окно 'Аб№ * [Не проведен]'
	И в табличном документе 'ОстаткиБонусныхЗанятийТабДок' я перехожу к ячейке "R1C1"
	И из выпадающего списка с именем "Ребенок" я выбираю точное значение 'Казьмина Елизавета'
	И я нажимаю кнопку выбора у поля с именем "ВидАбонемента"
	Тогда открылось окно 'Виды абонементов'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'     |
		| '06 месяцев 1 раз' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Аб№  Казьмина Елизавета [Не проведен] *'

*Запись документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем "Номер" как "$Номер$"	
*Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'
	чтобы зарегистрировать абонемент
*Проверка
	И таблица "Список" содержит строки:
		| 'Номер' |
		| '$Номер$' |	