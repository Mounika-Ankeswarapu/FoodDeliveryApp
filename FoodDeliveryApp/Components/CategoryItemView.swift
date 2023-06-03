//
//  CategoryItemView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 01/06/23.
//

import Foundation
import SwiftUI

struct CategoryItemView: View {
    var image: Image
    var title: String
    var fillColor: Color
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 90, height: 70)
                    .foregroundColor(fillColor)
                VStack(alignment: .center, spacing: 15){
                    image
                  
                }
            }
            Text(title)
                .font(.title3)
                .foregroundColor(.black)
        }
        
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(image: Image.AllDishes, title: "All", fillColor: .bgColor)
       
    }
}
