import UIKit

// Dispatch Queue

// callbacks
enum Result<Value> {
    case value(Value)
    case error(Error)
    typealias Handler = (Result<Value>) -> Void
}



func callback<Value>(urlString: String, callback: @escaping Result<Value>.Handler) {
    guard let url = URL(string: urlString) else { return }
    URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let error = error {
            callback(.error(error))
        } else if let data = data {
            callback(.value(data))
        }
    }
    
}

// promises Promise is the receiver of the request

// futures Future 

// reactive
