# LogValid API Documentation

LogValid API delivers precise email verification to safeguard your applications. This guide provides detailed information on endpoints, parameters, responses, and integration examples.

## Authentication
All endpoints require an API key, included as the `key` parameter in each request. [Sign up](https://logvalid.com) for a free account to get your key and 500 credits.

## Endpoints Overview
LogValid API includes six endpoints for flexible email validation:
- **/verify**: All-in-one check for format, deliverability, AI analysis, DNS/MX, and registration.
- **/format**: Validates email syntax and structure.
- **/delivery**: Checks if an email can receive messages.
- **/dnsmx**: Ensures valid DNS and MX records for the email domain.
- **/ai**: Uses AI to flag suspicious or temporary emails.
- **/register**: Confirms successful registration after validation.

## Endpoint Details

### 1. Verify Endpoint
Validates an email address through a complete set of checks.

**URL**: `https://api.logvalid.com/verify?email={Email}&key={Your(ApiKey)}`  
**Method**: POST  
**Cost**: ~4 Credits  
**Parameters**:  
- `email` (required): Email address (e.g., `user@example.com`).  
- `key` (required): Your API key.

**Example Request**:
```bash
curl -X POST "https://api.logvalid.com/verify?email=user@example.com&key=YOUR_API_KEY"
```

**Example Response**:
```json
{
  "input": "user@example.com",
  "report": {
    "info": {
      "isEmail": true,
      "email": "user@example.com",
      "clean": "user@example.com",
      "uname": "user",
      "provider": {
        "domain": "example.com",
        "type": "free"
      }
    },
    "delivery": "Deliverable"
  },
  "status": {
    "status": "Available",
    "setup": {
      "haveDns": true,
      "haveMX": true,
      "mxs": [{ "value": "mx.example.com" }]
    },
    "spamScore": [{ "label": "AI", "spam": 0.1, "safe": 0.9, "timer": "2025-04-28" }],
    "siteInfo": {
      "online": true,
      "link": "https://example.com",
      "title": "Example",
      "desc": ["Example website"],
      "favicon": "https://example.com/favicon.ico"
    }
  },
  "result": {
    "delivery": "Deliverable",
    "valid": true,
    "message": "Email is valid and deliverable"
  },
  "request": {
    "timer": "2025-04-28T10:00:00Z",
    "credit": 4.0,
    "success": true,
    "alert": ""
  }
}
```

**Error Response**:
```json
{
  "result": {
    "valid": false,
    "message": "Invalid email format"
  },
  "request": {
    "success": false,
    "alert": "Please provide a valid email address"
  }
}
```

### 2. Format Endpoint
Ensures the email adheres to international format standards.

**URL**: `https://api.logvalid.com/format?email={Email}&key={Your(ApiKey)}`  
**Method**: POST  
**Cost**: 0.1 Credit  
**Parameters**: As above.

**Example Request**:
```python
import requests
url = "https://api.logvalid.com/format"
params = {"email": "user@example.com", "key": "YOUR_API_KEY"}
response = requests.post(url, params=params)
print(response.json())
```

**Example Response**:
```json
{
  "info": {
    "isEmail": true,
    "email": "user@example.com",
    "clean": "user@example.com",
    "uname": "user",
    "provider": {
      "domain": "example.com",
      "type": "free"
    }
  },
  "credit": 0.1,
  "timer": "2025-04-28T10:00:00Z"
}
```

### 3. Delivery Endpoint
Verifies if the email can receive messages.

**URL**: `https://api.logvalid.com/delivery?email={Email}&key={Your(ApiKey)}`  
**Method**: POST  
**Cost**: 1 Credit  
**Parameters**: As above.

**Example Request**:
```javascript
const axios = require('axios');
const url = 'https://api.logvalid.com/delivery';
const params = { email: 'user@example.com', key: 'YOUR_API_KEY' };
axios.post(url, params)
  .then(response => console.log(response.data))
  .catch(error => console.error(error));
```

**Example Response**:
```json
{
  "report": {
    "info": {
      "isEmail": true,
      "email": "user@example.com",
      "clean": "user@example.com",
      "uname": "user",
      "provider": {
        "domain": "example.com",
        "type": "free"
      }
    },
    "delivery": "Deliverable"
  },
  "credit": 1.0,
  "timer": "2025-04-28T10:00:00Z"
}
```

### 4. DNS & MX Endpoint
Confirms the email domain has valid DNS and MX records.

**URL**: `https://api.logvalid.com/dnsmx?email={Email}&key={Your(ApiKey)}`  
**Method**: POST  
**Cost**: 1 Credit  
**Parameters**: As above.

**Example Request**:
```bash
curl -X POST "https://api.logvalid.com/dnsmx?email=user@example.com&key=YOUR_API_KEY"
```

**Example Response**:
```json
{
  "setup": {
    "haveDns": true,
    "haveMX": true,
    "mxs": [{ "value": "mx.example.com" }]
  },
  "credit": 1.0,
  "timer": "2025-04-28T10:00:00Z"
}
```

**Note**: This endpoint is optimized for validating emails associated with website domains.

### 5. AI Check Endpoint
Detects temporary or suspicious emails using AI-driven analysis.

**URL**: `https://api.logvalid.com/ai?email={Email}&key={Your(ApiKey)}`  
**Method**: POST  
**Cost**: 2 Credits  
**Parameters**: As above.

**Example Request**:
```python
import requests
url = "https://api.logvalid.com/ai"
params = {"email": "user@example.com", "key": "YOUR_API_KEY"}
response = requests.post(url, params=params)
print(response.json())
```

**Example Response**:
```json
{
  "status": {
    "status": "Available",
    "setup": {
      "haveDns": true,
      "haveMX": true,
      "mxs": [{ "value": "mx.example.com" }]
    },
    "spamScore": [{ "label": "AI", "spam": 0.1, "safe": 0.9, "timer": "2025-04-28" }],
    "siteInfo": {
      "online": true,
      "link": "https://example.com",
      "title": "Example",
      "desc": ["Example website"],
      "favicon": "https://example.com/favicon.ico"
    }
  },
  "credit": 2.0,
  "timer": "2025-04-28T10:00:00Z"
}
```

**Note**: This endpoint may have restrictions for emails from free providers (e.g., Gmail, Yahoo).

### 6. Register Endpoint
Confirms successful email registration after prior validation.

**URL**: `https://api.logvalid.com/register?email={Email}&key={Your(ApiKey)}`  
**Method**: POST  
**Cost**: 0.1 Credit  
**Parameters**: As above.  
**Note**: Requires a prior check (e.g., `/verify`).

**Example Request**:
```javascript
const axios = require('axios');
const url = 'https://api.logvalid.com/register';
const params = { email: 'user@example.com', key: 'YOUR_API_KEY' };
axios.post(url, params)
  .then(response => console.log(response.data))
  .catch(error => console.error(error));
```

**Example Response**:
```json
{
  "credit": 0.1,
  "timer": "2025-04-28T10:00:00Z",
  "success": true,
  "alert": ""
}
```

**Error Response**:
```json
{
  "credit": 0.1,
  "timer": "2025-04-28T10:00:00Z",
  "success": false,
  "allert": "Email not verified"
}
```

## Pricing
- **Free Tier**: 500 credits (no credit card required).
- **Pay-as-you-go**:
  - `/verify`: ~4 Credits
  - `/format`: 0.1 Credit
  - `/delivery`: 1 Credit
  - `/dnsmx`: 1 Credit
  - `/ai`: 2 Credits
  - `/register`: 0.1 Credit

## Code Examples
Find ready-to-use code samples in the [examples/](../examples/) directory, organized by programming language.

[Sign up for free](https://logvalid.com) | [Back to README](../README.md)
