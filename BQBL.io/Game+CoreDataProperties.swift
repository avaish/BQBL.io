//
//  Game+CoreDataProperties.swift
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

extension Game {

    @NSManaged var date: NSTimeInterval
    @NSManaged var creator: User?
    @NSManaged var sport: Sport?
    @NSManaged var teams: NSSet?

}
