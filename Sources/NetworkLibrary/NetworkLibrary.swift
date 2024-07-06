// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class NetworkLibrary {
    
    public static let shared = NetworkLibrary()
    
    public func makeCall(url: String, completion: @escaping (Data?, String?) -> Void) {
        
        var query = url
        print(query)
        guard let url = URL(string: query) else {return}
        let session = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
            //Utility.hideProgressHUD()
            if let err = error {
                
                completion(nil, err.localizedDescription)
                print(err.localizedDescription)
            }else {
                
                if let responseData = data {
        
                    completion(responseData, nil)
                   
                    
                }else {
                    completion(nil, "Unknown error")
                }
                
            }
        }).resume()
    }
    
}

public struct Response {
    
    var successful : Bool
    var message: String?
    var object : Any?
}
