//
//  AddTaskView.swift
//  Panda
//
//  Created by Nursultan Duysenbaev on 23/07/23.
//


import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title).bold()
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
            TextField(
                "Enter your task here",
                text: $title
            )
                .textFieldStyle(.roundedBorder)
                .cornerRadius(15)

            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.606, saturation: 0.947, brightness: 0.298))
                    .cornerRadius(25)
                    .bold()
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.613, saturation: 0.378, brightness: 0.875))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
