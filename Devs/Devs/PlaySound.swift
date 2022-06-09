//
//  PlaySound.swift
//  Devs
//
//  Created by Ezequiel Rasgido on 08/06/2022.
//

import AVFoundation

// MARK: - CARD MODEL

var audioPlayer: AVAudioPlayer?

func playSound(
    _ sound: String,
    _ type:String
) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
