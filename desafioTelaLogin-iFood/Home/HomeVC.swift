//
//  ViewController.swift
//  desafioTelaLogin-iFood
//
//  Created by Iphone on 14/09/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupItemBar()
        homeScreen?.delegate(delegate: self)
    }
    
    private func setupItemBar() {
        navigationItem.backButtonTitle = "Voltar"
        navigationController?.navigationBar.tintColor = UIColor.init(red: 138/255, green: 25/255, blue: 214/255, alpha: 1)
    }
}

extension HomeVC: HomeScreenProtocol {

    func actionLoginButton() {
        let vc: LoginVC = LoginVC()
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.medium()]
            sheet.prefersGrabberVisible = true
            self.present(vc, animated: true)
            
        }
    }
    
    func actionRegisterButton() {
        let vc: RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
