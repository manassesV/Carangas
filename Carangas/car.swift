//
//  car.swift
//  Carangas
//
//  Created by Usuário Convidado on 13/03/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import Foundation


class Car: Codable  {
    var _id: String?
    var brand: String = ""
    var name: String = ""
    var price: Int = 0
    var  gasType = 0
    
    
    var gas: String{
        switch gasType {
        case 0:
            return "Flex"
        case 1:
            return "Alcool"
        default:
            return "Gasolina"
        }
        
    }
    
}
