//
//  TasksView.swift
//  Panda
//
//  Created by Nursultan Duysenbaev on 23/07/23.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack {
            Text("My tasks")
                .font(.title).bold().foregroundColor(.white)
                .padding(.horizontal)
                .padding(.top)
                .frame(maxWidth: .infinity, alignment: .center)
            
            if realmManager.tasks.count > 0 {
                List {
                    ForEach(realmManager.tasks, id: \.id) { task in
                        if !task.isInvalidated && !task.isFrozen {
                            TaskRow(task: task.title, completed: task.completed)
                                .onTapGesture {
                                    realmManager.updateTask(id: task.id, completed: !task.completed)
                                }
                        }
                    }
                    .onDelete { indexSet in
                        indexSet.forEach { index in
                            let taskTodelete = realmManager.tasks[index]
                            realmManager.deleteTask(id: taskTodelete.id)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .scrollContentBackground(.hidden)
            }
            
            Spacer()
        }
    }
}
