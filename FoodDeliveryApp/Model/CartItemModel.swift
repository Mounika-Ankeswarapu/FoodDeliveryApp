//
//  CartItemModel.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 10/06/23.
//

import Foundation
import SwiftUI

struct CartItemModel: Identifiable, Hashable {
    var id = UUID()
    var image: Image
    var title: String
    var description: String
    var price: String
    var quantity: Int
    
    public func hash(into hasher: inout Hasher) {
            return hasher.combine(id)
        }
        
        public static func == (lhs: CartItemModel, rhs: CartItemModel) -> Bool {
            return lhs.id == rhs.id
        }
}

