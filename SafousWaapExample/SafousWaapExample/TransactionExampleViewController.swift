//
//  TransactionExampleViewController.swift
//  SafousWaapExample
//
//  Created by Dimas Syuhada on 31/05/24.
//

import UIKit
import SafousWaap

class TransactionExampleViewController: UIViewController {

    let simpleURL: String = "https://simple-web.example-waap.waap.safous.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getSimpleTransaction()
        getTerminate()
    }

}

extension TransactionExampleViewController {
    
    func getSimpleTransaction() {
        SafousWaap.shared.transaction { _ in
            if let url = URL(string: self.simpleURL) {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if let data = data {
                        print("data : \(data)")
                    } else if let response = response {
                        print("response : \(response)")
                    } else if let error = error {
                        print("error : \(error)")
                    }
                }.resume()
            }
            self.getTerminate()
        } onError: { error in
            print(error)
        }

    }
    
    func getTerminate() {
        SafousWaap.shared.terminate { response in
            print(response)
        } onError: { error in
            print(error)
        }

    }
}
