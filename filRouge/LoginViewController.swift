//
//  ViewController.swift
//  filRouge
//
//  Created by Joris Thiery on 06/05/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var bottomContainerView: UIView!
    @IBOutlet var mailtextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    @IBOutlet var connectionButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {

        bottomContainerView.backgroundColor = .lightGray

        mailtextfield.placeholder = "... ton email"
        mailtextfield.keyboardType = .emailAddress
        mailtextfield.delegate = self
        mailtextfield.textColor = .black
        mailtextfield.borderStyle = .line

        passwordTextfield.placeholder = "... ton mot de passe"
        passwordTextfield.keyboardType = .emailAddress
        passwordTextfield.delegate = self
        passwordTextfield.textColor = .black
        passwordTextfield.borderStyle = .line

        connectionButton.setTitle("Se connnecter", for: .normal)
        connectionButton.setTitleColor(.white, for: .normal)
        connectionButton.backgroundColor = .blue
    }

    @IBAction func didTapConnection() {

        if let myTabbarController = storyboard?.instantiateViewController(identifier: "CustomTabBarController") as? CustomTabBarController {
            myTabbarController.modalPresentationStyle = .fullScreen
            present(myTabbarController, animated: true, completion: nil)
        }
    }

}

extension LoginViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        textField.resignFirstResponder()

        return true
    }
}

