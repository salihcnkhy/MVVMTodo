//
//  TodoListDataSource.swift
//  TodoNetwork
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import FireRovert

public final class TodoListDataSource: RVTDataSource<TodoListRequest, TodoListResponse> {
        
    public func getTodoList() {
        RVTFirestore<TodoListResponse>().getDocument(in: "Todos", named: "DWlDVMV78TTq6APnnRMs") { response in
            print(response)
        }
    }
}

