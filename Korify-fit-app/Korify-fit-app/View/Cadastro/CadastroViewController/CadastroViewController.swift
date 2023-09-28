//
//  CadastroViewController.swift
//  Korify-fit-app
//
//  Created by Rodrigo Assunção Veloso on 12/06/23.
//

import UIKit

class CadastroViewController: UIViewController {
    
    // MARK: - Components
    
    let color = UIColor(red: 41.0/255.0, green: 43.0/255.0, blue: 41.0/255.0, alpha: 0.5)
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        return view
    }()
    
    private lazy var secondView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 41.0/255.0, green: 43.0/255.0, blue: 41.0/255.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        return view
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("REGISTER", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(red: 191.0/255.0, green: 247.0/255.0, blue: 87.0/255.0, alpha: 0.8)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(registerButtonAction), for: .touchUpInside)
        return button
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("BACK", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(red: 191.0/255.0, green: 247.0/255.0, blue: 87.0/255.0, alpha: 0.8)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(cancelButtonFunc), for: .touchUpInside)
        return button
    }()
    
    private lazy var emailLabel: UILabel = labelDefault(title: "Email", size: 14.0)
    
    private lazy var senhaLabel: UILabel = labelDefault(title: "Password", size: 14.0)
    
    private lazy var confirmaSernhaLabel: UILabel = labelDefault(title: "Confirm password", size: 14)
    
    private lazy var emailTF: UITextField = textFieldDefault(placeholder: "Adicione seu E-mail", typeTextEntry: false)
    
    private lazy var senhaTF: UITextField = textFieldDefault(placeholder: "Adicione a senha", typeTextEntry: true)
    
    private lazy var confirmaSenhaTF: UITextField = textFieldDefault(placeholder: "Confirme a senha", typeTextEntry: true)
    
    private func textFieldDefault(placeholder: String, typeTextEntry: Bool) -> TextField{
        let textField = TextField()
        textField.backgroundColor = .white
        textField.placeholder = placeholder
        textField.font = UIFont.italicSystemFont(ofSize: 12)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = typeTextEntry
        textField.layer.cornerRadius = 5
        return textField
    }
    
    private func labelDefault(title: String, size: CGFloat) -> UILabel{
        let label = UILabel()
        label.textColor = .white
        label.text = title
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: size)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        mainViewComponents()
    }
    
    func mainViewComponents(){
        self.view.addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        secondViewPosition()
    }
    
    func secondViewPosition(){
        mainView.addSubview(secondView)
        secondView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor,constant: -20).isActive = true
        secondView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        secondView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        secondView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        
        secondView.addSubview(emailLabel)
        emailLabel.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 30).isActive = true
        emailLabel.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 50).isActive = true
        
        secondView.addSubview(emailTF)
        emailTF.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 25).isActive = true
        emailTF.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10).isActive = true
        emailTF.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -30).isActive = true
        emailTF.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        secondView.addSubview(senhaLabel)
        senhaLabel.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 30).isActive = true
        senhaLabel.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 20).isActive = true
        
        secondView.addSubview(senhaTF)
        senhaTF.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 25).isActive = true
        senhaTF.topAnchor.constraint(equalTo: senhaLabel.bottomAnchor, constant: 10).isActive = true
        senhaTF.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -30).isActive = true
        senhaTF.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        secondView.addSubview(confirmaSernhaLabel)
        confirmaSernhaLabel.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 30).isActive = true
        confirmaSernhaLabel.topAnchor.constraint(equalTo: senhaTF.bottomAnchor, constant: 20).isActive = true
        
        secondView.addSubview(confirmaSenhaTF)
        confirmaSenhaTF.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 25).isActive = true
        confirmaSenhaTF.topAnchor.constraint(equalTo: confirmaSernhaLabel.bottomAnchor, constant: 10).isActive = true
        confirmaSenhaTF.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -30).isActive = true
        confirmaSenhaTF.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        secondView.addSubview(registerButton)
        registerButton.centerXAnchor.constraint(equalTo: secondView.centerXAnchor).isActive = true
        registerButton.topAnchor.constraint(equalTo: confirmaSenhaTF.bottomAnchor, constant: 20).isActive = true
        registerButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        secondView.addSubview(cancelButton)
        cancelButton.centerXAnchor.constraint(equalTo: secondView.centerXAnchor).isActive = true
        cancelButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 10).isActive = true
        cancelButton.bottomAnchor.constraint(equalTo: secondView.bottomAnchor,constant: -20).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    // MARK: - Getters and Setters
    
    func getEmailTF() -> UITextField{
        return self.emailTF
    }
    
    func getSenhaTF() -> UITextField{
        return self.senhaTF
    }
    
    func getConfirmaSenhaTF() -> UITextField {
        return confirmaSenhaTF
    }
    
    func clearFields(){
        self.emailTF.text = ""
        self.senhaTF.text = ""
        self.confirmaSenhaTF.text = ""
    }
}

class TextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
