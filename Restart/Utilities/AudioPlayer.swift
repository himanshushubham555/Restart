//
//  AudioPlayer.swift
//  Restart
//
//  Created by Himanshu.61086168 on 21/05/24.
//

import Foundation
import AVFAudio

var audioPlayer: AVAudioPlayer?
func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch{
            print("Could not paly the sound file.")
        }
    }
}
