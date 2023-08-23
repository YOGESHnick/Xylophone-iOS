# Xylophone

## Goal:
The goal is to create a simple Xylophone simulator app, specific to the iOS platform!

## Main code part:

```
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
```



>This is the main part used to play sounds !
>Get it to play it now !

>2033
>NickyZander
