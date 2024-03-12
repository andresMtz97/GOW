//
//  CharactersViewController.swift
//  GOW
//
//  Created by Developer on 11/03/24.
//

import UIKit

class CharactersViewController: UIViewController {

    @IBOutlet weak var charactersTable: UITableView!
    let dataProvider = DataProvider()
    var arrayCharacters: [Character] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        charactersTable.delegate = self
        charactersTable.dataSource = self
        
        charactersTable.backgroundColor = UIColor(named: "GOWBlack1")
        
        if self.tabBarItem.tag == Constants.CGO_TAG_TABITEM {
            arrayCharacters = dataProvider.cogCharacters
        } else {
            arrayCharacters = dataProvider.locustCharacters
        }
    }
}

extension CharactersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCharacters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CharacterCell
        cell.characterName.text = arrayCharacters[indexPath.row].name
        cell.characterImage.image = UIImage(named: arrayCharacters[indexPath.row].image)
        cell.characterDescription.text = arrayCharacters[indexPath.row].description.localized
        return cell
    }
    
    
}
