//
//  ViewController.swift
//  84
//
//  Created by Nick Andris on 3/20/16.
//  Copyright (c) 2016 Nick Andris. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var textbox: UITextView!
    @IBOutlet var label: UILabel!
    @IBOutlet var button: UIButton!
    @IBOutlet var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Button(sender: AnyObject) {
        
        
        //create an array of all of the bad words
        let myList = [
            "unsure",
            "just",
            "kind of",
            "sorry",
            "cannot",
            "damage",
            "do not",
            "error",
            "fail",
            "impossible",
            "little value",
            "loss",
            "mistake",
            "not",
            "problem",
            "refuse",
            "stop",
            "unable to",
            "unfortunately",
            "escalation",
            "urgent",
            "never",
            "inabilty",
            "unsound",
            "fuck",
            "suddenly",
            "trivial",
            "intense",
            "bizarre",
            "awkward",
            "afraid",
            "awful",
            "betrayed",
            "bad",
            "careless",
            "conflicted",
            "concerned",
            "dependent",
            "closed",
            "disappoint",
            "dislike",
            "hassle",
            "hesitant",
            "hopeless",
            "inactive",
            "incompetent",
            "guilty",
            "emotional",
            "flawed",
            "fear",
            "escessive",
            "excluded",
            "exhuasted",
            "exposed",
            "humiliated",
            "not what we",
            "clearly you",
            "If you had",
            "badger",
            "belittle",
            "deceive",
            "deep",
            "defeat",
            "crazy",
            "critical",
            "disabled",
            "hostile",
            "hurt",
            "hysterical",
            "insignificant",
            "jaded",
            "jealous",
            "moody",
            "maniuplated",
            "misunderstood",
            "nervous",
            "provoked",
            "pain",
            "plain",
            "powerless",
            "responsible",
            "regret",
            "rattled",
            "scared",
            "small",
            "slow",
            "strange",
            "stuck",
            "sensitive",
            "self-concious",
            "overwhelmed",
            "obsessive",
            "pressured",
            "pissed",
            "passive",
            "pathetic",
            "quarrelsome",
            "rattled",
            "ridiculous",
            "sad",
            "suffering",
            "suspicious",
            "played with"]
        
        
        //if you already have a way to read in the input, then don't worry about this part and instead just call:
        //var theInput = YOUR_INPUT_STRING
       
        var theInput = textbox.text
        
        
        //convert the input to lower case
        theInput = theInput.lowercaseString
        
        var evilInput = false
        //check if the lowercase input has a bad word or phrase
        for word in myList {
            if theInput.rangeOfString(word) != nil{
                evilInput = true
            }
        }
        
        //check if more than 100 words
        let wordCount = theInput.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet()).count
        if (wordCount > 100) {
            evilInput = true
        }
        
        if evilInput {
            label.text = ("Your input was evil")
        } else {
            label.text = ("Your input was not evil")
        }

        
    }
  
    

    
}

