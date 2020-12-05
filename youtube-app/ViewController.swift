//
//  ViewController.swift
//  youtube-app
//
//  Created by Алишер Алсейт on 03.12.2020.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()

    var videos = [Video]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        model.getVideos()
        
    }
    
    

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
    
}

extension ViewController: ModelDelegate {
    func videosFetched(_ vidoes: [Video]) {
        
        self.videos = vidoes
        
        tableView.reloadData()
    }
    
    
   
    
}
