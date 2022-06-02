//
//  TopViewController.swift
//  HouseBook
//
//  Created by Dora on 2022/03/29.
//

import UIKit

class TopViewController: UIViewController {
    
    let colors =  Colors()
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
    
    @IBOutlet weak var goFirstLoginButton: UIButton!
    @IBAction func goFirstLoginButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "FirstLogin", bundle: nil)
        let nextView = storyboard.instantiateViewController(withIdentifier: "FirstLoginViewController") as! FirstViewController
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    @IBOutlet weak var goAlreadyLoginButton: UIButton!
    @IBAction func goAlreadyLoginButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "AlreadyLogin", bundle: nil)
        let nextView = storyboard.instantiateViewController(withIdentifier: "AlreadyLoginViewController") as! AlreadyLoginViewController
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        print("あああああああああああ\(SuperCategoryIcon.sortCostSuperCategoryName())")

        // Do any additional setup after loading the view.
        goFirstLoginButtonSetUp()
        goAlreadyLoginButtonSetUp()
        
    }
    
    func goFirstLoginButtonSetUp() {
        goFirstLoginButton.layer.cornerRadius = 5
        goFirstLoginButton.layer.shadowColor = UIColor.black.cgColor
        goFirstLoginButton.layer.shadowOpacity = 0.3
        //影のぼかしの強さ
        goFirstLoginButton.layer.shadowRadius = 4
        //widthが大きいと右にheightは下に影が伸びる
        goFirstLoginButton.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
    func goAlreadyLoginButtonSetUp() {
        goAlreadyLoginButton.layer.cornerRadius = 5
        goAlreadyLoginButton.layer.shadowColor = UIColor.black.cgColor
        goAlreadyLoginButton.layer.shadowOpacity = 0.3
        //影のぼかしの強さ
        goAlreadyLoginButton.layer.shadowRadius = 4
        //widthが大きいと右にheightは下に影が伸びる
        goAlreadyLoginButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        goAlreadyLoginButton.layer.borderWidth = 1
        goAlreadyLoginButton.layer.borderColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 0.9)
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
