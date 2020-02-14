//
//  ViewController.swift
//  TheEconomicsProject
//
//  Created by Valley on 01/12/19.
//  Copyright © 2019 Valley. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

// Universal Variables
var level = 1

extension UIViewController {
    
    func HideKeyboard() {
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
}

class ViewController: UIViewController, GIDSignInDelegate {
    
    @IBOutlet weak var signInButton: GIDSignInButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Google SignIn
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
        GIDSignIn.sharedInstance().delegate = self
        
        // Background Info
        let uiImage = UIImage(named: "back")
        let backgroundColor = UIColor(patternImage: uiImage!)
        self.view.backgroundColor = backgroundColor
        
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {

        return GIDSignIn.sharedInstance()?.handle(url) ?? false
    }

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
      // ...
      if let error = error {
        // ...
        return
      }

      guard let authentication = user.authentication else { return }
      let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)

        Auth.auth().signIn(with: credential) { (authResult, error) in
          if let error = error {

            print("Error: ", error)
            return
          }
          // User is signed in
            print("USER SIGNED IN!!")
            self.performSegue(withIdentifier: "loginToMap", sender: self)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}
