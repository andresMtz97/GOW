//
//  MerchViewController.swift
//  GOW
//
//  Created by DISMOV on 14/03/24.
//

import UIKit

class MerchViewController: UIViewController {

    let dataProvider = DataProvider()
    var arrayMerch: [Merch] = []
    @IBOutlet weak var merchTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayMerch = dataProvider.merch

        merchTable.dataSource = self
        merchTable.delegate = self
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

extension MerchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMerch.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MerchCell
        cell.merchImage.image = UIImage(named: arrayMerch[indexPath.row].image)
        cell.merchName.text = arrayMerch[indexPath.row].name.localized
        cell.merchPrice.text = arrayMerch[indexPath.row].price.localized
        return cell
    }
    
    
}
