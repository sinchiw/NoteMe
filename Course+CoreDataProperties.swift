//
//  Course+CoreDataProperties.swift
//  QuickNotes
//
//  Created by Wilmer sinchi on 11/26/18.
//  Copyright © 2018 Wilmer sinchi. All rights reserved.
//
//

import Foundation
import CoreData


extension Course {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Course> {
        return NSFetchRequest<Course>(entityName: "Course")
    }

    @NSManaged public var name: String?

}
