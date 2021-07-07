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
    @IBOutlet var fondEcran: UIView!
    @IBOutlet weak var jeanKevin: UIImageView!
    
    @IBOutlet weak var bulle: UIView!
   
    
    @IBOutlet weak var titre1: UILabel!
    @IBOutlet weak var titre2: UILabel!
    @IBOutlet weak var titre3: UILabel!
    
    
    var buttonGradient: CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = connectionButton.bounds
    
        gradient.colors = [UIColor.turquoise_blue.cgColor, UIColor.aquamarine.cgColor]
        return gradient
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        self.mailtextfield.delegate = self
        self.passwordTextfield.delegate = self
        
    }


    func setupView() {

        
        titre1.text = "Key Komen Ksé ?!"
        titre1.textAlignment = .center
      
       
        bulle.layer.cornerRadius = 20
        
       //contentMode= scaleaspectFill

        mailtextfield.placeholder = "... ton email"
        mailtextfield.keyboardType = .emailAddress
        mailtextfield.delegate = self
        mailtextfield.textColor = .black
        mailtextfield.borderStyle = .none
        mailtextfield.layer.cornerRadius = 25
        mailtextfield.clipsToBounds = true
        let someView = UIView(frame:CGRect(x: 0, y: 0, width: 40, height: 40))
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imageView.image = UIImage(named: "icoProfilDarkblue")
        someView.addSubview(imageView)
        mailtextfield.leftView = someView
        mailtextfield.leftViewMode = .always
       // mailtextfield.borderRect(forBounds: CGRect )

        passwordTextfield.placeholder = "... ton mot de passe"
        passwordTextfield.keyboardType = .emailAddress
        passwordTextfield.delegate = self
        passwordTextfield.textColor = .black
        passwordTextfield.borderStyle = .none
        passwordTextfield.layer.cornerRadius = 25
        passwordTextfield.clipsToBounds = true
        let someView2 = UIView(frame:CGRect(x: 0, y: 0, width: 40, height: 40))
        let imageView2 = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imageView2.image = UIImage(named: "icoPasswordDarkblue")
        someView2.addSubview(imageView2)
        passwordTextfield.leftView = someView2
        passwordTextfield.leftViewMode = .always

        connectionButton.setTitle("Se connnecter", for: .normal)
        connectionButton.setTitleColor(.white, for: .normal)
        connectionButton.layer.cornerRadius = 20
        
        bottomContainerView.layer.cornerRadius = 35
    }

    @IBAction func didTapConnection() {
        
        if let myTabbarController = storyboard?.instantiateViewController(identifier: "CustomTabBarController") as? CustomTabBarController {
            myTabbarController.modalPresentationStyle = .fullScreen
            present(myTabbarController, animated: true, completion: nil)
        }
    }
    
    @IBAction func textStopTaping(_ sender: Any) {
        titre2.text = ""
        titre3.text = ""
    }
    
    
    @IBAction func textDidChange(_ sender: Any) {
        titre2.text = "tap tap tap tap tap ..."
        titre3.text = ""
    }
    
    }
 




extension LoginViewController: UITextFieldDelegate {
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        textField.resignFirstResponder()
       

        return true
    }
    
    
    func checkValidity(textfield: CustomTextField){
        
        if textfield.text?.isEmpty ?? false {
            textfield.textColor = .middleBlue
            textfield.setRightIcon(image: nil)}
        else{
            if textfield.isValid(){
                textfield.textColor = .aquamarine
                textfield.setRightIcon(image:UIImage(named: "icoCheckGreen"))
                
            } else {
                textfield.textColor = .coral
                textfield.setRightIcon(image: UIImage(named: "icoCrossRed"))
              //  self.lblMessageFeedback.text = NSLocalizedString("errorLogin", comment: "")
            }
        
        
        
    }
}

}
