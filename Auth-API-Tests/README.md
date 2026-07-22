# Auth API Testing

## Overview

API testing project for authentication functionality.

## Tools

- Postman
- REST API
- JWT Authentication

## Covered scenarios

### Positive tests

✅ Login with valid credentials

Expected result:
- Status code 200
- Access token received
- Token saved in environment


### Negative tests

❌ Invalid password

Expected result:
- Status code 401


❌ Request without token

Expected result:
- Status code 401


## Postman Collection

Collection:
https://romanivna-2458641.postman.co/workspace/Romanovna's-Workspace~bd944989-c928-49be-88b1-521ed76c67b7/collection/56615782-dc5f9de3-1035-4ad5-aacd-22dcd4124119?action=share&source=copy-link&creator=56615782
