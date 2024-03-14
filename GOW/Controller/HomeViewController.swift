//
//  HomeViewController.swift
//  GOW
//
//  Created by Developer on 08/03/24.
//

import UIKit

class HomeViewController: UITableViewController {
    
    @IBOutlet var menuTableView: UITableView!
    
    let dataProvider = DataProvider()
    var menuOptions: [MenuOption] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        menuOptions = dataProvider.menuOptions
        menuTableView.backgroundColor = UIColor(named: "GOWBlack1")
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuOptions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuOptionCell
//        cell.optionLabel.text = NSLocalizedString(menuOptions[indexPath.row].title, comment: "")
//        cell.optionLabel.text = menuOptions[indexPath.row].title.localized
        cell.optionLabel.text = menuOptions[indexPath.row].title.localized(WithComment: "")
        cell.optionImage.image = UIImage(systemName: menuOptions[indexPath.row].image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
