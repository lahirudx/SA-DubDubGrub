//
//  DDGProfile.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-12.
//

import CloudKit

struct DDGProfile {
    
    static let kFirstName = "firstName"
    static let kLastName = "lastName"
    static let kAvatar = "avatar"
    static let kCompanyName = "companyName"
    static let kBio = "bio"
    static let kIsCheckedIn = "isCheckedIn"
    
    let ckRecordID: CKRecord.ID
    let firstName: String
    let lastName: String
    let avatar: CKAsset!
    let companyName: String
    let bio: String
    let isCheckedIn: CKRecord.Reference? = nil
    
    init(record: CKRecord) {
        ckRecordID = record.recordID
        firstName = record[Self.kFirstName] as? String ?? "N/A"
        lastName = record[Self.kLastName] as? String ?? "N/A"
        avatar = record[Self.kAvatar] as? CKAsset
        companyName = record[Self.kCompanyName] as? String ?? "N/A"
        bio = record[Self.kBio] as? String ?? "N/A"
    }
}
