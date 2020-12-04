//
//  Model.swift
//  youtube-app
//
//  Created by Алишер Алсейт on 03.12.2020.
//

import Foundation

class Model {
    
    func getVideos(){
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
            
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil || data == nil{
              
                return
                
            }
            
            
        }
        
        // kick off the task
        dataTask.resume()
    }
    
}
