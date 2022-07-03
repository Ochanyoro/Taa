//
//  GlobalHelpers.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import Foundation
import SwiftUI

let userModel1 = UserModel(id: UUID().uuidString, userID: "1", username: "Ochan", follow: 1, createDate: Date(), image: UIImage(named: "top")!, userColor: Color.red)
let userModel2 = UserModel(id: UUID().uuidString, userID: "2", username: "Oc", follow: 1, createDate: Date(), image: UIImage(named: "backbround1")!, userColor: Color.blue)
let userModel3 = UserModel(id: UUID().uuidString, userID: "3", username: "haku", follow: 1, createDate: Date(), image: UIImage(named: "background2")!, userColor: Color.purple)

let day = Date()


func getDateString(value: Int) -> String {
        let date = Calendar.current.date(byAdding: .day, value: value, to:Date())!
        let formatter = DateFormatter()
        formatter.dateFormat = "M/d"
        let dateStr = formatter.string(from: date as Date)
    return dateStr
}


let exampleSchedule1 = ScheduleModel(
    id: UUID().uuidString,
    postID: "1",
    userID: "1",
    username: "Ochan",
    title: "食事",
    date: getDateString(value: 0),
    joinPeople: [userModel1,userModel2,userModel1,userModel3,userModel2],
    image: UIImage(named: "lunch")!,
    userImage: UIImage(named: "top")!
)

let exampleSchedule2 = ScheduleModel(
    id: UUID().uuidString,
    postID: "2",
    userID: "2",
    username: "Ochan",
    title: "デート",
    date: getDateString(value: 100),
    joinPeople:[userModel2,userModel2,userModel2,userModel3,userModel2],
    image: UIImage(named: "hangOut")!,
    userImage: UIImage(named: "background2")!
)

let exampleSchedule3 = ScheduleModel(
    id: UUID().uuidString,
    postID: "3",
    userID: "3",
    username: "Ochan",
    title: "映画",
    date: getDateString(value: 20),
    joinPeople: [userModel1,userModel2],
    image: UIImage(named: "doragon")!,
    userImage: UIImage(named: "backbround1")!
)
    
let exampleSchedule4 = ScheduleModel(
    id: UUID().uuidString,
    postID: "4",
    userID: "4",
    username: "Ochan",
    title: "食事",
    date: getDateString(value: 40),
    joinPeople: [userModel3,userModel2,userModel1,userModel3,userModel2],
    image: UIImage(named: "lunch")!,
    userImage: UIImage(named: "background2")!
)

let exampleSchedule5 = ScheduleModel(
    id: UUID().uuidString,
    postID: "5",
    userID: "5",
    username: "Ochan",
    title: "花火",
    date: getDateString(value: 70),
    joinPeople: [userModel1],
    image: UIImage(named: "fireworks")!,
    userImage: UIImage(named: "top")!
)


let exampleFavorite1 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "lunch")!,
    recommendRate: 5.0
)

let exampleFavorite2 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "backbround1")!,
    recommendRate: 5.0
)
let exampleFavorite3 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "background2")!,
    recommendRate: 5.0
)
let exampleFavorite4 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "hangOut")!,
    recommendRate: 5.0
)
let exampleFavorite5 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "fireworks")!,
    recommendRate: 5.0
)
let exampleFavorite6 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "lunch")!,
    recommendRate: 5.0
)
let exampleFavorite7 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "lunch")!,
    recommendRate: 5.0
)
let exampleFavorite8 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "fireworks")!,
    recommendRate: 5.0
)
let exampleFavorite9 = FavoriteModel(
    id: UUID().uuidString,
    userID: "1",
    username: "Kaho",
    createDate: Date(),
    image: UIImage(named: "top")!,
    recommendRate: 5.0
)


var exampleSchedules: [ScheduleModel] {
    return [exampleSchedule1,exampleSchedule2,exampleSchedule3,exampleSchedule4,exampleSchedule5,]
}

var exampleFavorites: [FavoriteModel] {
    return [exampleFavorite1,exampleFavorite2,exampleFavorite3,exampleFavorite4,exampleFavorite5,exampleFavorite6,exampleFavorite7,exampleFavorite8,exampleFavorite9]
}



