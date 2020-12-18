//
//  MainView.swift
//  THE FIELD BOOK
//  This main view contains entry points to all
//  the species in the Northern California collection
//  General TODOs
//  - an easy way to go back to the "map" view (not yet created)
//  - reduce glitch (currently lagging with iPhone 12 simulator?)
//  - collect 2 more species
//
//  Created by Adeline Yu on 12/17/20.
//

import AVKit
import SwiftUI
struct MainView: View {
    @State var showCypress: Bool = false
    @State var showNasturtium: Bool = false
    
    var body: some View {
        VStack{
            // Cypress Button
            // TODO: reformat the button so it is not warped
            // TODO: reposition the button in better location
            Button(action: {
                print("Cypress button was tapped")
                self.showCypress = true
            }) {
                Image("CypressHomePageButton").resizable().scaleEffect(0.4)
            }
            // Goes to CypressView if button pressed
            .sheet(isPresented: $showCypress) {
                CypressView()
            }
            
            Text("Field Book: Northern California").font(Font.custom("Times New Roman", size: 20))
                .foregroundColor(Color.gray)
            
            // Nasturtium Button
            // TODO: reformat the button so it is not warped
            // TODO: reposition the button in better location
            Button(action: {
                print("Button was tapped")
                self.showNasturtium = true
            }) {
                Image("NasturtiumHomePageButton").resizable().scaleEffect(0.4)
            }
            // Goes to NasturtiumView if button pressed
            .sheet(isPresented: $showNasturtium) {
                NasturtiumView()
            }
            
            // TODO: have 2 more species
        }
       
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
