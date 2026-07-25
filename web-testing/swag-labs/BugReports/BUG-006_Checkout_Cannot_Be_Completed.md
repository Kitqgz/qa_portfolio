# BUG-006

## Невозможно продолжить оформление заказа для пользователя performance_glitch_user

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

- Username: `performance_glitch_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `performance_glitch_user`.
2. Добавить любой товар в корзину.
3. Открыть корзину.
4. Нажать **Checkout**.
5. Заполнить поля:
   - First Name;
   - Last Name;
   - Postal Code.
6. Нажать кнопку **Continue**.

---

## Actual Result

- После нажатия кнопки **Continue** начинается длительная загрузка.
- Страница **Checkout: Overview** не открывается.
- Пользователь не может продолжить оформление заказа.

---

## Expected Result

- После нажатия кнопки **Continue** должна открыться страница **Checkout: Overview**.
- Пользователь должен иметь возможность перейти к следующему этапу оформления заказа.

---

## Reproducibility

- **100%**

---

## Business Impact

Пользователь не может завершить процесс оформления заказа, что полностью блокирует основной бизнес-сценарий приложения.

---

## Attachments

![Checkout does not continue](../Screenshots/BUG-006_Checkout_Cannot_Be_Completed.png)
