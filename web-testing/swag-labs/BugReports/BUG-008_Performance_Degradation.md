# BUG-008

## Значительное снижение производительности интерфейса для пользователя performance_glitch_user

**Severity:** Major

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

- Username: `performance_glitch_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `performance_glitch_user`.
2. Последовательно выполнить несколько действий:
   - открыть карточку любого товара;
   - вернуться на страницу **Products**;
   - открыть корзину;
   - перейти обратно к списку товаров;
   - открыть боковое меню;
   - перейти к оформлению заказа.
3. Сравнить скорость работы приложения с пользователем `standard_user`.

---

## Actual Result

- Все страницы открываются значительно медленнее.
- Переходы между разделами сопровождаются длительной загрузкой.
- Скорость работы интерфейса существенно ниже по сравнению с пользователем `standard_user`.

---

## Expected Result

- Интерфейс должен работать стабильно и обеспечивать сопоставимое время загрузки страниц для всех пользователей.
- Переходы между страницами должны выполняться без заметных задержек.

---

## Reproducibility

- **100%**

---

## Business Impact

Низкая производительность ухудшает пользовательский опыт и значительно замедляет выполнение основных сценариев работы с приложением.

---

## Attachments

![Performance degradation](../Screenshots/BUG-008_Performance_Degradation.png)
