//
//  FrenchViewController.swift
//  Pente
//
//  Created by Jack Michael Wesierski on 12/8/20.
//

import UIKit

class FrenchViewController: UIViewController {

    @IBOutlet weak var frenchMediaTableView: UITableView!
    

    var laVieEnRoseArray = ["French Songs", "French Movie Clips", "Misc French Media Activities"]
    //,"La mer by Charles Tenet","Le Champs Elysees by Joe Dasin"]
    var laMerArray = ["La mer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frenchMediaTableView.dataSource = self
        frenchMediaTableView.delegate = self
        // Do any additional setup after loading the view.
    }
}
    //frenchSongCell
extension FrenchViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laVieEnRoseArray.count
    }
    func tableViewTwo(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laMerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let roseCell = tableView.dequeueReusableCell(withIdentifier: "laVieEnRoseCell", for: indexPath)
        roseCell.textLabel?.text = laVieEnRoseArray[indexPath.row]
        return roseCell
    }
    
    func tableViewTwo(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let merCell = tableView.dequeueReusableCell(withIdentifier: "laMerCell", for: indexPath)
        merCell.textLabel?.text = laMerArray[indexPath.row]
        return merCell
    }
    
        
    }



