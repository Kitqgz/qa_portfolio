# BUG-012

## Кнопка Add to Cart выходит за границы карточки товара для пользователя visual_user

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
2. Открыть страницу **Products**.
3. Проверить отображение карточек товаров.
4. Обратить внимание на расположение кнопок **Add to Cart**.

---

## Actual Result

- Кнопка **Add to Cart** выходит за пределы карточки товара.
- Нарушается выравнивание элементов интерфейса.
- Внешний вид страницы отличается от ожидаемого.

---

## Expected Result

- Кнопка **Add to Cart** должна полностью находиться в пределах карточки товара.
- Все элементы карточки должны быть корректно выровнены в соответствии с дизайном приложения.

---

## Reproducibility

- **100%**

---

## Business Impact

Некорректное отображение элементов интерфейса ухудшает пользовательский опыт, снижает визуальное качество приложения и может создавать впечатление нестабильной работы продукта.

---

## Attachments

![Add to Cart button out of bounds](../Screenshots/BUG-012_Add_To_Cart_Button_Out_Of_Bounds.png)
