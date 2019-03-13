import UIKit

// Dispatch Queue

// callbacks
enum Result<Value> {
    case value(Value)
    case error(Error)
}

typealias Handler = (Result<Value> -> Void)

func callback(urlString: String, callback: @escaping Handler) {
    URLSession.shared.dataTask(with: "https://google.com") { (data, response, error) in
        if let error = error {
            
        }
    }
    
}

// promises

// futures

// reactive
