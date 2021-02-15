//
//  TodoListUseCase.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import TodoNetwork

final class TodoListUseCase: RVTUseCase<TodoListRepository> {
    public func getTodos(completion: @escaping (TodoListResponse) -> Void ) {
        repository.getTodos { response in
            completion(response)
        }
    }
}
