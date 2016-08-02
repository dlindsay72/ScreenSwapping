//
//  MusicListVC.swift
//  ScreenSwapping2016
//
//  Created by Dan Lindsay on 2016-08-01.
//  Copyright © 2016 Dan Lindsay. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue()
        
    }

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func loadThirdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Owner of a Lonely Heart"
        performSegue(withIdentifier: "SongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
            
        }
    }

}
