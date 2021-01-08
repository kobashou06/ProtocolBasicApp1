//
//  NextViewController.swift
//  ProtocolBasicApp1
//
//  Created by kobashou06 on 2021/01/08.
//

import UIKit

protocol CatchProtocol {
    //規則を決める
    func catchData(count:Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var countUpLabel: UILabel!
    var count:Int = 0
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusAction(_ sender: Any) {
        count = count + 1
        countUpLabel.text = String(count)
    }
    
    @IBAction func back(_ sender: Any) {
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
