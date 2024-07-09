//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Abid Mughal on 7/4/24.
//

import SwiftUI

struct MainContentView: View {
    @StateObject private var viewModel = ToDoViewModel()
    @State private var newItemTitle = ""

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.items) { item in
                        HStack {
                            Text(item.title)
                            Spacer()
                            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                                .onTapGesture {
                                    viewModel.toggleCompletion(of: item)
                                }
                        }
                    }
                }
                .navigationTitle("To-Do List")
                
                HStack {
                    TextField("New item", text: $newItemTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: {
                        guard !newItemTitle.isEmpty else { return }
                        viewModel.addItem(title: newItemTitle)
                        newItemTitle = ""
                    }) {
                        Image(systemName: "plus")
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
