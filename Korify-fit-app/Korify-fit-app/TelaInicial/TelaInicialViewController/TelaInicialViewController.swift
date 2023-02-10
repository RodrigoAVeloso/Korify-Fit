//
//  ViewController.swift
//  Korify-fit-app
//
//  Created by Rodrigo Assunção Veloso on 10/02/23.
//

import UIKit

class TelaInicialViewController: UIViewController {
    
    private lazy var mainView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        reloadViews()
    }

    func reloadViews(){
        self.view.addSubview(mainView)
        
        mainView.backgroundColor = .darkGray
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }

}

