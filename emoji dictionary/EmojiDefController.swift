//
//  EmojiDefController.swift
//  emoji dictionary
//
//  Created by Tyler Struntz on 5/7/18.
//  Copyright © 2018 Tyler Struntz. All rights reserved.
//

import UIKit

class EmojiDefController: UIViewController
{
    @IBOutlet weak var emojiDefLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "";
    override func viewDidLoad()
    {
        super.viewDidLoad()
        emojiLabel.text = emoji;
        
        //["🔐","📋","🎡","🗿"]
        if(emoji == "🗿")
        {
            emojiDefLabel.text = "A big old rock";
        }
        else if(emoji == "🎡")
        {
            emojiDefLabel.text = "A big ferris wheel";
        }
        else if(emoji == "📋")
        {
            emojiDefLabel.text = "A clipboard";
        }
        else if(emoji == "🔐")
        {
            emojiDefLabel.text = "A key and lock";
        }
    }
}
