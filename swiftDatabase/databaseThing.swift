//
//  databaseThing.swift
//  swiftDatabase
//
//  Created by amrit on 12/12/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit
import CoreData

class databaseThing: NSManagedObject {
    
    @NSManaged var firstName:String
    @NSManaged var lastName:String
    @NSManaged var collegeName:String
    
}
