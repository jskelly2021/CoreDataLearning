//
//  Job+CoreDataProperties.swift
//  CoreDataLearning
//
//  Created by Jacob Kelly on 8/31/24.
//
//

import Foundation
import CoreData


extension Job {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Job> {
        return NSFetchRequest<Job>(entityName: "Job")
    }

    @NSManaged public var deadline: Date?
    @NSManaged public var details: String?
    @NSManaged public var status: Bool
    @NSManaged public var title: String?

}

extension Job : Identifiable {

}
