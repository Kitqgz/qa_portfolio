# BUG-004

## Кнопка Remove не удаляет товар из корзины для пользователя error_user

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
2. На странице **Products** добавить любой товар в корзину.
3. Убедиться, что кнопка **Add to cart** изменилась на **Remove**.
4. Нажать кнопку **Remove** на странице **Products**.
5. Открыть карточку этого же товара.
6. Нажать кнопку **Remove** на странице товара.
7. Открыть корзину и проверить наличие товара.

---

## Actual Result

- Кнопка **Remove** отображается на странице **Products**.
- После нажатия товар не удаляется из корзины.
- В карточке товара кнопка **Remove** также отображается, но не выполняет удаление.
- Товар продолжает находиться в корзине.

---

## Expected Result

- После нажатия кнопки **Remove** товар должен быть удален из корзины.
- Кнопка **Remove** должна измениться на **Add to cart**.
- Счетчик товаров на иконке корзины должен обновиться.

---

## Reproducibility

- **100%**

---

## Additional Information

Дефект воспроизводится в двух местах:

- на странице **Products**;
- на странице отдельного товара.

---

## Attachments

![Remove button does not work](../Screenshots/BUG-004_Remove_Button_Not_Working.png)
