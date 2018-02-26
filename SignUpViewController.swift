//
//  SignUpViewController.swift
//  LoginPopup
//
//  Created by Chris Chang on 20/02/2018.
//  Copyright © 2018 Chris Chang. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var textfieldsCollection: [UITextField]!
    
    @IBOutlet weak var realName: UITextField! // as First Field that contain name in View
    @IBOutlet weak var userName: UITextField! //as Second Field that contain username in View
    @IBOutlet weak var emailAddr: UITextField! //as Third Field that contain email address in View
    @IBOutlet weak var password: UITextField! //as Fourth Field that contain password in View
    @IBOutlet weak var passwordConfirmation: UITextField! //as Fifth Field that contain password-confirm in View
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.textfieldsCollection.forEach { (textfld) in
            textfld.delegate = self
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signupTapped(_ sender: UIButton) {
        
        
        /*
            !!!ADD HERE YOUR SIGN UP CODE!!!
         
            WHEN USER TAPPED SIGN UP BUTTON, THIS METHOD
            WILL BE CALLED.
         
         */
        
        
        dismiss(animated: true)
        
    }
    
    // Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Hide keyboard when user touches return key on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        scrollView.setContentOffset(CGPoint(x: 0, y: 110), animated: true)
    }
    

}
