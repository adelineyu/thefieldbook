//
//  IntroView.swift
//  THE FIELD BOOK
//  The (current) startup point to the application
//  Subject to change once other locations have been created and we have a map
//  Plays the IntroToNorCal video and allows user to jump into NorCal field book
//  General TODOs
//  There's a couple options for better UI here:
//  - Have the button to enter the NorCal field book appear once the video has finished playing (~9 seconds)
//  - Consider automatic fade into MainView instead of waiting for user to press the button
//  - Some more intuitive page flip into the field book, prompting MainView
//
//  Created by Adeline Yu on 12/10/20.
//

import AVKit
import SwiftUI
struct IntroView: View {
    @State private var showingSheet = false
    @State private var hasTimeElapsed = false
    
    private let player = AVPlayer(url: Bundle.main.url(forResource: "IntroToNorCal", withExtension: ".mp4")!)
    
    var body: some View {
        
        // Plays IntroToNorCal video upon start up
        VideoPlayer(player: player).onAppear() {
            print("start time")
            print(time)
            player.play()
        }
        
        Button("Field Book: Northern California") {
            self.showingSheet.toggle()
        }
        .font(Font.custom("Times New Roman", size: 20))
        .foregroundColor(Color.gray)
        .sheet(isPresented: $showingSheet) {
            MainView()
        }
}


struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
}
