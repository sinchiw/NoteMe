//
//  ViewController.swift
//  QuickNotes
//
//  Created by Wilmer sinchi on 11/2/18.
//  Copyright © 2018 Wilmer sinchi. All rights reserved.
//

import UIKit
import CoreData

struct classcell {
    let className : String!
    let schedule : String!
    let professorEmail : String!
    
    //
}

class ViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    var course = [Classes]()
//    var classArray = [String]()
    var managedObjectContext: NSManagedObjectContext? {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
    /////////////////////////////////////
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //rename a function that add the new class
        return
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        classArray = ["History"]
        navBarSetting()
        reszingButton()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return course.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClassCollectionViewCell", for: indexPath) as! ClassCellView
        //set the label
        //change the cell background color by cell.bakcground.color = UIcolor to whatever you want
       //this code below here is a pratice one to see your view or how the layout looksout
        cell.className.text = "History"
        cell.schedule.text = "MonTues 8:30pm - 9:30pm"
        //set the color of the class cell background
        
        let courseArray : Classes = course[indexPath.row]
    // putting in the name of the function which exist in the bottom
        //courseArray: courseArray is the parameter
//        cell.configureCell(courseArray:courseArray)
        
        //maybe set up the image logo for differnet class
//        if let imageData = imageData {
//            cell.myImageView.image = UIImage(data: imageData) }
        return cell
        
        }
    func navBarSetting(){
        
        self.navigationItem.title = "Courses"
        
        // write something her to change the color of the nav bar color
        
    }
        func reszingButton(){
        
        let addButton =  UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50))
        addButton.setImage(UIImage.init(named:"plus2"), for: .normal)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: addButton)
        
        addButton.addTarget(self, action: #selector(addButtonPressed(sender:)), for: .touchUpInside)
        
        
    }
    
  @objc func addButtonPressed(sender: UIBarButtonItem)
  {
        let manageViewController = self.storyboard?.instantiateViewController(withIdentifier: "manageViewController") as! manageViewController
        self.navigationController?.pushViewController(manageViewController, animated: true)
        
    }
    
    
    
    func retreiveData() {
        managedObjectContext?.perform {
            //write something here
//            //fecthing the notes from core data
//            self.fetchCourseDataFromCoreData{ (courseArray) in
////                if let courseArray =courseArray{
////                    self.cours
////                }
//                \
//            }
//            
        }
        
        
    }
    
    }


    

class ClassCellView : CollectionViewCell
{
    
    
    @IBOutlet weak var className: UILabel!
    
    @IBOutlet weak var schedule: UILabel!
    
}

