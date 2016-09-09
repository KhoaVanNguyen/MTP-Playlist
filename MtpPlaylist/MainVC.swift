//
//  ViewController.swift
//  MtpPlaylist
//
//  Created by Khoa on 8/11/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        addDataToVideoArray()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as? VideoCell
        {
            cell.UpdateUI(video: videos[indexPath.row])
            return cell
        }
        else
        {
            return UITableViewCell()
        }
    }
    func addDataToVideoArray()
    {
        let video1 = Video(songName: "Nắm ấm xa dần", previewImage: "image1", url: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x-UEksXSLGs\" frameborder=\"0\" allowfullscreen></iframe>")
         let video2 = Video(songName: "Cơn mưa ngang qua", previewImage: "image2", url: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x-UEksXSLGs\" frameborder=\"0\" allowfullscreen></iframe>")
         let video3 = Video(songName: "Âm thầm bên em", previewImage: "image3", url: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x-UEksXSLGs\" frameborder=\"0\" allowfullscreen></iframe>")
         let video4 = Video(songName: "Chúng ta không thuộc về nhau", previewImage: "image4", url: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x-UEksXSLGs\" frameborder=\"0\" allowfullscreen></iframe>")
        
        videos.append(contentsOf: [video1,video2,video3,video4])
        
    }
}

