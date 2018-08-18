//
//  PostCell.swift
//  InstagramUI
//
//  Created by Andy Strungs on 8/18/18.
//  Copyright © 2018 Developers Academy. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var numberOfLikesButton: UIButton!
    
    @IBOutlet weak var postCaptionLabel: UILabel!
    
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    var post: Post!{
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        self.postImageView.image = post.image
        postCaptionLabel.text = post.caption
        numberOfLikesButton.setTitle("Be the first one to leave a comment", for: [])
        timeAgoLabel.text = post.timeAgo
    }
    
}
