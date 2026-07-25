# BUG-007

## Поле Last Name работает некорректно для пользователя problem_user

**Severity:** Critical

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

- Username: `problem_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `problem_user`.
2. Добавить любой товар в корзину.
3. Перейти в **Your Cart**.
4. Нажать **Checkout**.
5. Нажать на поле **Last Name**.
6. Ввести любое значение.

---

## Actual Result

- Текст вводится в поле **First Name** вместо **Last Name**.
- Поле **Last Name** остается пустым.
- Пользователь не может заполнить обязательное поле.

---

## Expected Result

- При вводе текста в поле **Last Name** данные должны отображаться именно в этом поле.
- Пользователь должен иметь возможность заполнить все обязательные поля формы.

---

## Reproducibility

- **100%**

---

## Business Impact

Пользователь не может корректно заполнить форму оформления заказа, что делает невозможным завершение покупки.

---

## Attachments

![Last Name field is not editable](../Screenshots/BUG-007_Last_Name_Field_Broken.png)
