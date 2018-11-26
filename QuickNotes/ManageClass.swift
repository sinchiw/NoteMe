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
    
    let colors = ["Green", "Blue", "Red", "Yellow"]
    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var className: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        className.setPadding()
//        colorPicker.dataSource = self
//        colorPicker.delegate = self
        pickerViewSetting()
        navbarSetting()
        //do something here
    }
    
    func navbarSetting(){
        let saveButton =  UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50))
        saveButton.setImage(UIImage.init(named:"save"), for: .normal)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: saveButton)
        
//        saveButton.addTarget(self, action: #selector(addButtonPressed(sender:)), for: .touchUpInside)
//        self.nav
        }
    
    func pickerViewSetting(){
        
        colorPicker.dataSource = self as? UIPickerViewDataSource
        colorPicker.delegate = (self as UIPickerViewDelegate)
        
        
    }
    
    
    
    
}

extension manageViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //this is what you do when the row is selected
    }
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
//    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
//        <#code#>
//    }
//
    
    
    
    
    
    
    
}



//customizing the textfield
//
//extension UITextField{
//    func setPadding(){
//        let paddlingView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)   )
//        self.leftView = paddlingView
//        self.leftViewMode = .always
//    }
//
//}
