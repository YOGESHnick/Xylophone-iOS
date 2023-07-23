//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//
//
//    @IBAction func keyPressed(_ sender: UIButton) {
//        print("pressed")
//    }
//
//}

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        print(sender.currentTitle) //title of the button that was pressed
        playSound(soundName: sender.currentTitle!) // '!' is included because currentTitle of button does'nt have to be string always
        //Reduces the sender's (the button that got pressed) opacity to half.
          sender.alpha = 0.5

          //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }

    func playSound(soundName:String ) {//soundName is the parameter,String is the datatype of the parameter required
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

    }
}
