//
//  ViewController.swift
//  youtube-app
//
//  Created by Алишер Алсейт on 03.12.2020.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

