//
//  NavigationConfigurationViewController.swift
//  iOS13
//
//  Created by CitySpidey on 7/22/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import UIKit

class NavigationConfigurationViewController: UIViewController {
    var modalPresentation:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let navBarAppearnce = UINavigationBarAppearance()
        navBarAppearnce.configureWithOpaqueBackground()
        navBarAppearnce.backgroundColor = .red
        navBarAppearnce.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.yellow]
        navBarAppearnce.largeTitleTextAttributes = [.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.standardAppearance = navBarAppearnce
        self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearnce
    }
    
    @IBAction func btnCancelClick(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }

}

extension NavigationConfigurationViewController{
    /*static func getNCvc() -> NavigationConfigurationViewController{
        let storyboard = UIStoryboard(name: "NavigationConfigurationViewController", bundle: nil)
        guard let ncVC = storyboard.instantiateViewController(identifier: "NavigationConfigurationViewController") as? NavigationConfigurationViewController else {
            fatalError("Navigation Configuration not found in Storyboard")
        }
        return ncVC
    }*/
    
    static func sharedInstance() -> NavigationConfigurationViewController{
        return self.instantiateFromStoryboardHelper("NavigationConfigurationViewController")
    }
}
