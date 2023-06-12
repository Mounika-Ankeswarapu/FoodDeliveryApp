//
//  CardView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 01/06/23.
//

import Foundation
import SwiftUI

extension View {
    func egCardView(foregroundColor: Color = .black,
                    backgroundColor: Color = .gray.opacity(0.4),
                    cornerRadius: CGFloat = 8,
                    padding: CGFloat = 8,
                    stroke: Color = .gray) -> some View {
        modifier(Border(backgroundColor: backgroundColor, cornerRadius: cornerRadius, padding: padding, stroke: stroke))
    }
}

struct Border: ViewModifier {
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var padding: CGFloat
    var stroke: Color

    func body(content: Content) -> some View {
        content
            .padding(padding)
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(stroke, lineWidth: 1)
            )
            .cornerRadius(cornerRadius)
    }
}

struct CardView<Content: View>: View {
    init(foregroundColor: Color = .black, backgroundColor: Color = .gray.opacity(0.4), cornerRadius: CGFloat = 8, padding: CGFloat = 8, stroke: Color = .gray, @ViewBuilder content: () -> Content) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.padding = padding
        self.stroke = stroke
        self.content = content()
    }

    var foregroundColor: Color
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var padding: CGFloat
    var stroke: Color
    var content: Content
    var body: some View {
        content
            .egCardView(foregroundColor: foregroundColor, backgroundColor: backgroundColor, cornerRadius: cornerRadius, padding: padding, stroke: stroke)
    }
}

// MARK: - Card view with padding

extension View {
    func CardViewWithPadding(foregroundColor: Color = .black,
                             backgroundColor: Color = .gray.opacity(0.4),
                             cornerRadius: CGFloat = 8,
                             HPadding: CGFloat = 8,
                             VPadding: CGFloat = 8,
                             stroke: Color = .gray) -> some View {
        modifier(CardBorder(backgroundColor: backgroundColor, cornerRadius: cornerRadius, HPadding: HPadding, VPadding: VPadding, stroke: stroke))
    }
}

struct CardBorder: ViewModifier {
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var HPadding: CGFloat
    var VPadding: CGFloat
    var stroke: Color

    func body(content: Content) -> some View {
        content
            .padding(.horizontal, HPadding)
            .padding(.vertical, VPadding)
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(stroke, lineWidth: 1)
            )
            .cornerRadius(cornerRadius)
    }
}

struct CardViewWithPadding<Content: View>: View {
    init(foregroundColor: Color = .black, backgroundColor: Color = .gray.opacity(0.4), cornerRadius: CGFloat = 8, HPadding: CGFloat = 8, VPadding: CGFloat = 8, stroke: Color = .gray, @ViewBuilder content: () -> Content) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.HPadding = HPadding
        self.VPadding = VPadding
        self.stroke = stroke
        self.content = content()
    }

    var foregroundColor: Color
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var VPadding: CGFloat
    var HPadding: CGFloat
    var stroke: Color
    var content: Content
    var body: some View {
        content
            .CardViewWithPadding(foregroundColor: foregroundColor, backgroundColor: backgroundColor, cornerRadius: cornerRadius, HPadding: HPadding, VPadding: VPadding, stroke: stroke)
    }
}
