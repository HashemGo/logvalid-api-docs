require 'httparty'

url = "https://api.logvalid.com/ai"
params = {
  email: "user@example.com",
  key: "YOUR_API_KEY"
}
response = HTTParty.post(url, query: params)
puts response.body