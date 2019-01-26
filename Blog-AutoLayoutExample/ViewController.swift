//
//  ViewController.swift
//  Blog-AutoLayoutExample
//
//  Created by Bryan Lew on 26/1/19.
//  Copyright © 2019 Bryan Lew. All rights reserved.
//

/*
 Disclaimer!

 This is just a sample project showing basic auto layout anchors and constraints in Swift. This is by no means the best way to implement this particular UI, but it is a good starting point for newcomers to learn about auto layout and implementing views programatically.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(white: 1, alpha: 0.9)

        setupViews()
    }

    fileprivate func setupViews() {
        let topContainerView = UIView()
        topContainerView.backgroundColor = UIColor.init(white: 1, alpha: 0) // Invisible

        let loginTextField = UITextField()
        loginTextField.placeholder = "Username"
        loginTextField.backgroundColor = .white
        loginTextField.layer.borderWidth = 1
        loginTextField.layer.borderColor = UIColor.black.cgColor
        loginTextField.layer.cornerRadius = 5
        loginTextField.clipsToBounds = true

        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.black.cgColor
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.clipsToBounds = true

        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .black
        loginButton.layer.cornerRadius = 5
        loginButton.clipsToBounds = true

        view.addSubview(topContainerView)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)

        topContainerView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true // This ensures the space above the loginTextField is always 40% of the height of the whole view

        loginTextField.anchor(top: topContainerView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 28)
        loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true

        passwordTextField.anchor(top: loginTextField.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 28)
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true

        loginButton.anchor(top: passwordTextField.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 28)
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true

    }



}

