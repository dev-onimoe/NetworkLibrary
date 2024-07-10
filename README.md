# NetworkLibrary

## Introduction
NetworkLibrary is a lightweight networking library for swift as it's name denotes, it processes http GET requests and return a response in form of a Data object. It is built on the traditional URLSession having no third party dependencies whatsoever.  NetworkLibrary only takes in a url and a completion handler for processing.

## Integration

NetworkLibrary supports Swift Package Manager, use the url:
```
https://github.com/dev-onimoe/NetworkLibrary.git
```

## Usage

Pass a url string and a completion handler into the makeCall() function like below

```
        let query = url + "a" + appendage
        
        NetworkLibrary.shared.makeCall(url: query, completion: {[weak self] data, errorString in
            
            if let resData = data {
                
                
            }else {
                print(errorString)
            }
        })
```
