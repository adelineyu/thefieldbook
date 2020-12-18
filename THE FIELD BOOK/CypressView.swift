//
//  CypressView.swift
//  THE FIELD BOOK
//  View appears when user presses Cypress button
//  Automatically starts the Cypress video
//  General TODOs:
//  - After video, information panel with additional sketches (should have WeTransfered those) and description of species should appear
//  - An entry point into the photo gallery (should have WeTransfered those)
//  - A way to get back to Main View that is intuitive
//
//  Created by Adeline Yu on 12/18/20.
//

import AVKit
import SwiftUI

struct CypressView: View {
    private let player = AVPlayer(url: Bundle.main.url(forResource: "Cypress", withExtension: ".mp4")!)
    
    var body: some View {
        VideoPlayer(player: player).onAppear() {
            print("start time")
            print(time)
            player.play()
        }
    }
}

struct CypressView_Previews: PreviewProvider {
    static var previews: some View {
        CypressView()
    }
}
