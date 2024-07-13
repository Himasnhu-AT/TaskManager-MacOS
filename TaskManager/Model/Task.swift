//
//  Task.swift
//  TaskManager
//
//  Created by Himanshu on 7/14/24.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Sample", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "only title"),
            Task(title: "completed only title", isCompleted: true),
            Task(title: "title, due date", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!)
        ]
    }
 }
