//
//  ToDoDetailTableViewController.swift
//  againtodo
//
//  Created by Adilet on 9/2/22.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {

    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    var toDoItem : String!
    var descripitem : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if toDoItem == nil{
            toDoItem = ""
        }
        nameField.text = toDoItem
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        toDoItem = nameField.text
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingAddMode = presentingViewController is UINavigationController
        if isPresentingAddMode{
            dismiss(animated: true, completion: nil)
        }else{
            navigationController?.popViewController(animated: true)
        }
    }
}
