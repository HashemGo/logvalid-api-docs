use std::io::Read;
use std::net::TcpStream;
use std::str;

fn main() -> std::io::Result<()> {
    let url = "https://api.logvalid.com/dnsmx?email=user@example.com&key=YOUR_API_KEY";
    let host = "api.logvalid.com";
    
    let request = format!(
        "POST /dnsmx?email=user@example.com&key=YOUR_API_KEY HTTP/1.1\r\n\
        Host: {}\r\n\
        Connection: close\r\n\
        Content-Length: 0\r\n\r\n",
        host
    );

    let mut stream = TcpStream::connect(format!("{}:443", host))?;
    stream.write_all(request.as_bytes())?;
    
    let mut response = String::new();
    stream.read_to_string(&mut response)?;
    
    println!("{}", response);
    Ok(())
}