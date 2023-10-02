//
//  SearchViewController.swift
//  Github-Followers
//
//  Created by Олександр Федоренко on 30.09.2023.
//

import UIKit

class SearchViewController: UIViewController {

    let logoImageView = UIImageView()
    let searchUserTextField = AFTextField()
    let callToActionButton = AFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //white in light mode, black in dark mode
        view.backgroundColor = .systemBackground
        configuteLogoImageView()
        configureSearchUserTextField()
        configureCallToActionButton()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    private func configuteLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
        
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func configureSearchUserTextField() {
        view.addSubview(searchUserTextField)
        NSLayoutConstraint.activate([
            searchUserTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            searchUserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            searchUserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            searchUserTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        NSLayoutConstraint.activate([
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
