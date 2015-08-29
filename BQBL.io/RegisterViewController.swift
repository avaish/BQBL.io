//
//  RegisterViewController.swift
//  BQBL.io
//
//  Created by Atharv Vaish on 8/2/15.
//  Copyright © 2015 Atharv Vaish. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    var firstName = ""
    var lastName = ""
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        
        emailField.text = email
        firstNameField.text = firstName
        lastNameField.text = lastName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUserInfo(name: String, email: String) {
        self.email = email
        
        let fullName = split(name.characters, isSeparator: {$0 == " "}).map(String.init)
        firstName = fullName[0]
        lastName = fullName[1]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
