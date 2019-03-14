//
//  REST.swift
//  Carangas
//
//  Created by Usuário Convidado on 13/03/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import Foundation


class REST{
   private static let basePath = "https://carangas.herokuapp.com/cars"
    
   //private static let session = URLSession.shared
    
    private static let configuration: URLSessionConfiguration = {
       let config = URLSessionConfiguration.default
        config.allowsCellularAccess = false
        config.httpAdditionalHeaders = ["Content-Type": "application/json"]
        config.timeoutIntervalForRequest = 30.0
        config.httpMaximumConnectionsPerHost = 3
       return config
    }()
    
    private static let session = URLSession(configuration: configuration)

    class func loadCars(onComplete:@escaping ([Car]) -> Void){
        guard let url: URL = URL(string: basePath) else{
           print("Erro ao montar URL")
            return
        }
            let task = session.dataTask(with: url) { (data,  response, error) in
                
            if error != nil{
                print("Deu erro", error)
                return
            }
            
            guard let responses = response as? HTTPURLResponse else {
                print("Response nulo")
                return
            }
            
            if responses.statusCode != 200{
                print("Erro de status code", responses.statusCode)
                return
            }
            
            guard let data = data else{
                print("Dados inválidos!")
                return
            }
            
            do{
                
                let cars = try JSONDecoder().decode([Car].self, from: data)
                onComplete(cars)
                print(cars.count)

            }catch{
                print("Erro ao tratar json")
            }

        }
        task.resume()

    }
  
}
