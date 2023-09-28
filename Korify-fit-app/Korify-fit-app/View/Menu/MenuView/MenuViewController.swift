//
//  MenuViewController.swift
//  Korify-fit-app
//
//  Created by Rodrigo Assunção Veloso on 25/09/23.
//

import UIKit

class MenuViewController: UIViewController {

    // MARK: - Components
    private lazy var colorView = UIColor(red: 41.0/255.0, green: 43.0/255.0, blue: 41.0/255.0, alpha: 0.8)
    
    private lazy var logoffButton: UIButton = {
        let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.backgroundColor = colorView
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(actionButtonLogoff), for: .touchUpInside)
        return button
    }()
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        configurationView()
    }
    
    func configurationView(){
        self.view.addSubview(logoffButton)
        logoffButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -83).isActive = true
        logoffButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        logoffButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        logoffButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    // MARK: - Action buttons
    
    @objc func actionButtonLogoff(){
        self.navigationController?.dismiss(animated: true)
    }
}
