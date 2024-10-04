//
//  IconTextRowRest.swift
//  Hotel
//
//  Created by Александр Богачев on 4.10.24.
//

import SwiftUI

struct IconTextRowRest: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            IconTextConf(iconName: "hot-meal", label: "Hot meal – boiled sausages, fried or boiled eggs, pancakes.")
            IconTextConf(iconName: "cold-meal", label: "Cold dishes – assorted meat, fermented cheese, cottage cheese, fresh vegetables, pickles, butter, boiled eggs stuffed with salmon and mayonnaise, several types of bread (dark, light, toast), breakfast buns, fruit and natural yogurts, breakfast cereals.")
            IconTextConf(iconName: "dessert", label: "Desserts – biscuits, Lithuanian muffin, fresh and conserved fruits.")
            IconTextConf(iconName: "drinks", label: "Cold drinks – various types of juices, hot/cold milk, table water.")
            IconTextConf(iconName: "hot-drink", label: "Hot drinks – freshly ground coffee, different kinds of tea.")
        }
        .padding(.top)
        .padding()
    }
}
