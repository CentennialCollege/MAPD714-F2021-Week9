
import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
      
    var todos =
    [Todo(name: "First Todo"),
     Todo(name: "Second Todo"),
     Todo(name: "Third Todo")]
    
    let tableIdentifier = "todosTable"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //displayTodos()
    }
    
    func displayTodos()->Void
    {
        print("Todo List")
        print("-------------------------------")
        for todo in todos
        {
            todo.display()
            print("-------------------------------")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: tableIdentifier)
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: tableIdentifier)
        }
        
        cell?.textLabel?.text = todos[indexPath.row].name
        
        return cell!
    }

}

