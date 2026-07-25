# BUG-005

## После выполнения Reset App State состояние кнопок товаров не обновляется

**Severity:** Major

**Priority:** High

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

---

## Test Data

- Username: `error_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `error_user`.
2. Добавить любой товар в корзину.
3. Убедиться, что кнопка **Add to cart** изменилась на **Remove**.
4. Открыть боковое меню.
5. Нажать **Reset App State**.
6. Вернуться на страницу **Products**.
7. Проверить состояние кнопок товаров.
8. Открыть корзину.

---

## Actual Result

- Корзина очищается.
- На странице **Products** для ранее добавленных товаров продолжает отображаться кнопка **Remove**.
- Повторно добавить такие товары невозможно, хотя корзина уже пуста.
- Состояние каталога не соответствует фактическому состоянию корзины.

---

## Expected Result

- После выполнения **Reset App State** все товары должны перейти в исходное состояние.
- Кнопки **Remove** должны автоматически измениться на **Add to cart**.
- Состояние каталога должно соответствовать содержимому корзины.

---

## Reproducibility

- **100%**

---

## Additional Information

Дефект свидетельствует о рассинхронизации состояния пользовательского интерфейса и данных приложения после выполнения операции **Reset App State**.

---

## Attachments

![Reset App State UI not updated](../Screenshots/BUG-005_Reset_App_State_UI_Not_Updated.png)
