//
//  ViewController.swift
//  jeuSimone
//
//  TP 2 - Programmation Orientée Objet
//
//  Pedro Paula Alves Carneiro Teixeira
//


import UIKit

class StartController: UIViewController {
    
    @IBOutlet weak var highscoreLabel: UILabel!
    
    //--------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedScore = SingletonShared.sigletonSharedInstance.savedHighscore.object(forKey: "score")!
        highscoreLabel.text = "HIGHSCORE : \(String(describing: savedScore))"
    }
    
    //--------------------
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //--------------------
    
    @IBAction func resetHighscore(_ sender: UIButton) {
        highscoreLabel.text = "HIGHSCORE : 0"
        SingletonShared.sigletonSharedInstance.resetHighscore()
    }
    
    //--------------------
    
    @IBAction func goToPageWeb(_ sender: UIButton){
        if let url = NSURL(string: "http://mariogeneau.com") {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
    }
    
}


