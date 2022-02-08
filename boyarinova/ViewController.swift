//
//  ViewController.swift
//  boyarinova
//
//  Created by Vlad Nechyporenko on 12/13/20.
//  Copyright © 2020 Vlad Nechyporenko. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let realm = try! Realm()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        upc.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        code39.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        code39Asc.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        // Do any additional setup after loading the view.
//        makeCode3()
//        for x in finalCode2{
//            string2.append(x)
//        }
//        makeDecode3()
//        makeDecode2()
//        makeDecode()
//        print(finalCode)
//        print(finalDecode)
//
//        for x in finalCode2 {
//            var color = "black"
//            if x.count > 1 {
//                color = "black"
//            }
//            else {
//                color = "white"
//            }
//            for ch in x {
//                drawRectangle2(color)
//                i += 1.1338582677
//                if Int(String(ch)) == 1{
//                  drawRectangle2(color)
//                  i += 1.1338582677
//                }
//                if color == "black"{
//                    color = "white"
//                }
//                else {
//                    color = "black"
//                }
//            }
//        }
    }
    @IBOutlet weak var myView: UIView!
    var i = 0.0
    var string = "aaaaaaaaaa"
    var string2 = ""
    var type = "a"
    var codes = [0:["0001101","1110010","0100111","1011000"],1:["0011001","1100110","0110011","1001100"],2:["0010011","1101100","0011011","1100100"],3:["0111101","1000010","0100001","1011110"],4:["0100011","1011100","0011101","1100010"],5:["0110001","1001110","0111001","1000110"],6:["0101111","1010000","0000101","1111010"],7:["0111011","1000100","0010001","1101110"],8:["0110111","1001000","0001001","1110110"],9:["0001011","1110100","0010111","1101000"]]
    var codes2 = ["000110100","100100001","001100001","101100000","000110001","100110000","001110000","000100101","100100100","001100100","100001001","001001001","100001000","000011001","100011000","001011000","000001101","100001100","001001100","000011100","100000011","001000011","101000010","000010011","100010010","001010010","000000111","100000110","001000110","000010110","110000001","011000001","111000000","010010001","110010000","011010000","010000101","110000100","011000100","010101000","010100010","010001010","000101010","010010100"]
    var code3 = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","-","."," ","$","/","+","%","*"]
    var code4 = ["NUL","SOH","STX","ETX","EOT","ENQ","ACK","BEL","BS","HT","LF","VT","FF","CR","SO","SI","DLE","DC1","DC2","DC3","DC4","NAK","SYN","ETB","CAN","EM","SUB","ESC","FS","GS","RS","US"," ","!","\"","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","[","\\","]","^","_","`","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","|","}","~","DEL"]
    var codes5 = ["000101010110000001","010101000100001001","010101000001001001","010101000100001000","010101000000011001","010101000100011000","010101000001011000","010101000000001101","010101000100001100","010101000001001100","010101000000011100","010101000100000011","010101000001000011","010101000101000010","010101000000010011","010101000100010010","010101000001010010","010101000000000111","010101000100000110","010101000001000110","010101000000010110","010101000110000001","010101000011000001","010101000111000000","010101000010010001","010101000110010000","010101000011010000","000101010100001001","000101010001001001","000101010100001000","000101010000011001","000101010100011000","011000100","010100010100001001","010100010001001001","010100010100001000","010100010000011001","010100010100011000","010100010001011000","010100010000001101","010100010100001100","010100010001001100","010100010000011100","010100010100000011","010100010001000011","010000101","110000100","010100010100010010","000110100","100100001","001100001","101100000","000110001","100110000","001110000","000100101","100100100","001100100","010100010011010000","000101010001011000","000101010000001101","000101010100001100","000101010001001100","000101010000011100","000101010011000001","100001001","001001001","100001000","000011001","100011000","001011000","000001101","100001100","001001100","000011100","100000011","001000011","101000010","000010011","100010010","001010010","000000111","100000110","001000110","000010110","110000001","011000001","111000000","010010001","110010000","011010000","000101010100000011","000101010001000011","000101010101000010","000101010000010011","000101010100010010","000101010111000000","010001010100001001","010001010001001001","010001010100001000","010001010000011001","101000101000011000","010001010001011000","010001010000001101","010001010100001100","010001010001001100","010001010000011100","010001010100000011","010001010001000011","010001010101000010","010001010000010011","010001010100010010","010001010001010010","010001010000000111","010001010100000110","010001010001000110","010001010000010110","010001010110000001","010001010011000001","010001010111000000","010001010010010001","010001010110010000","010001010011010000","000101010001010010","000101010000000111","000101010100000110","000101010001000110","000101010000010110"]
//     var codes2 = ["000110100","100100001","001100001","10110000","000110001","100110000","001110000","000100101","100100100"],"9":["001100100"],"10":["100001001"],"11":["001001001"],"12":["100001000"],"13":["000011001"],"14":["100011000"],"15":["001011000"],"16":["000001101"],"17":["100001100"],"18":["001001100"],"19":["000011100"],"20":["100000011"],"21":["001000011"],"22":["101000010"],"23":["000010011"],"24":["100010010"],"24":["001010010"],"25":["000000111"],"26":["100000110"],"27":["001000110"],"28":["000010110"],"29":["110000001"],"30":["011000001"],"31":["111000000"],"32":["010010001"],"33":["110010000"],"34":["011010000"],"35":["010000101"],"36":["110000100"],"37":["011000100"],"38":["010100000"],"39":["010100010"],"40":["010001010"],"41":["000101010"],"*":["010010100"]]
    var finalCode = ""
    var finalCode2 = [String]()
    var finalDecode = ""
    func drawRectangle(_ color: Int) {
        
        
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 1.1338582677, height: 128))
        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 1.1338582677, height: 128)
            
            if color == 1 {
                ctx.cgContext.setFillColor(UIColor.black.cgColor)
            }
            else if color == 0 {
                ctx.cgContext.setFillColor(UIColor.white.cgColor)
            }
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fill)
        }
        let imageView  = UIImageView(frame:CGRect(x: 0+i, y: 0, width: 2, height: 128));
        imageView.image = img
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        myView.addSubview(imageView)
    }
    func drawRectangle2(_ color: String) {
        
        
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 1.1338582677, height: 128))
        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 1.1338582677, height: 128)
            
            if color == "black" {
                ctx.cgContext.setFillColor(UIColor.black.cgColor)
            }
            else if color == "white" {
                ctx.cgContext.setFillColor(UIColor.white.cgColor)
            }
            if color == "red" {
                ctx.cgContext.setFillColor(UIColor.red.cgColor)
            }
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fill)
        }
        let imageView  = UIImageView(frame:CGRect(x: 0+i, y: 0, width: 2, height: 128));
        imageView.image = img
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        myView.addSubview(imageView)
    }
    
    func roundToHundreds(_ value: Int) -> Int {
        let x: Double = Double(value)/Double(10)
        return Int(ceil(x) * 10)
    }
    
    func makeCode() {
        var count = 0
        var r1 = 0
        var r2 = 0
        var r = 0
        var c = 0
        var numbers = [Int]()
        for x in string {
            numbers.append(Int(String(x))!)
        }
        for x in 0...numbers.count-1 {
            if x == 0 && x % 2 == 0 {
                r1 += numbers[x]
            }
            else {
                r2 += numbers[x]
            }
        }
        r = r1 * 3 + r2
        c = roundToHundreds(r) - r
        string.append(String(c))
        for x in string{
            count += 1
            switch type {
            case "a":
                finalCode.append(codes[Int(String(x))!]![0])
            case "b":
                finalCode.append(codes[Int(String(x))!]![2])
            case "c":
                finalCode.append(codes[Int(String(x))!]![1])
            case "d":
                finalCode.append(codes[Int(String(x))!]![3])
            default:
                print("error")
            }
            if count == 5 {
                finalCode.append("01010")
                type = "c"
            }
        }
        if finalCode[0] == "0" {
            finalCode = "101" + finalCode
            if finalCode[91] == "0" {
                finalCode.append("101")
            }
            else if finalCode[91] == "1" {
                finalCode.append("010101")
            }
        }
        else if finalCode[0] == "1" {
            finalCode = "101010" + finalCode
            if finalCode[93] == "0" {
                finalCode.append("101")
            }
            else if finalCode[93] == "1" {
                finalCode.append("010101")
            }
        }
    }
    
    func makeCode2() {
        var sum = 0
        for x in string {
            sum += code3.firstIndex(of: String(x))!
        }
        let control = sum % 43
        string.append(String(code3[control]))
        finalCode2.append("010010100")
        finalCode2.append("0")
        for x in string{
            let index = code3.firstIndex(of: String(x))!
            finalCode2.append(codes2[index])
            finalCode2.append("0")
        }
        finalCode2.append("010010100")
    }
    
    func makeCode3() {
        var sum = 0
        for x in string {
            sum += code4.firstIndex(of: String(x))!
        }
        let control = sum % 43
        let controlString = String(code4[control])
        finalCode2.append("010010100")
        finalCode2.append("0")
        for x in string{
            let index = code4.firstIndex(of: String(x))!
            finalCode2.append(codes5[index])
            finalCode2.append("0")
        }
        let index = code4.firstIndex(of: String(controlString))!
        finalCode2.append(codes5[index])
        finalCode2.append("0")
        finalCode2.append("010010100")
    }
    
    func makeDecode2() {
        string2 = String(string2.dropFirst(10))
        string2 = String(string2.dropLast(10))
        let totalSymbols = string2.count / 9 - 1
        var str = ""
        var count = 0
        var sum = 0
        var control = 0
        for x in string2 {
            str.append(x)
            count += 1
            if count == 9 {
                let index = codes2.firstIndex(of: str)
                finalDecode.append(code3[index!])
                sum += index!
            }
            if count == 10 {
                str = ""
                count = 0
            }
        }
        let y = finalDecode.count - totalSymbols
        finalDecode = String(finalDecode.dropLast(y))
        control = sum % 43
        if control == Int(finalDecode[finalDecode.count - 1]){
            print("Everything is fine!")
        }
    }
    
    func makeDecode3() {
        string2 = String(string2.dropFirst(10))
        string2 = String(string2.dropLast(9))
        var str = ""
        var totalSymbols = 0
        var count = 0
        var sum = 0
        var control = 0
        for x in string2 {
            str.append(x)
            count += 1
            if count == 10 && Int(String(x)) != 1{
                let str2 = String(str.dropLast(1))
                let index = codes5.firstIndex(of: str2)
                if index != nil{
                finalDecode.append(code4[index!])
                str = ""
                count = 0
                totalSymbols += 1
                }
            }
            if count == 19{
                str = String(str.dropLast(1))
                let index = codes5.firstIndex(of: str)
                finalDecode.append(code4[index!])
                str = ""
                count = 0
                totalSymbols += 1
            }
        }
        totalSymbols -= 1
        var controlDecode = ""
        let y = finalDecode.count - totalSymbols
        for x in totalSymbols...finalDecode.count{
            controlDecode.append(finalDecode[x])
        }
        finalDecode = String(finalDecode.dropLast(y))
        for x in finalDecode {
            sum += code4.firstIndex(of: String(x))!
        }
        control = sum % 43
        if code4[control] == controlDecode{
            print("Everything is fine!")
        }
    }
    @IBAction func saveButton(_ sender: UIButton) {
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
        
        let img = myView.asImage()
        let imgPath = URL(fileURLWithPath: documentDirectoryPath.appendingPathComponent(saveName.text!))
        print(imgPath)
        do{
            try img.jpegData(compressionQuality: 1.0)?.write(to: imgPath, options: .atomic)
        }catch let error{
            print(error.localizedDescription)
        }
    }
    @IBOutlet weak var saveName: UITextField!
    
    func makeDecode() {
        var start = ""
        var finish = ""
        for x in 0...5{
            start.append(string2[x])
        }
        for x in string2.count-5...string2.count{
            finish.append(string2[x])
        }
        if string2.count != 95 {
            if start == "101010" && finish == "010101"{
                if string.count == 101 {
                    string2 = String(string2.dropFirst(6))
                    string2 = String(string2.dropLast(6))
                }
            }
            else if start == "101010" || finish == "010101"{
                var middle = ""
                for x in 49...53 {
                    middle.append(string2[x])
                }
                if string.count == 98 && middle == "01010" {
                    string2 = String(string2.dropFirst(6))
                    string2 = String(string2.dropLast(3))
                }
                else{
                    string2 = String(string2.dropLast(6))
                    string2 = String(string2.dropFirst(3))
                }
            }
        }
        else {
            string2 = String(string2.dropLast(3))
            string2 = String(string2.dropFirst(3))
        }
        var number = ""
        var count = 0
        var count2 = 0
        for x in string2 {
            if count2 == 0 || count2 == 6 {
                number.append(x)
                count += 1
                if count == 7 {
                    for x in codes {
                        for y in x.value {
                            if y == number {
                                finalDecode.append(String(x.key))
                            }
                        }
                    }
                    count = 0
                    number = ""
                }
            }
            if finalDecode.count == 5 && count2 != 6{
                count2 += 1
            }
        }
        var r1 = 0
        var r2 = 0
        var r = 0
        var c = 0
        var numbers = [Int]()
        for x in finalDecode {
            numbers.append(Int(String(x))!)
        }
        for x in 0...numbers.count-2 {
            if x == 0 && x % 2 == 0 {
                r1 += numbers[x]
            }
            else {
                r2 += numbers[x]
            }
        }
        r = r1 * 3 + r2
        c = roundToHundreds(r) - r
        if c == numbers[numbers.count-1] {
            print("Everything is fine!")
        }
        finalDecode = String(finalDecode.dropLast(1))
    }
    
    var code = -1

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var upc: UIButton!
    @IBOutlet weak var code39: UIButton!
    @IBOutlet weak var code39Asc: UIButton!
    @IBOutlet weak var output: UILabel!
    @IBAction func exec1(_ sender: UIButton) {
        code = 0
        upc.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        code39.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        code39Asc.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        typeToRealm = "UPC"
    }
    
    @IBAction func exec2(_ sender: UIButton) {
        code = 1
        upc.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        code39.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        code39Asc.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        typeToRealm = "Code39"
    }
    @IBAction func exec3(_ sender: UIButton) {
        code = 2
        upc.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        code39.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        code39Asc.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        typeToRealm = "Code39ASC"
    }
    var typeToRealm = "UPC"
    func validation() -> Bool{
        if code == 0 {
            if string.count == 11 {
                return CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: string))
            }
            else {
                return false
            }
        }
        if code == 1 {
            for x in string {
                if code3.firstIndex(of: String(x)) == nil {
                    return false
                }
            }
            return true
        }
        if code == 2 {
            for x in string {
                if code4.firstIndex(of: String(x)) == nil {
                    return false
                }
            }
            return true
        }
        return false
    }
    func validation2() -> Bool{
        var symbols = true
        for x in string2 {
            if x != "1" && x != "0" {
                symbols = false
            }
        }
        if symbols {
            print(string2.count)
            if code == 0 {
                if string2.count > 30 {
                    return true
                }
                else {
                    return false
                }
            }
            if code == 1 || code == 2{
                if string2.count > 38 {
                    return true
                }
                else {
                    return false
                }
            }
        }
        else {
            return false
        }
        return false
    }
    @IBAction func code(_ sender: UIButton) {
        string = input.text!
        string2 = ""
        myView.subviews.forEach({ $0.removeFromSuperview() })
        if validation() {
            output.text = ""
            i = 0.0
            finalCode = ""
            finalCode2 = []
            switch code {
            case 0:
                makeCode()
                for x in finalCode {
                    drawRectangle(Int(String(x))!)
                    i += 1.1338582677
                }
            case 1:
                makeCode2()
                for x in finalCode2 {
                    var color = "black"
                    if x.count > 1 {
                        color = "black"
                    }
                    else {
                        color = "white"
                    }
                    for ch in x {
                        drawRectangle2(color)
                        i += 1.1338582677
                        if Int(String(ch)) == 1{
                            drawRectangle2(color)
                            i += 1.1338582677
                        }
                        if color == "black"{
                            color = "white"
                        }
                        else {
                            color = "black"
                        }
                    }
                }
            case 2:
                makeCode3()
                for x in finalCode2 {
                    var color = "black"
                    if x.count > 1 {
                        color = "black"
                    }
                    else {
                        color = "white"
                    }
                    for ch in x {
                        drawRectangle2(color)
                        i += 1.1338582677
                        if Int(String(ch)) == 1{
                            drawRectangle2(color)
                            i += 1.1338582677
                        }
                        if color == "black"{
                            color = "white"
                        }
                        else {
                            color = "black"
                        }
                    }
                }
            default:
                print("Erorr")
            }
            print(finalCode)
            print(finalCode2)
            for x in finalCode2{
                string2.append(x)
            }
            print(string2)
            let dataForDB: MyDB?
            if code != 2 {
                string = String(string.dropLast(1))
            }
            if code == 0 {
                dataForDB = MyDB(value: ["string" : string, "barcode": finalCode, "type": typeToRealm])
            }
            else {
                dataForDB = MyDB(value: ["string" : string, "barcode": string2, "type": typeToRealm])
            }
            try! realm.write {
                realm.add(dataForDB!)
            }
        }
        else {
            print("Wrong input!")
            output.text = "Wrong input!"
        }
    }
    @IBAction func decode(_ sender: UIButton) {
        string = ""
        string2 = input.text!
        myView.subviews.forEach({ $0.removeFromSuperview() })
        print(string2)
        if validation2() {
            output.text = ""
            finalDecode = ""
            switch code {
            case 0:
                makeDecode()
                output.text = finalDecode
            case 1:
                makeDecode2()
                output.text = finalDecode
            case 2:
                makeDecode3()
                output.text = finalDecode
            default:
                print("Wrong input!")
                output.text = "Wrong input!"
            }
            let dataForDB = MyDB(value: ["string" : finalDecode, "barcode": string2, "type": typeToRealm])
            try! realm.write {
                realm.add(dataForDB)
            }
        }
        else {
            print("Wrong input!")
            output.text = "Wrong input!"
        }
    }
}

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

extension UIView {

    // Using a function since `var image` might conflict with an existing variable
    // (like on `UIImageView`)
    func asImage() -> UIImage {
        if #available(iOS 10.0, *) {
            let renderer = UIGraphicsImageRenderer(bounds: bounds)
            return renderer.image { rendererContext in
                layer.render(in: rendererContext.cgContext)
            }
        } else {
            UIGraphicsBeginImageContext(self.frame.size)
            self.layer.render(in:UIGraphicsGetCurrentContext()!)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return UIImage(cgImage: image!.cgImage!)
        }
    }
}



