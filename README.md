# [LogValid API: Precision Email Verification](https://logvalid.com/)


**LogValid API** enables developers to verify emails with 99% accuracy, safeguarding newsletter campaigns and ensuring clean subscriber data. Integrate effortlessly to block spam and optimize engagement.

## Key Features
- **Newsletter Form Defense**: Protect signup forms with a lightweight JS snippet to stop spam instantly:
  ```html
  <script id="LogValid-Script" src="https://app.logvalid.com/Host/Setup-LogValid.js?v=1.27" webKey="YOUR_WEB_KEY" formKey="YOUR_PUBLIC_FORM_KEY"></script>
  ```
- **Real-Time Email Checks**: Validate subscriber emails instantly to maintain high deliverability.
- **Actionable Form Insights**: Monitor signups with daily analytics via LogValid’s dashboard.
- **Email Discovery Tool**: Find valid emails from websites or companies for newsletter growth.
- **AI Spam Blocking**: Filter out risky or temporary emails with intelligent detection.
- **Developer-Friendly Integration**: Use simple POST requests with code in 10+ languages.
- **Budget-Friendly Plans**: Start with 500 free credits; pay-as-you-go (0.1–4 credits/request).

## Use Cases
- **Block Newsletter Spam**: Stop fake signups to keep subscriber lists genuine.
- **Boost Email Campaign ROI**: Validate lists for better engagement and lower bounces.
- **Seamless User Registration**: Verify emails during signup for secure onboarding.
- **Expand Newsletter Reach**: Discover emails for targeted marketing with Email Finder.
- **Ensure Subscriber Data Quality**: Use Email Validator for accurate, active emails.
- **Optimize Signup Strategies**: Track form performance with daily analytics.

## API Endpoints
1. **/verify**: Full validation (format, delivery, AI, DNS/MX, registration).
2. **/format**: Check email syntax.
3. **/delivery**: Confirm deliverability.
4. **/dnsmx**: Verify DNS/MX records.
5. **/ai**: Flag suspicious emails.
6. **/register**: Complete registrations.

## Get Started
1. [Sign up](https://logvalid.com) for a free API key (500 credits).
2. Get your key from [Management](https://app.logvalid.com/Management).
3. Explore [API Documentation](docs/api.md).
4. Check code samples in [examples/](examples/) (Python, Rust, Kotlin, etc.).
5. Test on [Postman](https://www.postman.com/hashemdev/logvalid/collection/z1rhdij/logvalid-email-verification-api?action=share&creator=16638588) or [RapidAPI](https://rapidapi.com/hashemdev94-rrzDG4laatO/api/logvalid-next-gen-email-verification).

## Quick Start Example (JavaScript)
```javaScript

//Get your LogValid API key from the Management page
const url = 'https://api.logvalid.com/verify?email=user@example.com&key=YOUR_API_KEY';

fetch(url, {
  method: 'POST'
})
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error:', error));
```

## Pricing
- **Free**: 500 credits.
- **Pay-as-you-go**:
  - `/verify`: ~4 Credits
  - `/format`: 0.1 Credit
  - `/delivery`: 1 Credit
  - `/dnsmx`: 1 Credit
  - `/ai`: 2 Credits
  - `/register`: 0.1 Credit

## Resources
- [Documentation](docs/api.md)
- [Code Examples](examples/)
- [Postman Collection](https://www.postman.com/hashemdev/logvalid/collection/z1rhdij/logvalid-email-verification-api?action=share&creator=16638588)
- [Postman Docs](https://documenter.getpostman.com/view/16638588/2sB2j1hCqE)
- [RapidAPI](https://rapidapi.com/hashemdev94-rrzDG4laatO/api/logvalid-next-gen-email-verification)
- [Support](https://logvalid.com/contact)

Power your newsletters with LogValid API! [Sign up now](https://logvalid.com).
