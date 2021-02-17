//
//  TodoListViewController.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert
import UIKit

final class TodoListViewController: RVTViewController<TodoListViewModel> {

    @IBOutlet private weak var todoTableView: UITableView!
    
    private var todoList: TodoListModel = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        bindViewModel()
        viewModel.getTodos()
    }
    
    override func setupViews() {
        title = "Your Todo's"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func bindViewModel() {
        viewModel.todoList.bind { [weak self] todoList in
            guard let self = self, let list = todoList else { return }
            self.todoList = list
            self.todoTableView.reloadData()
        }
    }
}

extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todoList.todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "TodoCell") as! TodoCell
        cell.setCell(model: todoList.todos[indexPath.row])
        return cell
    }
}
