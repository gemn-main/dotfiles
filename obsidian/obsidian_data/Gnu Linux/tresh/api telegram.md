Понял. Если вы просто подписаны на группу, а не администратор, вам потребуется другой подход. Можно использовать библиотеку `telethon`, чтобы подключиться к Telegram и получить последние сообщения из группы. Вот пример кода на Python:

1. Установите библиотеку `telethon`:
    
    bash
    
    Копировать код
    
    `pip install telethon`
    
2. Получите API ID и API Hash, зарегистрировав приложение на официальном сайте Telegram.
    
3. Используйте следующий код для получения последнего поста:
    
    python
    
    Копировать код
    
    `from telethon import TelegramClient  # Замените на ваши данные api_id = 'YOUR_API_ID' api_hash = 'YOUR_API_HASH' phone_number = 'YOUR_PHONE_NUMBER' group_username = 'GROUP_USERNAME'  # Имя группы в Telegram  client = TelegramClient('session_name', api_id, api_hash)  async def main():     await client.start(phone_number)     entity = await client.get_entity(group_username)     messages = await client.get_messages(entity, limit=1)     if messages:         print(messages[0].text)     else:         print("No messages found")  with client:     client.loop.run_until_complete(main())`
    
    Замените `YOUR_API_ID`, `YOUR_API_HASH`, `YOUR_PHONE_NUMBER` и `GROUP_USERNAME` на соответствующие данные. Код подключится к Telegram, найдет группу по её имени и выведет последний пост.
    

Этот метод подходит для групп, в которых вы просто подписаны, и не требует администраторских прав.


нужно заменить в коде:

- **`YOUR_API_ID`**: Замените на ваш API ID, который вы получите при регистрации на официальном сайте Telegram.
- **`YOUR_API_HASH`**: Замените на ваш API Hash, который вы получите вместе с API ID.
- **`YOUR_PHONE_NUMBER`**: Введите ваш номер телефона в формате международного кода (например, `+1234567890`).
- **`GROUP_USERNAME`**: Замените на юзернейм группы (например, `examplegroup`), который виден в URL группы Telegram.

Эти данные позволяют вашему скрипту подключиться к Telegram и получить доступ к сообщениям группы.


Если у вас есть только аккаунт на телефоне, вот как получить API ID и API Hash:

1. Перейдите на страницу регистрации приложений Telegram.
2. Войдите с помощью вашего номера телефона, который используется в Telegram.
3. Перейдите в раздел "API development tools" и нажмите "Create new application".
4. Заполните форму (например, название приложения и краткое описание) и нажмите "Create application".
5. После создания вы получите API ID и API Hash. Эти данные будут отображаться на странице.

Эти параметры нужны для подключения к Telegram через скрипт. Если у вас возникнут трудности, сообщите, и я помогу!



На изображении отображена главная страница Telegram. Чтобы продолжить и получить API ID и API Hash, вам нужно:

1. Открыть my.telegram.org в браузере.
2. Войти с помощью вашего номера телефона, на который зарегистрирован ваш Telegram-аккаунт.
3. Перейти в раздел "API development tools".
4. Создать новое приложение, заполнив необходимые поля (например, имя приложения).
5. После создания, вы получите API ID и API Hash, которые сможете использовать в вашем коде.

Эти данные нужны для того, чтобы ваш скрипт мог подключаться к Telegram через API.

![[Pasted image 20240907110925.png]]