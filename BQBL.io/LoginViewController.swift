//
//  LoginViewController.swift
//  
//
//  Created by Atharv Vaish on 8/2/15.
//
//

import UIKit

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var signInButton: GIDSignInButton!
    var name = ""
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(
            self, selector: "didLogin:", name: "google-login", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didLogin(notification: NSNotification) {
        let loginInfo = notification.userInfo as! [String: String]
        name = loginInfo["name"]!
        email = loginInfo["email"]!
        
        performSegueWithIdentifier("Register", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let registerController = segue.destinationViewController as! RegisterViewController
        
        registerController.setUserInfo(name, email: email)
    }
}
