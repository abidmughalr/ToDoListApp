//
//  ToDoViewModel.swift
//  ToDoListApp
//
//  Created by Abid Mughal on 7/4/24.
//

import Foundation

class ToDoViewModel: ObservableObject {
    @Published var items: [ToDoItem] = [
        ToDoItem(title: "Buy groceries", isCompleted: false),
        ToDoItem(title: "Walk the dog", isCompleted: false)
    ]
    
    func addItem(title: String) {
        let newItem = ToDoItem(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func toggleCompletion(of item: ToDoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isCompleted.toggle()
        }
    }
}

