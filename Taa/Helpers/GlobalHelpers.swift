//
//  GlobalHelpers.swift
//  Taa
//
//  Created by 大和田一裕 on 2022/07/01.
//

import Foundation
import SwiftUI

let exampleSchedule1 = ScheduleModel(
    id: UUID().uuidString,
    postID: "1",
    userID: "1",
    username: "Ochan",
    title: "食事",
    date: Date(),
    numberOfPeople: 10,
    joinPeople: ["top","top","top","top","top","top","top","top","top","top"],
    image: UIImage(named: "lunch")!
)

let exampleSchedule2 = ScheduleModel(
    id: UUID().uuidString,
    postID: "2",
    userID: "2",
    username: "Ochan",
    title: "デート",
    date: Date(),
    numberOfPeople: 8,
    joinPeople: ["backbround1","backbround1","backbround1","backbround1","backbround1","backbround1","backbround1","backbround1"],
    image: UIImage(named: "hangOut")!
)

let exampleSchedule3 = ScheduleModel(
    id: UUID().uuidString,
    postID: "3",
    userID: "3",
    username: "Ochan",
    title: "映画",
    date: Calendar.current.date(byAdding: .day, value: 6, to: Date())!,
    numberOfPeople: 5,
    joinPeople: ["background2","background2","background2","background2","background2"],
    image: UIImage(named: "doragon")!
)

let exampleSchedule4 = ScheduleModel(
    id: UUID().uuidString,
    postID: "4",
    userID: "4",
    username: "Ochan",
    title: "食事",
    date: Calendar.current.date(byAdding: .day, value: 8, to: Date())!,
    numberOfPeople: 7,
    joinPeople: ["top","top","top","top","top","top","top"],
    image: UIImage(named: "lunch")!
)

let exampleSchedule5 = ScheduleModel(
    id: UUID().uuidString,
    postID: "5",
    userID: "5",
    username: "Ochan",
    title: "花火",
    date: Calendar.current.date(byAdding: .day, value: 20, to: Date())!,
    numberOfPeople: 2,
    joinPeople: ["top","top"],
    image: UIImage(named: "fireworks")!
)



var exampleSchedules: [ScheduleModel] {
    return [exampleSchedule1,exampleSchedule2,exampleSchedule3,exampleSchedule4,exampleSchedule5,]
}
