//
//  ListTableViewController.swift
//  FoodMonitor
//
//  Created by Developer on 28/12/2016.
//  Copyright © 2016 nicolas.faqir. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var storage = Storage()

    //"Ancienne" façon de présenter une nouvelle vue
    @IBAction func showForm(_ sender: AnyObject) {
        guard let formController = self.storyboard?.instantiateViewController(withIdentifier: "Form") else {return}
        present(formController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let alim = Aliment(name: "Camembert", datePeremp: "11 Janvier 1988")
        storage.add(alim)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return storage.allAliments.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restoCell", for: indexPath)

        // Configure the cell...
        let alim = storage.allAliments[indexPath.row]
        cell.textLabel?.text = alim.name
        cell.detailTextLabel?.text = alim.datePeremp
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "Form" {
            let dest = segue.destination as! ViewController
            dest.storage = storage
        }
    }

    @IBAction func refreshTableView(_ sender: AnyObject) {

        tableView.reloadData()
    }
}
















