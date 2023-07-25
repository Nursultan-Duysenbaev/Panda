//
//  ContentView.swift
//  Panda
//
//  Created by Nursultan Duysenbaev on 23/07/23.
//


import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.613, saturation: 0.378, brightness: 0.875))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
