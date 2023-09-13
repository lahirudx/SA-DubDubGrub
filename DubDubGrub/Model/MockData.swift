//
//  MockData.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-12.
//

import CloudKit

struct MockData {
    static var location: CKRecord {
        let record = CKRecord(recordType: RecordType.location)
        
        record[DDGLocation.kName] = "Lahiru's Bar and Grill"
        record[DDGLocation.kAddress] = "124 Main street"
        record[DDGLocation.kDescription] = "This is a test description. isn't it awesome. Not sure how long to make it to test the 3 lines"
        record[DDGLocation.kWebsiteURL] = "https://lahirudx.com"
        record[DDGLocation.kLocation] = CLLocation(latitude: 37.331516, longitude: -121.891054)
        record[DDGLocation.kPhoneNumber] = "+94715193290"
        
        return record
    }
}
