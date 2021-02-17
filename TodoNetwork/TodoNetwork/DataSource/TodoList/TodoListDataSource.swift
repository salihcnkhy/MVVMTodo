//
//  TodoListDataSource.swift
//  TodoNetwork
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import FireRovert

public final class TodoListDataSource: RVTDataSource<TodoListRequest, TodoListResponse> {
    
    public override func execute() {
        RVTFirestore<TodoResponse>().getAll(in: "Todos") { [weak self] wrapper in
            guard let self = self, wrapper.isSuccess else { return }
            if let list = wrapper.data as? [TodoResponse] {
                self.response.value = TodoListResponse(responseList: list )
            }
        }
    }
}

