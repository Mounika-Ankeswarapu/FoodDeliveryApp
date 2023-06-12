//
//  CategoryItemView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 01/06/23.
//

import Foundation
import SwiftUI

struct CategoryItemView: View {
    
    @Binding var isSelected: Bool
    @State var color: Color
    @State var fillColor: Color
    @State var image: Image
    
    var title: String
          
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 90, height: 70)
                    .foregroundColor(isSelected ? color : fillColor)

                    image
                  
            }
            Text(title)
                .font(.title3)
                .foregroundColor(.black)
        }
        
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {

        CategoryItemView(isSelected: .constant(false), color: .thaiCardColor, fillColor: .bgColor, image: Image.AllDishes, title:"All")
       
    }
}
