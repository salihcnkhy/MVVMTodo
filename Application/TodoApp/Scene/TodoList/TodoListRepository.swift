//
//  TodoListRepository.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import TodoNetwork

final class TodoListRepository: RVTRepository {
        
    override func setup() {
        addSource(key: TodoListDataSource.self)
    }
    
    func getTodos() {
        executeSource(key: TodoListDataSource.self)
    }
}
