//
//  Schedule.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import Foundation
import SwiftUI

struct ScheduleModel: Identifiable, Hashable{
    var id: String
    var postID: String // ID for the post in Database
    var userID: String // ID for the user in Database
    var username: String // Username for user in Database
    var title: String
    var date: Date
    var numberOfPeople: Int
    var joinPeople: [String]
    var image: UIImage
    
    //func hash(into hasher: inout Hasher) {
      //  hasher.combine(id)
    //}
}
