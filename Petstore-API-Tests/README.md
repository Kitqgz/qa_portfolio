## Test scenarios

### Positive tests

✅ Add new pet

Expected:
- Status code 200
- Pet created successfully


✅ Find pet by ID

Expected:
- Status code 200
- Correct pet data returned


✅ Update pet

Expected:
- Status code 200
- Pet information updated


### Negative tests

❌ Add pet with invalid data

Expected:
- Status code 400


❌ Get pet by deleted ID

Scenario:
- Delete existing pet with ID = 1
- Execute GET request using deleted ID

Request:
GET /pet/1

Expected:
- Status code 404
- Pet not found


## Postman Collection

Collection:
https://romanivna-2458641.postman.co/workspace/Romanovna's-Workspace~bd944989-c928-49be-88b1-521ed76c67b7/collection/56615782-53a6bfb0-f30f-4736-b4e0-1a64747eba3a?action=share&source=copy-link&creator=56615782
