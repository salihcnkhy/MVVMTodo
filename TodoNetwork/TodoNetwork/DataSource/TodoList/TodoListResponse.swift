//
//  TodoListResponse.swift
//  TodoNetwork
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import FireRovert

public struct TodoListResponse: RVTResponseProtocol, ResponseProtocol {
   public var responseList: [TodoResponse]
}
