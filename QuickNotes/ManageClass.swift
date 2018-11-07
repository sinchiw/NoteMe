//
//  ManageClass.swift
//  QuickNotes
//
//  Created by Wilmer sinchi on 11/6/18.
//  Copyright © 2018 Wilmer sinchi. All rights reserved.
//

import Foundation
import UIKit

struct classes {
    let className : String
//    let schedule : Int
    //figure this out later on
    let profEmail : String
    let tagColor : String
    
}

class manageViewController : UIViewController{
    
    @IBOutlet weak var className: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        className.setPadding()
        
        //do something here
    }
    
    
    
    
    
}
//customizing the textfield

extension UITextField{
    func setPadding(){
        let paddlingView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)   )
        self.leftView = paddlingView
        self.leftViewMode = .always
    }
    
}
