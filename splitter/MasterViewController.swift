//
//  MasterViewController.swift
//  splitter
//
//  Created by Viktor Yamchinov on 29.11.2019.
//  Copyright © 2019 Viktor Yamchinov. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination as! UINavigationController).topViewController as! ImagePresentationVC
                controller.image = imageArray[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = namesArray[indexPath.row]
        cell.backgroundColor = colorsArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let navBarHeight = navigationController?.navigationBar.frame.height else {
            return (tableView.frame.height - 60) / CGFloat(imageArray.count)
        }
        return (tableView.frame.height - navBarHeight) / CGFloat(imageArray.count)
    }

}

