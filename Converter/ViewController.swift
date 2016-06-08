//
//  ViewController.swift
//  Converter
//
//  Created by Cassio Henrique Garcia Morales on 5/24/16.
//  Copyright © 2016 Cassio Henrique Garcia Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /**********
     DECLARATION
     **********/
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var aboutview: UIView!
    
    @IBOutlet weak var aboutButton: UISegmentedControl!
    
    @IBOutlet weak var typeButton: UISegmentedControl!
    
    @IBOutlet weak var screenLabel: UILabel!
    
    @IBOutlet weak var LabelOne: UILabel!
    
    @IBOutlet weak var LabelTwo: UILabel!
    
    @IBOutlet weak var Label3: UILabel!
    
    @IBOutlet weak var Label4: UILabel!
    
    @IBOutlet weak var aButton: UIButton!
    
    @IBOutlet weak var bButton: UIButton!
    
    @IBOutlet weak var cButton: UIButton!
    
    @IBOutlet weak var dButton: UIButton!
    
    @IBOutlet weak var eButton: UIButton!
    
    @IBOutlet weak var fButton: UIButton!
    
    @IBOutlet weak var ffButton: UIButton!
    
    @IBOutlet weak var ffffButton: UIButton!
    
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var threeButton: UIButton!
    
    @IBOutlet weak var tenButton: UIButton!
    
    @IBOutlet weak var elevenButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    
    @IBOutlet weak var fiveButton: UIButton!
    
    @IBOutlet weak var sixButton: UIButton!
    
    @IBOutlet weak var zerozeroButton: UIButton!
    
    @IBOutlet weak var zerooneButton: UIButton!
    
    @IBOutlet weak var sevenButton: UIButton!
    
    @IBOutlet weak var eightButton: UIButton!
    
    @IBOutlet weak var nineButton: UIButton!
    
    var flag:Int = 0
    
    var flag2:Int = 0
    
    var i:Int = 0
    
    var decimal:Int = 0
    
    var intNum:Int = 0
    
    var verifingType:Int = 0
    
    var cara:Character = "a"
    
    var decimal2:UInt8 = 0
    
    var keyboardArray: [String] = []
    
    var binaryNumber: [Int] = []
    
    var kbArrayCounter:Int = 0
    
    var displayString:String = ""
    
    var displayConverted:String = ""
    
    var stringHex:String = ""
    
    /****************************
     FUNCTIONS FOR PRESSED BUTTONS
     ****************************/
    
    @IBAction func aButtonPressed(sender: UIButton) {
        keyboardArray.insert("A", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func bButtonPressed(sender: UIButton) {
        keyboardArray.insert("B", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func cButtonPressed(sender: UIButton) {
        keyboardArray.insert("C", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func dButtonPressed(sender: UIButton) {
        keyboardArray.insert("D", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func eButtonPressed(sender: UIButton) {
        keyboardArray.insert("E", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func fButtonPressed(sender: UIButton) {
        keyboardArray.insert("F", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func zeroButtonPressed(sender: UIButton) {
        keyboardArray.insert("0", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func ffButtonPressed(sender: UIButton) {
        keyboardArray.insert("FF", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func ffffButtonPressed(sender: UIButton) {
        keyboardArray.insert("FFFF", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func oneButtonPressed(sender: UIButton) {
        keyboardArray.insert("1", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func twoButtonPressed(sender: UIButton) {
        keyboardArray.insert("2", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func threeButtonPressed(sender: UIButton) {
        keyboardArray.insert("3", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func tenButtonPressed(sender: UIButton) {
        keyboardArray.insert("10", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func elevenButtonPressed(sender: UIButton) {
        keyboardArray.insert("11", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func fourButtonPressed(sender: UIButton) {
        keyboardArray.insert("4", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func fiveButtonPressed(sender: UIButton) {
        keyboardArray.insert("5", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func sixButtonPressed(sender: UIButton) {
        keyboardArray.insert("6", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func zerozeroButtonPressed(sender: UIButton) {
        keyboardArray.insert("00", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func zerooneButtonPressed(sender: UIButton) {
        keyboardArray.insert("01", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func sevenButtonPressed(sender: UIButton) {
        keyboardArray.insert("7", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func eightButtonPressed(sender: UIButton) {
        keyboardArray.insert("8", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func nineButtonPressed(sender: UIButton) {
        keyboardArray.insert("9", atIndex:kbArrayCounter)
        arraytoString()
    }
    
    @IBAction func clearButtonPressed(sender: UIButton) {
        displayString = ""
        self.screenLabel.text = String(displayString)
        kbArrayCounter = 0
        convertDisplay()
    }
    
    @IBAction func delButtonPressed(sender: UIButton) {
        if displayString.isEmpty {
            self.screenLabel.text = String(displayString)
        }
        else{
            displayString.removeAtIndex(displayString.endIndex.predecessor())
            self.screenLabel.text = String(displayString)
        }
        convertDisplay()
    }
    
    @IBAction func typeButtonAction(sender: UISegmentedControl) {
        //This function enables and disables some buttons depending on witch type the user wants to
        // convert his number
        convertDisplay()
        switch typeButton.selectedSegmentIndex{
        case 0:
            convertDisplay()
            self.Label4.text = String()
            self.Label3.text = String()
            self.LabelOne.text = String()
            self.LabelTwo.text = String()
            zeroButton.enabled = true
            zerozeroButton.enabled = true
            zerooneButton.enabled = true
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
            ffButton.enabled = false
            ffffButton.enabled = false
            twoButton.enabled = true
            threeButton.enabled = true
            fourButton.enabled = true
            fiveButton.enabled = true
            sixButton.enabled = true
            sevenButton.enabled = true
            eightButton.enabled = true
            nineButton.enabled = true
            tenButton.enabled = true
            elevenButton.enabled = true
        case 1:
            convertDisplay()
            self.Label4.text = String()
            self.Label3.text = String()
            self.LabelOne.text = String()
            self.LabelTwo.text = String()
            zeroButton.enabled = true
            zerozeroButton.enabled = true
            zerooneButton.enabled = true
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
            ffButton.enabled = false
            ffffButton.enabled = false
            twoButton.enabled = true
            threeButton.enabled = true
            fourButton.enabled = true
            fiveButton.enabled = true
            sixButton.enabled = true
            sevenButton.enabled = true
            eightButton.enabled = false
            nineButton.enabled = false
            tenButton.enabled = true
            elevenButton.enabled = true
        case 2:
            convertDisplay()
            self.Label4.text = String()
            self.Label3.text = String()
            self.LabelOne.text = String()
            self.LabelTwo.text = String()
            zeroButton.enabled = true
            zerozeroButton.enabled = true
            zerooneButton.enabled = true
            aButton.enabled = true
            bButton.enabled = true
            cButton.enabled = true
            dButton.enabled = true
            eButton.enabled = true
            fButton.enabled = true
            ffButton.enabled = true
            ffffButton.enabled = true
            twoButton.enabled = true
            threeButton.enabled = true
            fourButton.enabled = true
            fiveButton.enabled = true
            sixButton.enabled = true
            sevenButton.enabled = true
            eightButton.enabled = true
            nineButton.enabled = true
            tenButton.enabled = true
            elevenButton.enabled = true
        default:
            convertDisplay()
            self.Label4.text = String()
            self.Label3.text = String()
            self.LabelOne.text = String()
            self.LabelTwo.text = String()
            zeroButton.enabled = true
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
            ffButton.enabled = false
            ffffButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            zerozeroButton.enabled = true
            zerooneButton.enabled = true
            tenButton.enabled = true
            elevenButton.enabled = true
            
        }
        convertDisplay()

    }
    
    /*******************************************
     FUNCTIONS THAT WORK WITH THE PRESSED BUTTONS
     *******************************************/
    
    func arraytoString(){
        //This funciton puts the numbers of the array in the string
        displayString = displayString + keyboardArray[kbArrayCounter]
        self.screenLabel.text = String(displayString)
        kbArrayCounter += kbArrayCounter
        convertDisplay()
    }
    
    func verifyType() -> Int{
        //This function verifies which type is selected
        switch typeButton.selectedSegmentIndex{
        case 0:
            return 0
        case 1:
            return 1
        case 2:
            return 2
        default:
            return 3
        }
    }
    
    func convertDisplay(){
        //This function calls other functions to convert the number the user entered
        switch typeButton.selectedSegmentIndex{
        case 0:
            if (displayString.containsString("A") || displayString.containsString("B") || displayString.containsString("C") || displayString.containsString("D") || displayString.containsString("E") || displayString.containsString("F")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
                decToOcta(displayString)
                decToHex(displayString)
                decToBin(displayString)
                self.LabelOne.text = String(displayString)
            }
            
            
        case 1:
            if (displayString.containsString("A") || displayString.containsString("B") || displayString.containsString("C") || displayString.containsString("D") || displayString.containsString("E") || displayString.containsString("F")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
                decToBin(String(octaToDec(displayString)))
                decToHex(String(octaToDec(displayString)))
                self.LabelTwo.text = String(displayString)
            }
            
            
        case 2:
            decToBin(String(hexToDec(displayString)))
            decToOcta(String(hexToDec(displayString)))
            self.Label3.text = String(displayString)
            
        default:
            if (displayString.containsString("A") || displayString.containsString("B") || displayString.containsString("C") || displayString.containsString("D") || displayString.containsString("E") || displayString.containsString("F") || displayString.containsString("2") || displayString.containsString("3") || displayString.containsString("4") || displayString.containsString("5") || displayString.containsString("6") || displayString.containsString("7") || displayString.containsString("8") || displayString.containsString("9")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
                decToOcta(String(binToDec(displayString)))
                decToHex(String(binToDec(displayString)))
                 self.Label4.text = String(displayString)
            }
            flag2 = 0
        }
        
    }
    
    func decToBin(stringToConvert: String){
        //This function converts decimal numbers to binary numbers and displays it
        intNum = (stringToConvert as NSString).integerValue
        if(intNum < 100000000000000000){
            while intNum != 0{
                binaryNumber.insert(intNum % 2, atIndex: i)
                intNum = intNum / 2
                i = i + 1
            }
            //Displaying the converted number
            i = binaryNumber.count
            while i > 0{
                displayConverted = displayConverted + String(binaryNumber[i - 1])
                i = i - 1
            }
            if displayString.isEmpty{
                self.Label4.text = String()
            }
            else{
                self.Label4.text = String(displayConverted)
            }
            binaryNumber.removeAll()
            i = 0
            displayConverted = ""
        }
        else{
            self.Label4.text = String("N/A")
        }
    }
    
    func decToOcta(stringToConvert: String){
        //This funciton converts decimal numbers to binary numbers and displays it
        intNum = (stringToConvert as NSString).integerValue
        if(intNum < 100000000000000000 && flag2 == 0){
            while intNum != 0{
                binaryNumber.insert(intNum % 8, atIndex: i)
                intNum = intNum / 8
                i = i + 1
            }
            //Displaying the converted number
            i = binaryNumber.count
            while i > 0{
                displayConverted = displayConverted + String(binaryNumber[i - 1])
                i = i - 1
            }
            if displayString.isEmpty{
                self.LabelTwo.text = String()
            }
            else{
                self.LabelTwo.text = String(displayConverted)
            }
            binaryNumber.removeAll()
            i = 0
            displayConverted = ""
        }
        else{
            self.LabelTwo.text = String("N/A")
        }
    }
    
    func decToHex(stringToConvert: String){
        intNum = (stringToConvert as NSString).integerValue
        if(intNum < 10000000000 && flag2 == 0){
            stringHex = String(format:"%2X", intNum)
            if displayString.isEmpty{
                self.Label3.text = String()
            }
            else{
                self.Label3.text = String(stringHex)
            }
        }
        else{
            self.Label3.text = String("N/A")
        }
    }
    
    func binToDec(stringToConvert: String)->Int{
        //This funciton converts binary numbers to decimal and displays it
        //intNum = (stringToConvert as NSString).integerValue
        /*while intNum != 0{
            decimal = decimal + ((intNum % 10) * Int(pow(2.0, Float(i))))
            //binaryNumber.insert(intNum % 2, atIndex: i)
            intNum = intNum / 10
            i = i + 1
        }
        */
        i = 0
        decimal = 0
        i = stringToConvert.characters.count
        for cara in stringToConvert.characters {
            if(cara == "1"){
            decimal = decimal + Int(pow(2.0, Float(i - 1)))
            i = i - 1
            }
            else{
                i = i - 1
            }
        }
        i = 0
        if(decimal < 4294000000){
            flag = 1
        }
        if(flag == 1){
            if displayString.isEmpty{
                self.LabelOne.text = String()
            }
            else{
                self.LabelOne.text = String(decimal)
            }
        }
        else{
            self.LabelOne.text = String("N/A")
            flag2 = 1
        }
        flag = 0
        return decimal
    }
    
    func octaToDec(stringToConvert: String)->Int{
        //This funciton converts binary numbers to decimal and displays it
        intNum = (stringToConvert as NSString).integerValue
        i = 0
        decimal = 0
        while intNum != 0{
            decimal = decimal + ((intNum % 10) * Int(pow(8.0, Float(i))))
            //binaryNumber.insert(intNum % 2, atIndex: i)
            intNum = intNum / 10
            i = i + 1
        }
        if(decimal < 100000000000000000){
            flag = 1
        }
        i = 0
        if(flag == 1){
            if displayString.isEmpty{
                self.LabelOne.text = String()
            }
            else{
                self.LabelOne.text = String(decimal)
            }
        }
        else{
            self.LabelOne.text = String("N/A")
        }
        flag = 0
        return decimal
    }
    
    func hexToDec(stringToConvert: String)->Int{
        decimal = 0
        if ((UInt64(strtoul(stringToConvert, nil, 16))) < 100000000000000000){
            flag = 1
            decimal = Int(UInt64(strtoul(stringToConvert, nil, 16)))
        }
        if(flag == 1){
            if displayString.isEmpty{
                self.LabelOne.text = String()
            }
            else{
                self.LabelOne.text = String(decimal)
            }
             flag = 0
            return decimal
        }
        else{
            self.LabelOne.text = String("N/A")
            flag = 0
            return 100000000000000000
        }
    }
    
    @IBAction func aboutAction(sender: UISegmentedControl) {
        //This function changes the view for the user
        switch aboutButton.selectedSegmentIndex{
        case 0:
            self.aboutview.hidden = true
            
        case 1:
            self.aboutview.hidden = false
            
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}