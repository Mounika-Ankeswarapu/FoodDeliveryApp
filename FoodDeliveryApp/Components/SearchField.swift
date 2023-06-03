//
//  SearchField.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 01/06/23.
//

import Foundation
import SwiftUI

struct SearchField: View {
    @Binding var onTapSearch: Bool
    @Binding var text: String
    @Namespace var namespace
    
    var body: some View {
        VStack {
            if !onTapSearch {
                SearchText()
                    .matchedGeometryEffect(id: "search", in: namespace)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                            onTapSearch.toggle()
                        }
                    }
            } else {
                SearchBarExpand(close: $onTapSearch, namespace: namespace, text: $text)
                    .matchedGeometryEffect(id: "search", in: namespace)
            }
        }
    }
}

struct SearchText: View {
    var backgroundColor: Color = .bgColor
    var body: some View {
        CardView(backgroundColor: backgroundColor, padding: 15, stroke: .clear) {
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.searchColor)
                Text("Search")
                    .font(.callout)
                    .foregroundColor(.searchColor)
                Spacer()

            }
        }.cornerRadius(50)
    }
}

struct SearchField_Previews: PreviewProvider {
    static var previews: some View {
        SearchField(onTapSearch: .constant(true), text: .constant("Search"))
    }
}

struct SearchBarExpand: View {
    @Binding var close: Bool
    var namespace: Namespace.ID
    @Binding var text: String
    var body: some View {
        VStack {
            CardView(backgroundColor: .bgColor, padding: 15, stroke: .clear) {
                HStack(alignment: .center, spacing: 10) {
                  TextField(text: $text, label: {
                      Image(systemName: "magnifyingglass")
                          .resizable()
                          .frame(width: 24, height: 24)
                          .foregroundColor(.bgColor)
                      Text("Search")
                          .font(.callout)
                          .foregroundColor(.bgColor)
                  })
                    Spacer()

                    Divider()
                        .frame(height: 20)
                        .padding(.trailing, 10)

                    Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                            close.toggle()
                        }
                    }, label: {
                        Image(systemName: "multiply")
                    }).tint(.black)
                }
            }.cornerRadius(12)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}
