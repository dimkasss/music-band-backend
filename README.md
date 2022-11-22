# music-band-backend

# database setup
с установленными postgres и любой СУБД:
в СУБД создать пустую базу данных с названием "music-bands", в ней открыть query tool (поле для ввода sql команд) и туда вставить содержимое файла backup.sql, запустить код, в базе "music-bands" должны появиться данные.
Сервер будет пытаться подключиться к postgres по дефолтному порту 5432 с паролем test в базу данных "music-bands", так что эти поля должны совпадать

# терминал:
# git clone https://github.com/dimkasss/music-band-backend.git
# cd music-band-backend
# npm i
# npm run serve

