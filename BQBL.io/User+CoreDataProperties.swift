//
//  User+CoreDataProperties.swift
//  BQBL.io
//
//  Created by Atharv Vaish on 7/18/15.
//  Copyright © 2015 Atharv Vaish. All rights reserved.
//
//  Delete this file and regenerate it using "Create NSManagedObject Subclass…"
//  to keep your implementation up to date with your model.
//

import Foundation
import CoreData

extension User {

    @NSManaged var email: String?
    @NSManaged var name: String?
    @NSManaged var friends: NSSet?
    @NSManaged var games: NSSet?
    @NSManaged var teams: NSSet?

}
