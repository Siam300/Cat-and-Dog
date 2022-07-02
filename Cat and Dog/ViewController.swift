//
//  ViewController.swift
//  Cat and Dog
//
//  Created by Auto on 1/8/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    
    @IBOutlet weak var photoDsplay: UIImageView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func caButton(_ sender: UIButton) {
        photoDsplay.image = #imageLiteral(resourceName: "Cat")
        //playCat(Sounds: "Cat")
        playSound(name: "Cat")
    }
    
    @IBAction func dogButton(_ sender: UIButton) {
        photoDsplay.image = #imageLiteral(resourceName: "Dog")
        //playDog(Sounds: "Dog")
        playSound(name: "Dog")
        
    }
    
    
//    func playCat(Sounds: String) {
//        let url = Bundle.main.url(forResource: "Cat", withExtension: "wav")
//        player = try! AVAudioPlayer(contentsOf: url!)
//        player.play()
//        if  let catSound = Bundle.main.path(forResource: "Cat", ofType: "wav") {
//            player = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: catSound))
//            player?.play()
//        }else {
//         print("Cat File is missing")
//        }
//
//
//    }
    
//    func playDog(Sounds: String) {
//        let url = Bundle.main.url(forResource: "Dog", withExtension: "wav")
//        player = try! AVAudioPlayer(contentsOf: url!)
//        player.play()
        
//        if  let dogSound = Bundle.main.path(forResource: "Dog", ofType: "wav") {
//            player = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: dogSound))
//            player?.play()
//        }else {
//         print("Dog File is missing")
//        }
//    }
    
    func playSound(name: String){
        if let soundFile = Bundle.main.path(forResource: name, ofType: "wav"){
            player = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile))
            player?.play()
        }
        else{
            print("\(name) File Missing!")
        }
    }
}

