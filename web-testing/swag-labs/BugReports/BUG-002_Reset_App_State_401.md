# BUG-002

## Reset App State возвращает 401 Unauthorized при активной авторизованной сессии

**Severity:** Minor

**Priority:** Medium

**Status:** Open

---

## Environment

- Application: Swag Labs
- URL: https://www.saucedemo.com/
- Browser: Google Chrome
- OS: Windows 11

---

## Preconditions

- Открыта страница авторизации.
- Открыты инструменты разработчика браузера.
- В DevTools выбрана вкладка **Network**.

---

## Test Data

- Username: `standard_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `standard_user`.
2. Добавить любой товар в корзину.
3. Открыть боковое меню.
4. Нажать **Reset App State**.
5. Перейти во вкладку **Network** в DevTools.
6. Найти запрос, отправленный после выполнения **Reset App State**.
7. Проверить HTTP-статус запроса.

---

## Actual Result

- После нажатия **Reset App State** товары удаляются из корзины.
- Запрос, связанный со сбросом состояния приложения, возвращает HTTP-статус **401 Unauthorized**.
- Ошибка возникает при активной авторизованной сессии пользователя.

---

## Expected Result

- Операция **Reset App State** должна выполняться без ошибок авторизации.
- Сервер не должен возвращать HTTP-статус **401 Unauthorized** для авторизованного пользователя.
- Запрос должен завершаться с успешным HTTP-статусом.

---

## Additional Information

- Основная функция сброса состояния приложения выполняется успешно.
- Ошибка обнаруживается во вкладке **Network** браузера и не блокирует пользователя.
- Для уточнения причины необходимо проверить отправляемые заголовки авторизации и ответ сервера.

---

## Attachments

![Reset App State 401 Unauthorized](../Screenshots/BUG-002_Reset_App_State_401.png)
