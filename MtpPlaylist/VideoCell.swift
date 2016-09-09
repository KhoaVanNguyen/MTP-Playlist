//
//  VideoCell.swift
//  MtpPlaylist
//
//  Created by Khoa on 8/11/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var songNameLbl: UILabel!
    @IBOutlet weak var previewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        // Configure the view for the selected state
    }
    func UpdateUI(video : Video)
    {
        songNameLbl.text = video.songName
        previewImage.image = UIImage(named: video.previewImage)
    }
}
