//
//  WeaponsControllerViewController.swift
//  GOW
//
//  Created by Developer on 08/03/24.
//

import UIKit

class WeaponsController: UIViewController {

    @IBOutlet weak var weaponsTable: UITableView!
    
    let dataProvider = DataProvider()
    var arrayWeapons : [Weapon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weaponsTable.backgroundColor = UIColor(named: "GOWBlack1")
        
        weaponsTable.delegate = self
        weaponsTable.dataSource = self
        
        let tabBarTag = self.tabBarItem.tag
        
        if tabBarTag == Constants.CGO_TAG_TABITEM {
            arrayWeapons = dataProvider.cgoWeapons
        } else {
            arrayWeapons = dataProvider.locustWeapons
        }
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

extension WeaponsController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WeaponsCell
        
        cell.weaponName.text = NSLocalizedString(arrayWeapons[indexPath.row].name, comment: "")
        cell.weaponImage.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        cell.weaponDescription.text = NSLocalizedString(arrayWeapons[indexPath.row].description, comment: "")
        return cell
    }
    
    
}
