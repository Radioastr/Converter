;~ Открываем проводник
run ("explorer")
Sleep ( 1000)
Send("{TAB}")
Sleep (1000)
Send("{SPACE}")
Sleep (1000)
;~ Прописываем адрес к папке с gps файлами
Send("\\gps1309\autopilot")
Send("{ENTER}")
Sleep (10000)
Send("{TAB}")
Sleep (1000)
Send("{TAB}")
Sleep (1000)
Send("{TAB}")
Sleep (1000)
Send("{TAB}")
Sleep (1000)
Send("{TAB}")
Sleep (1000)
Send("{TAB}")
Sleep (1000)
Send("{HOME}")
Sleep(1000)
;~ Нужно скопировать 2 файла за предыдущий день
Send("{DOWN}")
Sleep(1000)
Send("{DOWN}")
Sleep(1000)
Send("+{DOWN}")
;~ Copy
Sleep(1000)
Send("^c")
Sleep(1000)
;~ Закрыть окно
Send("!{F4}")
Sleep(1000)
;~ Указываем директорию, куда складываем новые данные для конвертора
$Path="F:\new"
Run("explorer /e, " & '"' & $Path & '"')
Sleep(1000)
;~ Копируем в неё наши новые файлы
Send("^v")
