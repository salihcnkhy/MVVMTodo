//
//  TodoResponse.swift
//  TodoNetwork
//
//  Created by Salihcan Kahya on 17.02.2021.
//

import Rovert
import FireRovert

public struct TodoResponse: RVTResponseProtocol, ResponseProtocol {
   public var title: String
   public var description: String
}
