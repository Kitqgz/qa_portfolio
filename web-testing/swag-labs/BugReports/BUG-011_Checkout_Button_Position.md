# BUG-011

## Кнопка Checkout отображается в некорректном месте на странице Your Cart для пользователя visual_user

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

---

## Test Data

- Username: `visual_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `visual_user`.
2. Добавить любой товар в корзину.
3. Перейти на страницу **Your Cart**.
4. Проверить расположение кнопки **Checkout**.

---

## Actual Result

- Кнопка **Checkout** отображается в правом верхнем углу страницы.
- Кнопка находится отдельно от блока управления корзиной.

---

## Expected Result

- Кнопка **Checkout** должна располагаться рядом с кнопкой **Continue Shopping** в нижней части страницы.
- Расположение элементов должно соответствовать дизайну интерфейса.

---

## Reproducibility

- **100%**

---

## Business Impact

Некорректное расположение элементов интерфейса ухудшает пользовательский опыт и нарушает визуальную целостность страницы.

---

## Attachments

![Checkout button position](../Screenshots/BUG-011_Checkout_Button_Position.png)
