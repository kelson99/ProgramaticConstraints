//
//  MainPageLogin.swift
//  PracticeProgramaticConstraints
//
//  Created by Kelson Hartle on 1/16/21.
//

import UIKit

class SignInPage : UIControl, UITextFieldDelegate {
    
    private let labelFont = UIFont.systemFont(ofSize: 30.0, weight: .bold)
    
    private let logoImageView: UIImageView = UIImageView()
    private let titleLabel = UILabel()
    private let emailTextFieldLabel = UILabel()
    private let passwordTextFieldLabel = UILabel()
    private let loginButton = UIButton()
    private let emailTextFieldContainer = UIView()
    private let emailTextField = UITextField()
    private let passwordTextField = UITextField()
    private let passwordTextFieldContainer = UIView()
    
    private let dontHaveAccountLabel = UILabel()
    private let signUpButton = UIButton()
    
    private let textFieldBorderColor = UIColor(hue: 208/360.0, saturation: 80/100.0, brightness: 94/100.0, alpha: 1)
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpSubViews()
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func setUpSubViews() {
        //skull image view
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "Skull")
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.clipsToBounds = true
//        logoImageView.backgroundColor = .green
        
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        // title label
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = labelFont
        titleLabel.attributedText = "Login".underLined
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50),
            //titleLabel.leadingAnchor.constraint(equalTo: logoImageView.leadingAnchor),
            //titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        addSubview(emailTextFieldLabel)
        emailTextFieldLabel.text = "E-Mail"
        emailTextFieldLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextFieldLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            emailTextFieldLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            emailTextFieldLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20)
        ])
        
        addSubview(emailTextFieldContainer)
        emailTextFieldContainer.layer.borderWidth = 2
        emailTextFieldContainer.layer.borderColor = textFieldBorderColor.cgColor
        emailTextFieldContainer.layer.cornerRadius = 5
        emailTextFieldContainer.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            emailTextFieldContainer.leadingAnchor.constraint(equalTo: emailTextFieldLabel.leadingAnchor),
            emailTextFieldContainer.topAnchor.constraint(equalToSystemSpacingBelow: emailTextFieldLabel.bottomAnchor, multiplier: 1.0),
            emailTextFieldContainer.trailingAnchor.constraint(equalTo: emailTextFieldLabel.trailingAnchor, constant: -16),
            emailTextFieldContainer.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        emailTextFieldContainer.addSubview(emailTextField)
        emailTextField.placeholder = "you@example.com"
        emailTextField.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            emailTextField.leadingAnchor.constraint(equalTo: emailTextFieldContainer.leadingAnchor, constant: 8),
            emailTextField.trailingAnchor.constraint(equalTo: emailTextFieldContainer.trailingAnchor, constant: -8),
            emailTextField.topAnchor.constraint(equalTo: emailTextFieldContainer.topAnchor, constant: 8),
            emailTextField.bottomAnchor.constraint(equalTo: emailTextFieldContainer.bottomAnchor, constant: -8)
        ])
        
        addSubview(passwordTextFieldLabel)
        passwordTextFieldLabel.text = "Password"
        passwordTextFieldLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTextFieldLabel.leadingAnchor.constraint(equalTo: emailTextFieldContainer.leadingAnchor),
            passwordTextFieldLabel.trailingAnchor.constraint(equalTo: emailTextFieldContainer.trailingAnchor),
            //passwordTextFieldLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30),
            passwordTextFieldLabel.topAnchor.constraint(equalTo: emailTextFieldContainer.bottomAnchor, constant: 20)
        ])
        
        addSubview(passwordTextFieldContainer)
        passwordTextFieldContainer.layer.borderWidth = 2
        passwordTextFieldContainer.layer.borderColor = textFieldBorderColor.cgColor
        passwordTextFieldContainer.layer.cornerRadius = 5
        passwordTextFieldContainer.translatesAutoresizingMaskIntoConstraints = false
//        emailTextFieldContainer.backgroundColor = .green

        NSLayoutConstraint.activate([
            passwordTextFieldContainer.leadingAnchor.constraint(equalTo: passwordTextFieldLabel.leadingAnchor),
            passwordTextFieldContainer.topAnchor.constraint(equalToSystemSpacingBelow: passwordTextFieldLabel.bottomAnchor, multiplier: 1.0),
            passwordTextFieldContainer.trailingAnchor.constraint(equalTo: passwordTextFieldLabel.trailingAnchor),
            passwordTextFieldContainer.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        passwordTextFieldContainer.addSubview(passwordTextField)
        passwordTextField.placeholder = "your password here"
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            passwordTextField.leadingAnchor.constraint(equalTo: passwordTextFieldContainer.leadingAnchor, constant: 8),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordTextFieldContainer.trailingAnchor, constant: -8),
            passwordTextField.topAnchor.constraint(equalTo: passwordTextFieldContainer.topAnchor, constant: 8),
            passwordTextField.bottomAnchor.constraint(equalTo: passwordTextFieldContainer.bottomAnchor, constant: -8)
        ])

        
        
        
    }
}


extension String {
    var underLined: NSAttributedString {
            NSMutableAttributedString(string: self, attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
        }
}
