package main

import (
	"fmt"
	"io"
	"net/http"
)

func main() {
	url := "https://api.logvalid.com/verify?email=user@example.com&key=YOUR_API_KEY"
	req, _ := http.NewRequest("POST", url, nil)
	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		fmt.Println("Error:", err)
		return
	}
	defer resp.Body.Close()
	body, _ := io.ReadAll(resp.Body)
	fmt.Println(string(body))
}