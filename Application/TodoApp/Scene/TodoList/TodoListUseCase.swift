//
//  TodoListUseCase.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import TodoNetwork

final class TodoListUseCase: RVTUseCase<TodoListRepository> {
    public func getTodos() {
        repository.responseData.bind { [weak self] (response) in
            guard let self = self, let todoList = response as? TodoListResponse else { return }
            var todoListModel: TodoListModel = .init()
            todoListModel.todos = todoList.responseList.compactMap { TodoModel(title: $0.title, description: $0.description) }
            self.responseModel.value = todoListModel
        }
        repository.getTodos()
    }
}
