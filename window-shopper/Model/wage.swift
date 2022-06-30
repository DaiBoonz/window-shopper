//
//  wage.swift
//  window-shopper
//
//  Created by MacOS-BigSur on 30/06/2022.
//

import Foundation

class Wage {
    class func getHour(forWage wage: Double, forPrice price: Double) ->Int{
       return Int(ceil(price/wage))
      
        
    }
}
