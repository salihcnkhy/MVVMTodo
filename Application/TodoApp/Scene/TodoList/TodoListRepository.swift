//
//  TodoListRepository.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import TodoNetwork

final class TodoListRepository: RVTRepository {
    
    
    func getTodos(completion: @escaping (TodoListResponse) -> Void ) {
        viewControllerShared.state.value = .loading
        TodoListDataSource().getTodoList()
    }
}
