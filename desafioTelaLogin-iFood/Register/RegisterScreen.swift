//
//  RegisterScreen.swift
//  desafioTelaLogin-iFood
//
//  Created by Iphone on 15/09/23.
//

import UIKit

class RegisterScreen: UIView {

    func configBackground() {
        backgroundColor = .systemGray4.withAlphaComponent(2.5)
    }
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "nubank2")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .gray
        textField.placeholder = "Nome completo"
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 10
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        
        return textField
    }()
    
    lazy var cPFTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .gray
        textField.placeholder = "CPF"
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        
        return textField
    }()
    
    lazy var addressTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .gray
        textField.placeholder = "Endereço"
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        
        return textField
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .gray
        textField.placeholder = "Email"
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .gray
        textField.placeholder = "Senha"
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        
        return textField
    }()
    
    lazy var confirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .gray
        textField.placeholder = "Confirme a senha"
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        
        return textField
    }()
    
    lazy var continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17, weight: .semibold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red: 138/255, green: 25/255, blue: 214/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.borderWidth = 1.0
        button.layer.cornerRadius = 13
        button.addTarget(self, action: #selector(tappedContinueButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedContinueButton() {
        print(#function)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 100),
            logoImage.widthAnchor.constraint(equalToConstant: 100),
            
            nameTextField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 90),
            nameTextField.heightAnchor.constraint(equalToConstant: 45),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            cPFTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            cPFTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            cPFTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            cPFTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
            addressTextField.topAnchor.constraint(equalTo: cPFTextField.bottomAnchor, constant: 10),
            addressTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            addressTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            addressTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 10),
            emailTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
            confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            confirmPasswordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
            
            continueButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            continueButton.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            continueButton.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            continueButton.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            
        ])
    }
    
    func addElements() {
        addSubview(logoImage)
        addSubview(nameTextField)
        addSubview(cPFTextField)
        addSubview(addressTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(confirmPasswordTextField)
        addSubview(continueButton)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackground()
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
