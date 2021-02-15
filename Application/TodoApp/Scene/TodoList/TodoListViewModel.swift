//
//  TodoListViewModel.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert

final class TodoListViewModel: RVTViewModel<TodoListUseCase> {
    public func getTodos() {
        useCase.getTodos { response in
            print(response)
        }
    }
}
