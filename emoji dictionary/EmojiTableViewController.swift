//
//  EmojiTableViewController.swift
//  emoji dictionary
//
//  Created by Tyler Struntz on 5/6/18.
//  Copyright © 2018 Tyler Struntz. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController
{
    
    var emojis = ["🔐","📋","🎡","🗿"];
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return emojis.count;
        
    }
    
    override  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let emoji = emojis[indexPath.row];
        performSegue(withIdentifier: "emojiDef", sender: emoji );
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thiscell", for: indexPath)
        
        cell.textLabel?.text = emojis[indexPath.row];

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let emojiDef = segue.destination as! EmojiDefController;
        emojiDef.emoji = sender as! String;
    }
}
