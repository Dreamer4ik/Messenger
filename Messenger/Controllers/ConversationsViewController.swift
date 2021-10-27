//
//  ViewController.swift
//  Messenger
//
//  Created by Ivan Potapenko on 21.10.2021.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        validateAuth()
        
    }
    
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            
            present(nav, animated: false)
            
        }
    }
    
    
    
    
}

