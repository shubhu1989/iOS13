//
//  ViewController.swift
//  iOS13
//
//  Created by CitySpidey on 7/22/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var custSegementCtrl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        custSegementCtrl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: self.view.tintColor ?? .white], for: .normal)
        custSegementCtrl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        custSegementCtrl.selectedSegmentTintColor = self.view.tintColor
        //custSegementCtrl.backgroundColor = .gray
        
        if #available(iOS 13.0, *) {
            let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            let statusBarFrame = window?.windowScene?.statusBarManager?.statusBarFrame

            let statusBarView = UIView(frame: statusBarFrame!)
            self.view.addSubview(statusBarView)
            statusBarView.backgroundColor = .green
        } else {
            //Below iOS13
            let statusBarFrame = UIApplication.shared.statusBarFrame
            let statusBarView = UIView(frame: statusBarFrame)
            self.view.addSubview(statusBarView)
            statusBarView.backgroundColor = .green
        }
    }
    
    @IBAction func simplePresentation(_ sender: UIButton) {
        let pVC = PresentationViewController.sharedInstance()
        pVC.modalPresentation = false
        let navVC = UINavigationController(rootViewController: pVC)
        self.present(navVC, animated: true, completion: nil)
    }
    
    @IBAction func fullSheetPresentation(_ sender: UIButton) {
        let pVC = PresentationViewController.sharedInstance()
        pVC.modalPresentation = true
        let navVC = UINavigationController(rootViewController: pVC)
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: true, completion: nil)
    }
    
    @IBAction func preventDismissPresentation(_ sender: UIButton) {
        let pVC = PresentationViewController.sharedInstance()
        pVC.modalPresentation = true
        let navVC = UINavigationController(rootViewController: pVC)
        self.present(navVC, animated: true, completion: nil)
    }
    
    @IBAction func sfSymbolClicked(_ sender: UIButton) {
        let sfVC = SFSymbolViewController.sharedInstance()
        sfVC.modalPresentation = true
        let navVC = UINavigationController(rootViewController: sfVC)
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: true, completion: nil)
    }
    
    @IBAction func navigationConfigaration(_ sender: UIButton) {
        let ncVC = NavigationConfigurationViewController.sharedInstance()
        ncVC.modalPresentation = false
        let navVC = UINavigationController(rootViewController: ncVC)
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: true, completion: nil)
    }
}

