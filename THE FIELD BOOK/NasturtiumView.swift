//
//  NasturtiumView.swift
//  THE FIELD BOOK
//
//  Automatically starts the Nasturtium video
//  General TODOs:
//  - After video, information panel with additional sketches and description of species should appear
//  - An entry point into the photo gallery
//  - A way to get back to Main View that is intuitive
//
//  Created by Adeline Yu on 12/18/20.
//
import AVKit
import SwiftUI

struct NasturtiumView: View {
    private let player = AVPlayer(url: Bundle.main.url(forResource: "Nasturtium", withExtension: ".mp4")!)
    
    var body: some View {
        VideoPlayer(player: player).onAppear() {
            print("start time")
            print(time)
            player.play()
        }
    }
}

struct NasturtiumView_Previews: PreviewProvider {
    static var previews: some View {
        NasturtiumView()
    }
}
