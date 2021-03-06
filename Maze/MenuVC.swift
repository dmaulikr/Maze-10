//
//  MenuVC.swift
//  Maze
//
//  Created by Kryg Tomasz on 08.02.2017.
//  Copyright © 2017 Kryg Tomek. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtons()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    func setButtons() {
        
        startButton.setTitle("", for: .normal)
        startButton.setImage(#imageLiteral(resourceName: "StartGame"), for: .normal)
        startButton.tintColor = UIColor.brown
        startButton.addTarget(self, action: #selector(startGame), for: .touchUpInside)
        
    }
    
    func startGame() {
        
        guard let game: GameVC = UINib(nibName: "GameVC", bundle: nil).instantiate(withOwner: self, options: nil)[0] as? GameVC else { return }
        self.navigationController?.pushViewController(game, animated: true)
        //present(game, animated: true, completion: nil)
        
    }

}

