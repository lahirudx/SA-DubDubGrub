//
//  CKRecord+Ext.swift
//  DubDubGrub
//
//  Created by Lahiru Amarasooriya on 2023-09-13.
//

import CloudKit

extension CKRecord {
    func convertToDDGLocation() -> DDGLocation { DDGLocation(record: self) }
    func convertToDDGProfile() -> DDGProfile { DDGProfile(record: self) }
}
