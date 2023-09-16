//
//  CloudKitManager.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-13.
//

import CloudKit

struct CloudKitManger {
    static func getLocations(completed: @escaping (Result<[DDGLocation], Error>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer(identifier: "iCloud.com.lahirudx.DubDubGrub").publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            
            guard let records else { return }
            
            let locations = records.map { DDGLocation.init(record: $0) }
            
            completed(.success(locations))
        }
        
        
    }
}
