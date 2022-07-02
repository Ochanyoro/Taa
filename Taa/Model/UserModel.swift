//
//  UserModel.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//


import Foundation
import SwiftUI

struct UserModel: Identifiable, Hashable{
    
    var id = UUID()
    var userID: String // ID for the user in Database
    var username: String // Username for user in Database
    var follow: Int?
    var createDate: Date
    var image: UIImage

}

