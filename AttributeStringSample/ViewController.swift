import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let textModel = TextModel()
        textModel.setText(text: "食べっ子うあああああああああああああああああああああああああああああ")
        textLabel.attributedText = textModel.attributeString
    }

}

