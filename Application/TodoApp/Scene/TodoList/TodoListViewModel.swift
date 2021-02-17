//
//  TodoListViewModel.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert

final class TodoListViewModel: RVTViewModel<TodoListUseCase> {
    
    public var todoList: RVTBindable<TodoListModel> = .init()
    
    public func getTodos() {
        useCase.responseModel.bind { [weak self] model in
            guard let self = self, let todoList = model as? TodoListModel else { return }
            self.todoList.value = todoList
        }
        useCase.getTodos()
    }
}
