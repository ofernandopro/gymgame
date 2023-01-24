//
//  User.swift
//  GymGame
//
//  Created by Fernando Moreira on 23/01/23.
//

import Foundation

struct User {
    
    let email: String
    let name: String
    let userImage: String
    let coverImage: String
    let dateOfAppJoining: Date
    let genre: Genre
    let height: Int
    let weight: Float
    let bodyInitialType: BodyType
    let level: Int
    let goalNumberOfTrainingDaysPerWeek: Int
    let numberXP: Int
    let numberWeeksOfOffensive: Int
    let numberOfMonthTitles: Int
    let numberOfWeekTitles: Int
    let groups: [Group]
    let registeredWorkoutDays: [Date]
    let registeredDietDays: [Date]
    let registeredSleepDays: [Date]

}
