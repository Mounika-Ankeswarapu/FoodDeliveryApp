//
//  ItemViewModel.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 03/06/23.
//

import Foundation
import SwiftUI

class ItemViewModel: ObservableObject {
    @Published var items =  [ Item(quantity: 1)]
    
}
