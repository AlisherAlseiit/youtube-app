//
//  Model.swift
//  youtube-app
//
//  Created by Алишер Алсейт on 03.12.2020.
//

import Foundation

protocol ModelDelegate {
    
    func videosFetched(_ vidoes:[Video])
    
}
class Model {
    
    var delegate:ModelDelegate?
    
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
            
            do {
              
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                        self.delegate?.videosFetched(response.items!)
                        
                    }

                }
                
            }catch{
                
            }
            
            
            
            
        }
        
        // kick off the task
        dataTask.resume()
    }
    
}
