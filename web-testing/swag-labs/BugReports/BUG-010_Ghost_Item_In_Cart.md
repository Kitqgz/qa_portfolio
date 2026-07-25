# BUG-010

## На иконке корзины отображается товар, отсутствующий в корзине, для пользователя performance_glitch_user

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

- Username: `performance_glitch_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `performance_glitch_user`.
2. После загрузки страницы **Products** обратить внимание на значок корзины.
3. Открыть страницу **Your Cart**.

---

## Actual Result

- На иконке корзины отображается бейдж с количеством **1**.
- При открытии страницы **Your Cart** корзина оказывается пустой.
- Удалить отображаемый товар невозможно, поскольку фактически он отсутствует.

---

## Expected Result

- Количество товаров на иконке корзины должно соответствовать фактическому содержимому корзины.
- Если корзина пуста, бейдж с количеством товаров не должен отображаться.

---

## Reproducibility

- **100%**

---

## Business Impact

Пользователь получает недостоверную информацию о содержимом корзины, что может привести к путанице и снижению доверия к приложению.

---

## Additional Information

Дефект свидетельствует о рассинхронизации состояния пользовательского интерфейса и данных приложения.

---

## Attachments

![Ghost item in cart](../Screenshots/BUG-010_Ghost_Item_In_Cart.png)
