//
//  TodoListViewController.swift
//  TodoApp
//
//  Created by Salihcan Kahya on 15.02.2021.
//

import Rovert

class TodoListViewController: RVTViewController<TodoListViewModel> {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Your Todo's"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupViews()
        bindViewModel()
        viewModel.getTodos()
    }
    
    override func setupViews() {
        
    }
    
    override func bindViewModel() {
        
    }
    

}
