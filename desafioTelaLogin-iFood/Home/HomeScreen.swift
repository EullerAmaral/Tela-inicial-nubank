//
//  HomeScreen.swift
//  desafioTelaLogin-iFood
//
//  Created by Iphone on 14/09/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func actionLoginButton()
    func actionRegisterButton()
}

class HomeScreen: UIView {
    
    var homeVC = HomeVC()
    
    weak var delegate: HomeScreenProtocol?
    func delegate(delegate: HomeScreenProtocol?) {
        self.delegate = delegate
    }

    func configBackground() {
        backgroundColor = .init(red: 138/255, green: 25/255, blue: 214/255, alpha: 1)
    }
    
    lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "nubank1")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 13
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLoginButton() {
        self.delegate?.actionLoginButton()
        print(#function)
    }
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Abrir conta", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 13
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedRegisterButton() {
        self.delegate?.actionRegisterButton()
        print(#function)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.widthAnchor.constraint(equalToConstant: 115),
            backgroundImage.heightAnchor.constraint(equalToConstant: 115),
            backgroundImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            backgroundImage.centerXAnchor.constraint(equalTo: centerXAnchor),

            loginButton.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: 90),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 45),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            registerButton.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: loginButton.heightAnchor)

        ])
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackground()
        addSubview(backgroundImage)
        addSubview(loginButton)
        addSubview(registerButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
