//
//  Task.swift
//  Panda
//
//  Created by Nursultan Duysenbaev on 23/07/23.
//


import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId // This is our primary key, and each Task instance can be uniquely identified by the ID
    @Persisted var title = ""
    @Persisted var completed = false
}
