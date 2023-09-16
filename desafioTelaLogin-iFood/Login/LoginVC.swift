//
//  RegisterVC.swift
//  desafioTelaLogin-iFood
//
//  Created by Iphone on 15/09/23.
//

import UIKit

class LoginVC: UIViewController {

    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        // Do any additional setup after loading the view.
    }
    
}

extension LoginVC: LoginScreenProtocol {
    func actionCPFButton() {
        print("Protocolo VC CPF")
    }
    
    func actionEmailButton() {
        self.navigationController?.popViewController(animated: true)
        print("Protocolo VC EMAIL")
    }
    
    
}
