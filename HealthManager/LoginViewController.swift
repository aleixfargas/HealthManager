//
//  LoginViewController.swift
//  HealthManager
//
//  Created by Aleix on 23/3/16.
//  Copyright © 2016 Aleix Fargas. All rights reserved.
//

import Cocoa

class LoginViewController: NSViewController {
    
    @IBOutlet var LoginView: NSView!
    @IBOutlet weak var UserName: NSTextFieldCell!
    @IBOutlet weak var UserPwd: NSSecureTextFieldCell!
    @IBOutlet weak var UserType: NSComboBoxCell!
    @IBOutlet weak var SignIn: NSButtonCell!
    
    internal var NameValue: String!
    internal var PwdValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set background Layout
        self.view.wantsLayer = true
    }
    
    override func viewWillAppear() {
        //set the Background layout color
        LoginView.layer?.backgroundColor = NSColor.whiteColor().CGColor
        //LoginView.layer?.setNeedsDisplay()
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    @IBAction func onClickSignIn(sender: NSButtonCell) {
        NameValue = self.UserName.stringValue
        PwdValue = self.UserPwd.stringValue
        
        if self.checkLogin(NameValue, userPassword: PwdValue) {
            LoginView.removeFromSuperview()
        }
    }
    
    func checkLogin(userName: String, userPassword: String) -> Bool{

        return true
    }
}

