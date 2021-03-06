//
//  AirCnCViewController.swift
//  step1_1
//
//  Created by 김성찬 on 2022/02/09.
//

import UIKit

struct ItemInfo {
    var userName: String
    var itemName: String
    var itemImage: String
}

class AirCnCViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var items = [
        ItemInfo(userName: "깜디", itemName: "ÄLEBY", itemImage: "aleby"),
        ItemInfo(userName: "프랭키", itemName: "BROMMÖ", itemImage: "brommo"),
        ItemInfo(userName: "고양씨", itemName: "EKEDALEN", itemImage: "ekedalen"),
        ItemInfo(userName: "프랭키", itemName: "HATTEFJÄLL", itemImage: "jattefjall"),
        ItemInfo(userName: "뽀뽀", itemName: "MARKUS", itemImage: "markus"),
        ItemInfo(userName: "고양씨", itemName: "MILLBERGET", itemImage: "millberget"),
        ItemInfo(userName: "뽀뽀", itemName: "NORDMYRA", itemImage: "nordmyra"),
        ItemInfo(userName: "깜디", itemName: "NORRÅKER", itemImage: "norraker"),
        ItemInfo(userName: "깜디", itemName: "TUNHOLMEN", itemImage: "tunholmen"),
        ItemInfo(userName: "뽀뽀", itemName: "YPPERLIG", itemImage: "ypperlig"),
    ]

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        let item = items[indexPath.row]
        cell.textLabel?.text = item.itemName
        cell.detailTextLabel?.text = item.userName
        cell.imageView?.image = UIImage(named: item.itemImage)
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
