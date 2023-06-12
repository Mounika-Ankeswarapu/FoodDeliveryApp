//
//  ViewModel.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 07/06/23.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {

    @Published var searchText: String = ""
    @Published var showSearch = false
    var backgroundColor: Color {
        return showSearch == true ? .bgColor : .blue
    }
}
