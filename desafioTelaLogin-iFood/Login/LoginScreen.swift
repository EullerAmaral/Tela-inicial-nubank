//
//  RegisterScreen.swift
//  desafioTelaLogin-iFood
//
//  Created by Iphone on 15/09/23.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func actionCPFButton()
    func actionEmailButton()
}

class LoginScreen: UIView {

    weak var delegate: LoginScreenProtocol?
    func delegate(delegate: LoginScreenProtocol?) {
        self.delegate = delegate
    }
    
    func configBackground() {
        backgroundColor = .systemPurple
    }
    
    lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "nubank1")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var cPFButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar com CPF", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 13
        button.addTarget(self, action: #selector(tappedCPFButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedCPFButton() {
        print("Protocol CPF Success")
    }
    
    lazy var emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar com e-mail", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .white
        button.clipsToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 13
        button.addTarget(self, action: #selector(tappedEmailButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedEmailButton() {
        print("Protocol email Success")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            backgroundImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            backgroundImage.widthAnchor.constraint(equalToConstant: 100),
            backgroundImage.heightAnchor.constraint(equalToConstant: 100),
            
            cPFButton.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: 50),
            cPFButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            cPFButton.widthAnchor.constraint(equalToConstant: 180),
            cPFButton.heightAnchor.constraint(equalToConstant: 45),
            
            emailButton.topAnchor.constraint(equalTo: cPFButton.bottomAnchor, constant: 10),
            emailButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            emailButton.widthAnchor.constraint(equalTo: cPFButton.widthAnchor),
            emailButton.heightAnchor.constraint(equalTo: cPFButton.heightAnchor)
        
        
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackground()
        addSubview(backgroundImage)
        addSubview(emailButton)
        addSubview(cPFButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
