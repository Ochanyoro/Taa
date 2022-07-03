//
//  FavoriteModel.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/03.
//

import Foundation
import SwiftUI

struct FavoriteModel: Identifiable, Hashable{
    var id :String
    var userID: String // ID for the user in Database
    var username: String // Username for user in Database
    var category: Int?
    var createDate: Date
    var image: UIImage
    var recommendRate: Double

}
