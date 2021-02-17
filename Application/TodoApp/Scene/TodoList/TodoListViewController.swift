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
        title = "Your Todo's"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupViews()
        bindViewModel()
        viewModel.getTodos()
       // createSpinnerView()
    }
    
    func createSpinnerView() {
        let child = SpinnerViewController()

        // add the spinner view controller
        addChild(child)
        child.view.frame = view.frame
        view.addSubview(child.view)
        child.didMove(toParent: self)

        // wait two seconds to simulate some work happening
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // then remove the spinner view controller
            child.willMove(toParent: nil)
            child.view.removeFromSuperview()
            child.removeFromParent()
        }
    }
    
    override func setupViews() {
        loadingView.frame = UIScreen.main.bounds
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
