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
    
    var sizeInt:Int = 0
    
    var tempSizeInt:Int = 0
    
    var floatNum:Float = 0
    
    var cara:Character = "a"
    
    var decimal2:UInt64 = 0
    
    var keyboardArray: [String] = []
    
    var binaryNumber: [Int] = []
    
    var kbArrayCounter:Int = 0
    
    var displayString:String = ""
    
    var displayConverted:String = ""
    
    var stringHex:String = ""
    
    var stringAfterdot:String = ""
    
    var dotString:String = ""
    
    /****************************
     FUNCTIONS FOR PRESSED BUTTONS
     ****************************/
    
    @IBAction func aButtonPressed(sender: UIButton) {
        keyboardArray.insert("A", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func bButtonPressed(sender: UIButton) {
        keyboardArray.insert("B", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func cButtonPressed(sender: UIButton) {
        keyboardArray.insert("C", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func dButtonPressed(sender: UIButton) {
        keyboardArray.insert("D", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func eButtonPressed(sender: UIButton) {
        keyboardArray.insert("E", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func fButtonPressed(sender: UIButton) {
        keyboardArray.insert("F", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func zeroButtonPressed(sender: UIButton) {
        keyboardArray.insert("0", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func ffButtonPressed(sender: UIButton) {
        keyboardArray.insert(".", atIndex:kbArrayCounter)
        ffButton.enabled = false
        dotString = "."
        // arraytoString()
    }
    
    @IBAction func ffffButtonPressed(sender: UIButton) {
        keyboardArray.insert("FF", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func oneButtonPressed(sender: UIButton) {
        keyboardArray.insert("1", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func twoButtonPressed(sender: UIButton) {
        keyboardArray.insert("2", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func threeButtonPressed(sender: UIButton) {
        keyboardArray.insert("3", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func tenButtonPressed(sender: UIButton) {
        keyboardArray.insert("10", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func elevenButtonPressed(sender: UIButton) {
        keyboardArray.insert("11", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func fourButtonPressed(sender: UIButton) {
        keyboardArray.insert("4", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func fiveButtonPressed(sender: UIButton) {
        keyboardArray.insert("5", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func sixButtonPressed(sender: UIButton) {
        keyboardArray.insert("6", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func zerozeroButtonPressed(sender: UIButton) {
        keyboardArray.insert("00", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func zerooneButtonPressed(sender: UIButton) {
        keyboardArray.insert("01", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func sevenButtonPressed(sender: UIButton) {
        keyboardArray.insert("7", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func eightButtonPressed(sender: UIButton) {
        keyboardArray.insert("8", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func nineButtonPressed(sender: UIButton) {
        keyboardArray.insert("9", atIndex:kbArrayCounter)
        if dotString.isEmpty{
            arraytoString()
        }
        else{
            arrayToAfterString()
        }
    }
    
    @IBAction func clearButtonPressed(sender: UIButton) {
        displayString = ""
        self.screenLabel.text = String(displayString)
        kbArrayCounter = 0
        ffButton.enabled = true
        dotString = ""
        stringAfterdot = ""
        sizeInt = 0
        convertDisplay()
        convertDisplayAfterDot()
    }
    
    @IBAction func delButtonPressed(sender: UIButton) {
        if dotString.isEmpty{
            if displayString.isEmpty {
                self.screenLabel.text = String(displayString)
            }
            else{
                displayString.removeAtIndex(displayString.endIndex.predecessor())
                self.screenLabel.text = String(displayString)
            }
            convertDisplay()
        }
        else if (!stringAfterdot.isEmpty){
            stringAfterdot.removeAtIndex(stringAfterdot.endIndex.predecessor())
            self.screenLabel.text = String(displayString + dotString + stringAfterdot)
            //converte o diferente
             sizeInt = sizeInt - 1
           convertDisplayAfterDot()
        }
        else{
            dotString.removeAtIndex(dotString.endIndex.predecessor())
            self.screenLabel.text = String(displayString)
            dotString = ""
            ffButton.enabled = true
            convertDisplay()
        }
    }
    
    @IBAction func typeButtonAction(sender: UISegmentedControl) {
        //This function enables and disables some buttons depending on witch type the user wants to
        // convert his number
        convertDisplay()
        convertDisplayAfterDot()
        switch typeButton.selectedSegmentIndex{
        case 0:
            convertDisplay()
            convertDisplayAfterDot()
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
            convertDisplayAfterDot()
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
            convertDisplayAfterDot()
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
            //convertDisplayAfterDot()
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
        convertDisplayAfterDot()
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
    
    func arrayToAfterString(){
        stringAfterdot = stringAfterdot + keyboardArray[kbArrayCounter]
        self.screenLabel.text = String(displayString + dotString + stringAfterdot)
        kbArrayCounter += kbArrayCounter
        sizeInt = sizeInt + 1
        convertDisplayAfterDot()
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
                self.LabelOne.text = String(displayString + dotString + stringAfterdot)
                self.Label4.text = String(decToBin(displayString) + dotString + stringAfterdot)
                self.LabelTwo.text = String(decToOcta(displayString) + dotString + stringAfterdot)
                self.Label3.text = String(decToHex(displayString) + dotString + stringAfterdot)
            }
            
        case 1:
            if (displayString.containsString("A") || displayString.containsString("B") || displayString.containsString("C") || displayString.containsString("D") || displayString.containsString("E") || displayString.containsString("F")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
               // decToBin(String(octaToDec(displayString)))
                self.LabelOne.text = String(String(octaToDec(displayString)) + dotString + stringAfterdot)
                self.Label3.text = String(decToHex(String(octaToDec(displayString))) + dotString + stringAfterdot)
                self.Label4.text = String(decToBin(String(octaToDec(displayString))) + dotString + stringAfterdot)
                self.LabelTwo.text = String(displayString + dotString + stringAfterdot)
            }
            
        case 2:
           // decToBin(String(hexToDec(displayString)))
            //decToOcta(String(hexToDec(displayString)))
            self.Label3.text = String(displayString + dotString + stringAfterdot)
            self.LabelOne.text = String(String(hexToDec(displayString)) + dotString + stringAfterdot)
            self.LabelTwo.text = String(decToOcta(String(hexToDec(displayString))) + dotString + stringAfterdot)
            self.Label4.text = String(decToBin(String(hexToDec(displayString))) + dotString + stringAfterdot)
            
        default:
            if (displayString.containsString("A") || displayString.containsString("B") || displayString.containsString("C") || displayString.containsString("D") || displayString.containsString("E") || displayString.containsString("F") || displayString.containsString("2") || displayString.containsString("3") || displayString.containsString("4") || displayString.containsString("5") || displayString.containsString("6") || displayString.containsString("7") || displayString.containsString("8") || displayString.containsString("9")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
              //  decToOcta(String(binToDec(displayString)))
                //self.LabelOne.text = String(String(binToDec(displayString)) + dotString + stringAfterdot)
                self.LabelTwo.text = String(decToOcta(String(binToDec(displayString))) + dotString + stringAfterdot)
                self.Label3.text = String(decToHex(String(binToDec(displayString))) + dotString + stringAfterdot)
                self.Label4.text = String(displayString + dotString + stringAfterdot)
                binToDec(displayString)
            }
            flag2 = 0
        }
        
    }
    
    func decToBin(stringToConvert: String)->String{
        //This function converts decimal numbers to binary numbers and displays it
        intNum = (stringToConvert as NSString).integerValue
        displayConverted = ""
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
            binaryNumber.removeAll()
            i = 0
            if displayString.isEmpty{
                return("")
            }
            else{
                return(String(displayConverted))
            }
            
        }
        else{
            return("N/A")
        }
    }
    
    func decToOcta(stringToConvert: String)->String{
        //This funciton converts decimal numbers to binary numbers and displays it
        intNum = (stringToConvert as NSString).integerValue
        displayConverted = ""
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
            binaryNumber.removeAll()
            i = 0
            if displayString.isEmpty{
                return("")
            }
            else{
                return(String(displayConverted))
            }
        }
        else{
            return("N/A")
        }
    }
    
    func decToHex(stringToConvert: String)->String{
        intNum = (stringToConvert as NSString).integerValue
        if(intNum < 10000000000 && flag2 == 0){
            stringHex = String(format:"%2X", intNum)
            if displayString.isEmpty{
                return("")
            }
            else{
                return(stringHex)
            }
        }
        else{
            return("N/A")
        }
    }
    
    func binToDec(stringToConvert: String)->Int{
        //This funciton converts binary numbers to decimal and displays it
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
        cara = "a"
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
    
    func convertDisplayAfterDot(){
        switch typeButton.selectedSegmentIndex{
        case 0:
            if (stringAfterdot.containsString("A") || stringAfterdot.containsString("B") || stringAfterdot.containsString("C") || stringAfterdot.containsString("D") || stringAfterdot.containsString("E") || stringAfterdot.containsString("F")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
                self.Label4.text = String(decToBin(displayString) + dotString + decToBinAfterDot(stringAfterdot))
                self.LabelTwo.text = String(decToOcta(displayString) + dotString + decToOctaAfterDot(stringAfterdot))
                self.LabelOne.text = String(displayString + dotString + stringAfterdot)
                self.Label3.text = String(decToHex(displayString) + dotString + decToHexAfterDot(stringAfterdot))
            }
            
        case 1:
            if (stringAfterdot.containsString("A") || stringAfterdot.containsString("B") || stringAfterdot.containsString("C") || stringAfterdot.containsString("D") || stringAfterdot.containsString("E") || stringAfterdot.containsString("F")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
                self.LabelTwo.text = String(displayString + dotString + stringAfterdot)
                self.LabelOne.text = String(String(octaToDec(displayString)) + dotString + octaToDecAfterDot(stringAfterdot))
                self.Label3.text = String(decToHex(String(octaToDec(displayString))) + dotString + decToHexAfterDot(octaToDecAfterDot(stringAfterdot)))
                self.Label4.text = String(decToBin(String(octaToDec(displayString))) + dotString + decToBinAfterDot(octaToDecAfterDot(stringAfterdot)))
            }
            
        case 2:
            self.Label3.text = String(displayString + dotString + stringAfterdot)
            self.LabelOne.text = String(String(hexToDec(displayString)) + dotString + hexToDecAfterDot(stringAfterdot))
            self.LabelTwo.text = String(decToOcta(String(hexToDec(displayString))) + dotString + decToOctaAfterDot(hexToDecAfterDot(stringAfterdot)))
            self.Label4.text = String(decToBin(String(hexToDec(displayString))) + dotString + decToBinAfterDot(hexToDecAfterDot(stringAfterdot)))
            
        default:
            if (stringAfterdot.containsString("A") || stringAfterdot.containsString("B") || stringAfterdot.containsString("C") || stringAfterdot.containsString("D") || stringAfterdot.containsString("E") || stringAfterdot.containsString("F") || stringAfterdot.containsString("2") || stringAfterdot.containsString("3") || stringAfterdot.containsString("4") || stringAfterdot.containsString("5") || stringAfterdot.containsString("6") || stringAfterdot.containsString("7") || stringAfterdot.containsString("8") || stringAfterdot.containsString("9")){
                self.LabelOne.text = String("N/A")
                self.LabelTwo.text = String("N/A")
                self.Label3.text = String("N/A")
                self.Label4.text = String("N/A")
            }
            else{
                self.Label4.text = String(displayString + dotString + stringAfterdot)
                self.LabelOne.text = String(String(binToDec(displayString)) + dotString + binToDecAfterDot(stringAfterdot))
                self.LabelTwo.text = String(decToOcta(String(binToDec(displayString))) + dotString + decToOctaAfterDot(binToDecAfterDot(stringAfterdot)))
                self.Label3.text = String(decToHex(String(binToDec(displayString))) + dotString + decToHexAfterDot(binToDecAfterDot(stringAfterdot)))
            }
            flag2 = 0
        }
    }
    
    func decToBinAfterDot(stringToConvert: String)->String{
        //This function converts decimal numbers to binary numbers and displays it
        displayConverted = ""
        intNum = (stringToConvert as NSString).integerValue
        floatNum = Float(intNum)
        i = 0
        floatNum = floatNum / pow(10.0, Float(sizeInt))
        intNum = Int(floatNum * 256)
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
            binaryNumber.removeAll()
            i = 0
            floatNum = 0
            if stringToConvert.isEmpty{
                return("")
            }
            else{
                return(String(displayConverted))
            }
        }
        else{
                return("N/A")
        }
    }
    
    func decToOctaAfterDot(stringToConvert: String)->String{
        //This function converts decimal numbers to binary numbers and displays it
        displayConverted = ""
        intNum = (stringToConvert as NSString).integerValue
        floatNum = Float(intNum)
        i = 0
        floatNum = floatNum / pow(10.0, Float(sizeInt))
        //intNum = Int(floatNum * 64)
        if(intNum < 100000000000000000){
            while i < 3{
                binaryNumber.insert(Int(floor(floatNum * 8)), atIndex: i)
                floatNum = (floatNum * 8) - floor(floatNum * 8)
                i = i + 1
            }
            //Displaying the converted number
            //i = binaryNumber.count
            i = 0
            while i < binaryNumber.count{
                displayConverted = displayConverted + String(binaryNumber[i])
                i = i + 1
            }
            binaryNumber.removeAll()
            i = 0
            if stringToConvert.isEmpty{
                return("")
            }
            else{
                return(String(displayConverted))
            }
        }
        else{
            return("N/A")
        }
    }
    
    func decToHexAfterDot(stringToConvert: String)->String{
        //This function converts decimal numbers to binary numbers and displays it
        displayConverted = ""
        intNum = (stringToConvert as NSString).integerValue
        floatNum = Float(intNum)
        i = 0
        floatNum = floatNum / pow(10.0, Float(sizeInt))
        if(intNum < 100000000000000000){
            while i < 5{
                binaryNumber.insert(Int(floor(floatNum * 16)), atIndex: i)
                displayConverted = displayConverted + String(format:"%X", binaryNumber[i])
                floatNum = (floatNum * 16) - floor(floatNum * 16)
                i = i + 1
            }
            //Displaying the converted number
            //i = binaryNumber.count
            binaryNumber.removeAll()
            i = 0
            if stringToConvert.isEmpty{
                return("")
            }
            else{
                return(String(displayConverted))
            }
        }
        else{
            return("N/A")
        }
    }
    
    func octaToDecAfterDot(stringToConvert: String)->String{
        intNum = (stringToConvert as NSString).integerValue
        i = 1
        decimal = 0
        tempSizeInt = sizeInt
        floatNum = 0
        if(intNum < 100000000000000000){
            while tempSizeInt > 0{
                floatNum = floatNum + Float((Float(intNum / Int(pow(10.0, Float(tempSizeInt - 1))))) / (pow(8.0, Float(i))))
                intNum = intNum % Int(pow(10.0, Float(tempSizeInt - 1)))
                i = i + 1
                tempSizeInt = tempSizeInt - 1
            }
            decimal = Int(floatNum * pow(10.0, Float(sizeInt)))
            i = 0
            if stringToConvert.isEmpty{
                self.LabelOne.text = String()
                return("")
            }
            else{
               self.LabelOne.text = String(String(octaToDec(displayString)) + dotString + String(decimal))
                return(String(decimal))
            }
           }
        else{
            self.LabelOne.text = String("N/A")
            return("N/A")
        }
    }
    
    func binToDecAfterDot(stringToConvert: String)->String{
        i = 1
        floatNum = 0
        decimal = 0
        for cara in stringToConvert.characters {
            if(cara == "1"){
                floatNum = floatNum + pow(2.0, Float(i * -1))
                i = i + 1
            }
            else{
                i = i + 1
            }
        }
        cara = "a"
        decimal = Int(floatNum * pow(10.0, Float(sizeInt)))
        i = 0
        if(decimal < 4294000000){
            flag = 1
        }
        if(flag == 1){
            if stringToConvert.isEmpty{
                self.LabelOne.text = String()
                return("")
            }
            else{
                self.LabelOne.text = String(String(binToDec(displayString)) + dotString + String(decimal))
                return(String(decimal))
            }
        }
        else{
             flag = 0
            self.LabelOne.text = String("N/A")
            return("N/A")
            //flag2 = 1
        }
    }
    
    func hexToDecAfterDot(stringToConvert: String)-> String{
        intNum = Int(UInt64(strtoul(stringToConvert, nil, 16)))
        i = 1
        floatNum = 0
        if(intNum < 100000000000000000){
            for cara in stringToConvert.characters{
                intNum = Int(UInt64(strtoul(String(cara), nil, 16)))
                floatNum = floatNum + Float((Float(intNum))) / (pow(16.0, Float(i)))
                i = i + 1
            }
            decimal = Int(floatNum * pow(10.0, Float(sizeInt)))
            i = 0
            cara = "a"
            floatNum = 0
            if stringToConvert.isEmpty{
                self.LabelOne.text = String()
                return("")
            }
            else{
                self.LabelOne.text = String(String(hexToDec(displayString)) + dotString + String(decimal))
                return(String(decimal))
            }
        }
        else{
            self.LabelOne.text = String("N/A")
            return("N/A")
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
    //http://stackoverflow.com/questions/20650954/how-to-convert-decimal-fractions-to-hexadecimal-fractions
    //https://www.mathsisfun.com/binary-decimal-hexadecimal-converter.html
}