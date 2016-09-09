//
//  DetailVC.swift
//  MtpPlaylist
//
//  Created by Khoa on 9/9/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var webView : UIWebView!
    @IBOutlet weak var musicNamLbl : UILabel!
    private var _musicVideo : Video!
    
    var  musicVideo : Video{
       
        get {
            if _musicVideo == nil{
                return Video(songName: "", previewImage: "", url: "")
            }
            return _musicVideo
        }
        set {
            _musicVideo = newValue
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicNamLbl.text = musicVideo.songName
        webView.loadHTMLString(musicVideo.url, baseURL: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
