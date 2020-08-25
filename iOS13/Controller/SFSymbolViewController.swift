//
//  SFSymbolViewController.swift
//  iOS13
//
//  Created by CitySpidey on 7/22/20.
//  Copyright © 2020 Shubham Bhadauria. All rights reserved.
//

import UIKit

class SFSymbolViewController: UIViewController {
    var modalPresentation:Bool = false
    
    var arrData = [String : [String : Any]]()
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    
    let strName = "trash.fill"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrData = [
            "1":[
                "img":img1!,
                "type":UIImage.SymbolWeight.ultraLight
            ],
            "2":[
                "img":img2!,
                "type":UIImage.SymbolWeight.thin
            ],
            "3":[
                "img":img3!,
                "type":UIImage.SymbolWeight.light
            ],
            "4":[
                "img":img4!,
                "type":UIImage.SymbolWeight.medium
            ],
            "5":[
                "img":img5!,
                "type":UIImage.SymbolWeight.bold
            ],
            "6":[
                "img":img6!,
                "type":UIImage.SymbolWeight.black
            ]
        ]
        
        for i in 0..<arrData.count{
            if let dict = arrData["\(i+1)"]{
                 self.setImageView(imgView: dict["img"] as! UIImageView, type: dict["type"] as! UIImage.SymbolWeight)
            }
        }
    }
    
    @IBAction func btnCancelClick(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    
    func setImageView(imgView:UIImageView,type:UIImage.SymbolWeight){
        let configuration = UIImage.SymbolConfiguration(weight: type)
        imgView.image = UIImage(systemName:strName, withConfiguration: configuration)
    }
}

extension SFSymbolViewController{
    static func sharedInstance() -> SFSymbolViewController{
        return self.instantiateFromStoryboardHelper("SFSymbolViewController")
    }
}
