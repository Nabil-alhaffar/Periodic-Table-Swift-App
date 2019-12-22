//
//  MasterViewController.swift
//  Periodic Table
//
//  Created by Nabil Haffar on 9/25/19.
//  Copyright © 2019 Nabil Haffar. All rights reserved.
//  Periodic Table Project
//  File for masterView Controller


import UIKit



class MasterViewController: UIViewController, UITableViewDataSource {
    var detailViewController: DetailViewController?
    private var elements = [Element]()
    var objects = [Any]()
    @IBOutlet var tableView: UITableView!
    
    final let url = URL (string: "https://csserver.evansville.edu/~droberts/PeriodicTableJSON.json")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
   //     navigationItem.rightBarButtonItem = addButton
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
            split.preferredDisplayMode = .allVisible
        }
        LoadJson()
    }


    override  func viewWillAppear(_ animated: Bool) {
        //clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
        self.tableView.flashScrollIndicators()
      //  let _ = detailViewController?.view

    }

    func LoadJson(){
        guard let loadingUrl = url else {return}
        URLSession.shared.dataTask(with: loadingUrl){data, urlResponse, error in
            guard let data = data, error  == nil, urlResponse != nil else {
                print ("Download Unsuccessful")
                return
            }
            print ("Download Complete")
            do
            {
                let decoder = JSONDecoder()
                let loadedElements = try decoder.decode(Elements.self, from: data)
                print (loadedElements)
                print (loadedElements.elements[0].name)
                self.elements = loadedElements.elements
                DispatchQueue.main.async {
                self.tableView.reloadData()

                }
            } catch let err{
                print ("Decoding error")
                print (err)
                
            }
        }.resume()
        
    }

    // MARK: - Segues
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segue1")
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow{
                let element = elements[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = element
                print ("segue2")
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }

            
        }
    }
    // MARK: - Table View
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ElementCell") as? ElementCell
        else {
            return UITableViewCell()
            
        }
        cell.nameLbl.text = elements[indexPath.row].name
        cell.symbolLbl.text = elements[indexPath.row].symbol
        cell.atomicMassLbl.text = String( elements[indexPath.row].atomic_mass)
        return cell
    }

     func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    @objc
    func insertNewObject(_ sender: Any) {
        objects.insert(elements, at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }

     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            elements.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
}


