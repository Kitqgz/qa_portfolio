# Test Data

## Valid credentials

| Username | Password |
|----------|----------|
| standard_user | secret_sauce |

## Invalid credentials

| Username | Password | Expected result |
|----------|----------|-----------------|
| invalid_user | secret_sauce | Error |
| standard_user | invalid_password | Error |
| invalid_user | invalid_password | Error |

## Empty fields

| Username | Password | Expected result |
|----------|----------|-----------------|
| Empty | secret_sauce | Error |
| standard_user | Empty | Error |
| Empty | Empty | Error |

## Additional data

- Username with spaces
- Password with spaces
- Uppercase username
- Uppercase password
- Special characters
- Cyrillic characters
