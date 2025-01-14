
#Область ПрограммныйИнтерфейс

Процедура ДополнитьФорму(Форма) Экспорт
	
	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда 
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда 
		ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда 
		ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма);	
	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда 
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);	
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда 
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);	
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти  

#Область СлужебныйПрограммныйИнтерфейс

Процедура ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма)
	
	Если Форма.Элементы.Найти("КонтактноеЛицо") = Неопределено Тогда
		 НовыйЭлемент = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
         НовыйЭлемент.ПутьКДанным = "Объект.ДЗ11_КонтактноеЛицо"; 
		 НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода; 
	КонецЕсли;
	
КонецПроцедуры

Процедура ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма)
	
	Если Форма.Элементы.Найти("КонтактноеЛицо") = Неопределено Тогда
		 НовыйЭлемент = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"), , Форма.Элементы.СуммаДокумента);
         НовыйЭлемент.ПутьКДанным = "Объект.ДЗ11_КонтактноеЛицо"; 
		 НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода; 
	 КонецЕсли;
	
КонецПроцедуры
#КонецОбласти  
