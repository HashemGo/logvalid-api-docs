const url = 'https://api.logvalid.com/dnsmx?email=user@example.com&key=YOUR_API_KEY';

fetch(url, {
  method: 'POST'
})
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error:', error));