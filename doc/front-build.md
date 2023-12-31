# Билд и развертка фронтэнда

## Сборка проекта на Vue

1. Проверьте что установлены все зависимости:

    ```bash
    npm install
    ```

2. Непосредственно сборка:

    ```bash
    npm run build
    ```

    Эта команда создаст папку `dist` в корне проекта. В этой папке находится всё то, что должно пойти на сервер.

## Развертывание через FTP клиент

1. Установите клиент FTP (например, FileZilla).

2. Запустите FTP-клиент и введите данные для подключения к серверу (хост, порт, имя пользователя, пароль).

3. Подключитесь к серверу.

4. Перейдите в корень проекта и откройте папку `dist`.

5. Загрузите все файлы и папки из `dist` на сервер в соответствующую папку (обычно используется папка `public_html` или `www`).

6. Удостоверьтесь, что все файлы успешно переданы на сервер.

7. Собранный проект теперь должен быть доступен по указанному вами пути на сервере;

#### Использование FTP в WebStorm

1. Откройте свой проект в WebStorm.

2. Перейдите во вкладку `Tools` > `Deployment` > `Configuration`.

3. Нажмите "+" для создания новой конфигурации, выберите "FTP" в качестве типа подключения.

4. Заполните поля с настройками FTP-сервера (хост, порт, имя пользователя, пароль и т.д.).

5. Перейдите во вкладку "Mappings" и выберите локальную папку проекта и удаленную папку на сервере (обычно используется папка `public_html` или `www`).

6. Сохраните конфигурацию и закройте окно.

7. Выберите `Tools` > `Deployment` > `Upload to <Ваша конфигурация>` для загрузки файлов на сервер.

8. Собранный проект теперь должен быть доступен по указанному вами пути на сервере;

### Развертывание по SSH

1. **Подключение к серверу:**

   ```bash
   ssh username@your_server_ip
   ```

   Замените `username` на имя пользователя, а `your_server_ip` на IP-адрес сервера. После чего с вас потребуют пароль.

2. **Переход в каталог, в который будет установлен проект:**

   ```bash
   cd /public_html/
   ```

3. **Передача собранного проекта на сервер:**

   Для передачи файлов используйте такие инструменты как `scp` или `rsync`. Пример с использованием `scp`:

   ```bash
   scp -r /dist/* username@your_server_ip:/public_html/
   ```

   Сначала указывается ваша локальная папка с билдом, данные о сервере, и непосредственно путь в который переносятся файлы.

4. **Проверка файлов на сервере:**

   Убедитесь, что все файлы и папки успешно переданы на сервер.

5. **Проверка доступности проекта:**

   Собранный проект теперь должен быть доступен по указанному вами пути на сервере;

### Потенциальные проблемы и их решения

**Неправильные пути в билде:**

Если при проверке успешности загруки билда на сервер, браузер показывает вам пустую страницу на сайте, в первую очередь откройте `index.html` в папке `dist` и проверьте что пути указаны через `./`

```
<link rel="stylesheet" href="./assets/index-681be12f.css">
```

Если пути указаные просто через `/`

```
<link rel="stylesheet" href="/assets/index-681be12f.css">
```

То у вас неправильно настроен конфиг vite. Откройте `vite.config.ts` и в `export default defineConfig` добавьте строчку `base: './'`. После чего снова сделайте билд.