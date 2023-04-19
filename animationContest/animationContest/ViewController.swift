import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var emailEnterButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func shakeTextField(_ textField: UITextField) {
        UIView.animate(withDuration: 0.1, animations: {
            textField.transform = CGAffineTransform(translationX: 10, y: 0)
        }) { _ in
            UIView.animate(withDuration: 0.1, animations: {
                textField.transform = CGAffineTransform(translationX: -20, y: 0)
            }) { _ in
                UIView.animate(withDuration: 0.1, animations: {
                    textField.transform = CGAffineTransform.identity
                })
            }
        }
    }

    @IBAction func enterButtonTapped(_ sender: UIButton) {
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            shakeTextField(emailTextField)
        } else {
            performSegue(withIdentifier: "EnteredContest", sender: self)
        }
    }



}

