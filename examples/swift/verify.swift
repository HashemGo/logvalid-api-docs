import Foundation

let url = URL(string: "https://api.logvalid.com/verify?email=user@example.com&key=YOUR_API_KEY")!
var request = URLRequest(url: url)
request.httpMethod = "POST"

let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data {
        let responseString = String(data: data, encoding: .utf8)
        print(responseString ?? "No response")
    } else if let error = error {
        print("Error: \(error)")
    }
}
task.resume()

// Keep the program running to allow async task to complete
RunLoop.main.run(until: Date(timeIntervalSinceNow: 5))