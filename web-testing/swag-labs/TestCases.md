# Test Cases

## Проект

**Приложение:** Swag Labs

**URL:** https://www.saucedemo.com/

**Модуль:** Авторизация

**Тип тестирования:** Ручное тестирование

**Количество тест-кейсов:** 17

---

# TC-001

## Авторизация с валидными данными

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация успешно выполнена.
- Отображается страница товаров.
- Отображается список товаров.

---

# TC-002

## Авторизация заблокированного пользователя

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `locked_out_user`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `locked_out_user`.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Sorry, this user has been locked out.

---

# TC-003

## Авторизация пользователя с неверным логином

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `sdfsdf`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `sdfsdf`.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

- Страница товаров не отображается.

---

# TC-004

## Авторизация пользователя с неверным паролем

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: `123`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Ввести пароль `123`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

- Страница товаров не отображается.

---

# TC-005

## Авторизация пользователя с пустым полем Username

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: *(пусто)*
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Оставить поле **Username** пустым.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username is required.

---

# TC-006

## Авторизация пользователя с пустым полем Password

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: *(пусто)*

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Оставить поле **Password** пустым.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Password is required.

# TC-007

## Авторизация пользователя с пустыми полями Username и Password

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: *(пусто)*
- Password: *(пусто)*

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Оставить поле **Username** пустым.
3. Оставить поле **Password** пустым.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username is required.

---

# TC-008

## Авторизация пользователя с ведущим пробелом в Username

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: ` standard_user`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести в поле **Username** значение ` standard_user`.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

# TC-009

## Авторизация пользователя с ведущим пробелом в Password

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: ` secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Ввести в поле **Password** значение ` secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

# TC-010

## Авторизация пользователя с SQL-инъекцией

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `' OR 1=1 --`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести в поле **Username** значение `' OR 1=1 --`.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

# TC-011

## Авторизация пользователя со специальными символами вместо логина

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `#&%`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести в поле **Username** значение `#&%`.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

# TC-012

## Авторизация с валидными данными с использованием клавиши Enter

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Ввести пароль `secret_sauce`.
4. Нажать клавишу **Enter** на клавиатуре.

### Expected Result

- Авторизация успешно выполнена.
- Отображается страница товаров.
- Отображается список товаров.

---
# TC-013

## Повторная попытка авторизации с неверными учетными данными

**Priority:** High

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: `123`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Ввести пароль `123`.
4. Нажать кнопку **Login**.
5. Не изменяя введенные данные, повторно нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

- Пользователь остается на странице авторизации.

---

# TC-014

## Авторизация с логином длиной 256 символов

**Priority:** Medium

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: строка длиной 256 символов
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести в поле **Username** строку длиной 256 символов.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

# TC-015

## Авторизация с паролем длиной 256 символов

**Priority:** Medium

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: строка длиной 256 символов

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Ввести в поле **Password** строку длиной 256 символов.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

# TC-016

## Авторизация с использованием кириллицы в Username

**Priority:** Medium

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `пользователь`
- Password: `secret_sauce`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести в поле **Username** значение `пользователь`.
3. Ввести пароль `secret_sauce`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

# TC-017

## Авторизация с использованием кириллицы в Password

**Priority:** Medium

**Preconditions:**

- Страница авторизации открыта.

**Test Data:**

- Username: `standard_user`
- Password: `пароль`

### Steps

1. Зайти на сайт https://www.saucedemo.com/.
2. Ввести логин `standard_user`.
3. Ввести в поле **Password** значение `пароль`.
4. Нажать кнопку **Login**.

### Expected Result

- Авторизация не выполняется.
- Отображается сообщение:

> Epic sadface: Username and password do not match any user in this service.

---

