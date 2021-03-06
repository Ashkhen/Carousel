//
//  CreateViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/14/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var createScrollView: UIScrollView!
    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var buttonParentInitial: CGFloat!
    var buttonParentOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameField.delegate = self
        lastNameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
        
        firstNameField.returnKeyType = .Next
        lastNameField.returnKeyType = .Next
        emailField.returnKeyType = .Next
        passwordField.returnKeyType = .Done
        
        createScrollView.delegate = self
        createScrollView.contentSize = createScrollView.frame.size
        createScrollView.contentInset.bottom = 60
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        buttonParentInitial = buttonParentView.frame.origin.y
        buttonParentOffset = -160
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        // Move the button up above keyboard
        buttonParentView.frame.origin.y = buttonParentInitial + buttonParentOffset
        // Scroll the scrollview up
        createScrollView.contentOffset.y = createScrollView.contentInset.bottom    }
    
    func keyboardWillHide(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttonParentInitial
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if createScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        switch textField {
        case firstNameField:
            lastNameField.becomeFirstResponder()
        case lastNameField:
            emailField.becomeFirstResponder()
        case emailField:
            passwordField.becomeFirstResponder()
        case passwordField:
            passwordField.endEditing(false)
        default:
            firstNameField.becomeFirstResponder()
        }
        return false
    }
    
    func validateFields() -> (String, String) {
        var prompt: String = ""
        var title: String = ""
        if firstNameField.text!.isEmpty {
            title = "First Name is Required!"
            prompt = "Please enter a first name"
        } else if lastNameField.text!.isEmpty {
            title = "Last Name is Required!"
            prompt = "Please enter a last name"
        } else if emailField.text!.isEmpty {
            title = "Email is Required!"
            prompt = "Please enter email"
        } else if passwordField.text!.isEmpty {
            title = "Password is Required!"
            prompt = "Please enter password"
        } else if !checkBoxButton.selected {
            title = "You must agree to terms"
            prompt = "Please check the box"
        }
        return (title, prompt)
    }

    @IBAction func onCreateButton(sender: AnyObject) {
        let (title, prompt) = validateFields()
        if !prompt.isEmpty {
           let alert = UIAlertController(title: title, message: prompt, preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    @IBAction func onBoxTap(sender: AnyObject) {
        checkBoxButton.selected = !checkBoxButton.selected
    }
    @IBAction func onBack(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
