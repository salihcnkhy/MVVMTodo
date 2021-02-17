//
//  TodoCell.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 17.02.2021.
//

import UIKit

final class TodoCell: UITableViewCell {
    
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelDescription: UILabel!
    
    public func setCell(model: TodoModel) {
        labelTitle.text = model.title
        labelDescription.text = model.description
    }
}
