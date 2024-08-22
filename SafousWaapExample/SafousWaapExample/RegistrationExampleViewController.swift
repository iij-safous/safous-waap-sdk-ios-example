//
//  RegistrationExampleViewController.swift
//  SafousWaapExample
//
//  Created by Dimas Syuhada on 15/08/24.
//

import UIKit
import SafousWaap

class RegistrationExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getRegisterDevice()
    }

}

extension RegistrationExampleViewController {
    func getRegisterDevice(){
        SafousWaap.shared.registerDevice(
            onSuccess: { response in
                print(response?.allHTTPHeaderFields ?? [:])
                self.getVerifyDevice()
            }, onError: { error in
                print(error)
            }
        )
    }
    
    func getVerifyDevice() {
        SafousWaap.shared.verifyDevice(
            onSuccess: { response in
                print(response)
            }, onError: { error in
                print(error)
            })
    }
}
