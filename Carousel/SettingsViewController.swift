//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Ashkhen Sargsyan on 2/11/16.
//  Copyright © 2016 Ashkhen Sargsyan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsImage: UIImageView!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = CGSize(width: 320, height: 750)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onX(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func onSignOut(sender: AnyObject) {
        let alertController = UIAlertController(title: nil, message: "Are you sure you want to log out?", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: {
            (UIAlertAction) -> Void in
        })
        
        alertController.addAction(cancelAction)
        
        let logoutAction = UIAlertAction(title: "Logout", style: .Destructive) {
            (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("signoutSegue", sender: nil)
        }
        
        alertController.addAction(logoutAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
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
