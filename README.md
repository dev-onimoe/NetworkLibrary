# NetworkLibrary

## Introduction
NetworkLibrary is a lightweight networking library for swift as it's name denotes, it processes http GET requests and return a response in form of a Data object. It is built on the traditional URLSession having no third party dependencies whatsoever.  NetworkLibrary only takes in a url and a completion handler for processing.

## Integration

NetworkLibrary supports Swift Package Manager, use the url:
```
https://github.com/dev-onimoe/NetworkLibrary.git
```

## Usage

```
        var query = url
        print(query)
        guard let url = URL(string: query) else {return}
        let session = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
            //Utility.hideProgressHUD()
            if let err = error {
                
                completion(nil, err.localizedDescription)
                
            }else {
                
                //
                
            }
        }).resume()
```
