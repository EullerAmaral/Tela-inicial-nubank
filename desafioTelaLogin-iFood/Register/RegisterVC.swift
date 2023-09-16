//
//  RegisterVC.swift
//  desafioTelaLogin-iFood
//
//  Created by Iphone on 15/09/23.
//

import UIKit

class RegisterVC: UIViewController {

    var registerScreen: RegisterScreen?
    var homeVC: HomeVC = HomeVC()
    
    override func loadView() {
        registerScreen = RegisterScreen()
        view = registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}
