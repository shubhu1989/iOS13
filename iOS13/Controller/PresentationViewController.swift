//
//  PresentationViewController.swift
//  iOS13
//
//  Created by CitySpidey on 7/22/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import UIKit

class PresentationViewController: UIViewController {

    var modalPresentation:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if modalPresentation {
            self.isModalInPresentation = true
            self.navigationController?.presentationController?.delegate = self
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCancelClick(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}

extension PresentationViewController{
    /*static func getPVC()->PresentationViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let pVC = storyboard.instantiateViewController(identifier: "PresentationViewController") as? PresentationViewController else{
            fatalError("PresentationVC not found in Storyboard")
        }
        return pVC
    }*/
    
    static func sharedInstance() -> PresentationViewController{
        return self.instantiateFromStoryboardHelper("PresentationViewController")
    }
}

extension PresentationViewController: UIAdaptivePresentationControllerDelegate{
    func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
        let alertVC = UIAlertController(title: nil, message: "Are you sure?", preferredStyle: .actionSheet)
        let dismiss = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        let cancel = UIAlertAction(title: "Cancel", style: .default) { (action) in
            
        }
        alertVC.addAction(dismiss)
        alertVC.addAction(cancel)
        self.present(alertVC, animated: true, completion: nil)
    }
}

