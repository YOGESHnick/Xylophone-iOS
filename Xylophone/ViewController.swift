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
        playSound()
    }

    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

    }
}
