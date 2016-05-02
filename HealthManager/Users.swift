//
//  Users.swift
//  HealthManager
//
//  Created by Aleix on 27/4/16.
//  Copyright © 2016 Aleix Fargas. All rights reserved.
//

import CoreData
import Foundation

class Users: NSManagedObject {
    @NSManaged var address: String?
    @NSManaged var email: String?
    @NSManaged var mobile: NSNumber?
    @NSManaged var name: String?
    @NSManaged var password: String?
    @NSManaged var surname: String?
    @NSManaged var telephone: NSNumber?
    @NSManaged var userName: String?
}