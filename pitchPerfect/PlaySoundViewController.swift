//
//  PlaySoundViewController.swift
//  pitchPerfect
//
//  Created by Ezequiel Anibal on 12/19/17.
//  Copyright © 2017 MantutAppCoda. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    
    //MARK: -OUTLETS
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    //MARK:- PROPERTIES
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {case slow = 0, fast, chipmunk, vader, echo, reverb}
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            print("pressed slow")
           playSound(rate: 0.5)
        case .fast:
            print("pressed fast")
            playSound(rate: 1.5)
        case .chipmunk:
            print("pressed chipmink")
//            playSound(pitch: 1000)
        case .vader:
            print("pressed vader")
//            playSound(pitch: -1000)
        case .echo:
            print("pressed echo")
//            playSound(echo: true)
        case .reverb:
            print("pressed reverb")
//            playSound(reverb: true)
        }
        configureUI(.playing)
            }
    
    
    @IBAction func stopButtonPressed(_ sender: AnyObject){
        stopAudio()
        print("pressed stopped button")
        configureUI(.notPlaying)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
        print("the sound file is loaded into the PlaySoundViewController")
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    

    
    


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
