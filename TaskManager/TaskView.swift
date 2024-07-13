//
//  TaskView.swift
//  TaskManager
//
//  Created by Himanshu on 7/14/24.
//

import SwiftUI

struct TaskView: View {
    
    @Binding var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            
            TextField("New Task", text: $task.title)
                .textFieldStyle(.plain)
        }
    }
}

#Preview {
    TaskView(task: .constant(Task.example()))
        .padding()
}
