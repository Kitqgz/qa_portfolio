# BUG-003

## Сортировка товаров не работает для пользователя error_user

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
2. Открыть страницу **Products**.
3. Нажать на выпадающий список сортировки.
4. Выбрать любой вариант сортировки, например **Name (Z to A)**.
5. Проверить порядок товаров.

---

## Actual Result

- Появляется всплывающее сообщение:

> Sorting is broken! This error has been reported to Backtrace.

- Товары не сортируются в соответствии с выбранным значением.

---

## Expected Result

- Товары должны быть отсортированы в соответствии с выбранным критерием.
- Сообщение об ошибке не должно отображаться.

---

## Reproducibility

- **100%**

---

## Additional Information

Дефект воспроизводится для всех доступных вариантов сортировки:

- **Name (A to Z)**
- **Name (Z to A)**
- **Price (Low to High)**
- **Price (High to Low)**

---

## Attachments

![Sorting error message](../Screenshots/BUG-003_Sorting_Not_Working.png)
