# BUG-001

## About page returns 403 Forbidden

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

- Username: `standard_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `standard_user`.
2. Открыть боковое меню.
3. Нажать **About**.

---

## Actual Result

- Открывается страница с ошибкой **403 Forbidden**.
- Пользователь не может перейти на страницу **Sauce Labs**.

---

## Expected Result

- После нажатия **About** должна открыться официальная страница Sauce Labs.

---

## Attachments

- Screenshot of the 403 Forbidden page.
![403 Forbidden](../Screenshots/BUG-001_403_Forbidden.png)
