//
//  ViewController.swift
//  Pente
//
//  Created by Jack Michael Wesierski on 11/10/20.
//


import UIKit

class LanguageListViewController: UIViewController {
    
    @IBOutlet weak var languageTableView: UITableView!
    
    
    var languageArray = ["French", "Spanish", "German", "Italian", "Swahili", "Mandarin", "Japanese", "Elvish", "Klingon", "Vulcan", "Dothraki", "Mionionese"]
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        languageTableView.dataSource = self
        languageTableView.delegate = self
    
    }


}

extension LanguageListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languageArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "languageCell", for: indexPath)
        cell.textLabel?.text = languageArray[indexPath.row]
        return cell
    }
    
    
}
