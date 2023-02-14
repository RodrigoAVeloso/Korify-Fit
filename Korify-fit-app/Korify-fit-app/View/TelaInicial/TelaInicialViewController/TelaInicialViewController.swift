//
//  ViewController.swift
//  Korify-fit-app
//
//  Created by Rodrigo Assunção Veloso on 10/02/23.
//

import UIKit

class TelaInicialViewController: UIViewController {
    
    // MARK: - Componentes
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Korify-Fit - WORKOUT PLANNER"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 2
        label.text = "VOLUME UP YOUR BODY GOALS"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var bannerImage: UIImageView = {
        let image = UIImageView(image: "Vegeta-academia")
        image.backgroundColor = .systemGray
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    private lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var botaoStart: UIButton = {
        let botao = UIButton()
        botao.setTitle("START BUILDING YOUR BODY", for: .normal)
        botao.layer.cornerRadius = 10
        botao.backgroundColor = .green
        botao.translatesAutoresizingMaskIntoConstraints = false
        return botao
    }()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "DONT HAVE ACCOUNT?"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var buttonRegister: UIButton = {
        let botao = UIButton()
        botao.setTitle("REGISTER", for: .normal)
        botao.titleLabel?.font = .systemFont(ofSize: 13, weight: .bold)
        botao.translatesAutoresizingMaskIntoConstraints = false
        
        return botao
    }()
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        reloadViews()
    }

    
    func reloadViews(){
        mainViewComponents()
        self.view.addSubview(mainView)
        
        mainView.backgroundColor = .darkGray
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
    
    func headerViewComponents(){
        headerView.addSubview(subTitleLabel)
        headerView.addSubview(titleLabel)
        
        subTitleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor, constant: 0).isActive = true
        subTitleLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 0).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor, constant: 0).isActive = true
        titleLabel.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 0).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 30).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -20).isActive = true
        
        titleLabel.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func mainViewComponents(){
        headerViewComponents()
        mainView.addSubview(headerView)
        mainView.addSubview(bannerImage)
        mainView.addSubview(botaoStart)
        mainView.addSubview(infoLabel)
        mainView.addSubview(buttonRegister)
        
        headerView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0).isActive = true
        headerView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0).isActive = true
        headerView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        bannerImage.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10).isActive = true
        bannerImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0).isActive = true
        bannerImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0).isActive = true
        bannerImage.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        botaoStart.topAnchor.constraint(equalTo: bannerImage.bottomAnchor, constant: 50).isActive = true
        botaoStart.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0).isActive = true
        botaoStart.widthAnchor.constraint(equalToConstant: 300).isActive = true
        botaoStart.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        infoLabel.topAnchor.constraint(equalTo: botaoStart.bottomAnchor, constant: 10).isActive = true
        infoLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: -50).isActive = true
        
        buttonRegister.leadingAnchor.constraint(equalTo: infoLabel.trailingAnchor, constant: 5).isActive = true
        buttonRegister.topAnchor.constraint(equalTo: botaoStart.bottomAnchor, constant: 2.5).isActive = true
    }

}

