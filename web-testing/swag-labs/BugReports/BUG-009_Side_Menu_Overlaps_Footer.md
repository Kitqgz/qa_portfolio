# BUG-009

## Боковое меню перекрывает иконки социальных сетей в нижней части страницы

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

- Пользователь авторизован в приложении.

---

## Test Data

- Username: `standard_user`
- Password: `secret_sauce`

---

## Steps to Reproduce

1. Авторизоваться под пользователем `standard_user`.
2. Открыть боковое меню, нажав кнопку **Open Menu**.
3. Прокрутить страницу вниз до футера.
4. Проверить отображение иконок социальных сетей.

---

## Actual Result

- Открытое боковое меню перекрывает иконки социальных сетей, расположенные в футере.
- Часть элементов становится недоступной для взаимодействия.

---

## Expected Result

- Боковое меню не должно перекрывать элементы футера.
- Иконки социальных сетей должны отображаться корректно и оставаться доступными либо быть полностью скрыты вместе с футером.

---

## Reproducibility

- **100%**

---

## Business Impact

Некорректное отображение интерфейса ухудшает пользовательский опыт и может ограничить доступ к навигационным элементам страницы.

---

## Attachments

![Side menu overlaps footer](../Screenshots/BUG-009_Side_Menu_Overlaps_Footer.png)
