﻿#language: ru

@tree

Функционал: <описание фичи>

Как Оператор я хочу
создать клиента
чтобы вести клиентскую базу 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка создания клиента
* Открытие формы создания клиента
	Когда я нажимаю на кнопку с именем 'КомандаСправочникКонтакты'
	Тогда открылось окно 'Контакты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'				
* Заполнение
	Когда открылось окно 'Создание нового контакта-контрагента-занимающегося'
	И в поле с именем 'Наименование' я ввожу текст 'Василий'
	И из выпадающего списка с именем "ОбъектИсточникПривлечения" я выбираю точное значение '2GIS'
	И в таблице "Объект_джим_Дети" я нажимаю на кнопку с именем 'Объект_джим_ДетиДобавить'
	И в таблице "Объект_джим_Дети" в поле с именем 'Объект_джим_ДетиФИО' я ввожу текст 'сын Василий'	
* Сохранение
	Когда открылось окно 'Создание нового контакта-контрагента-занимающегося *'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	Тогда открылось окно 'Василий (Клиент)'			
* Проверка
	Когда открылось окно 'Василий (Клиент)'
	И Я закрываю окно 'Василий (Клиент)'