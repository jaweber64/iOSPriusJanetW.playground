//Playground - noun: a place where people can play

// Build My Prius - Week 8 lab - Classes/Objects
// Janet Weber DUE 10/12/2015

// Assignment: Define a playground that allows you to select the model, 
// color, packages, and accessories.

import UIKit
// ****************************************
// Class definition - Prius
// ****************************************
class Prius{
    // ********** properties  ********************
    // These are from the constant arrays declared in main program
    // Only one model, color or config can be chosen.
    // Many accessories (array) can be chosen
    var model : String
    var color : String
    var config : String
    var accessory:[String]
    
    // ********** methods ***********************
    // The description method creates a string containing all of the
    //    options currently selected for this prius.
    func description() -> String {
        var j : Int  // loop variable
        var descrStr : String = "   Model: \(model) \n   Color: \(color)" +
                            "\n   Configuration: \(config)"
        
        // Determine if there are accessories
        if accessory[0] == "None" {
            descrStr += "\n   Accessories: NONE"  // if NOT, then add NONE to
        } else {                                  //   output string
            descrStr += "\n   Accessories:"       // Otherwise loop thru array
            for (j=0; j<accessory.count; j++){    //   adding to output string
                descrStr += "\n       * \(accessory[j])"
            }
        }
        descrStr += "\n"                          // add newline to output string
        return(descrStr)                          //   and return
    }
    
    // The addAccessory method adds an accessory option to the array
    //   The argument passed in is the name of the accessory
    func addAccessory(name:String) {
        if (self.accessory[0] == "None") {  // if first accessory then put
            self.accessory[0] = name        //   accessory at index 0
        } else {                            // Otherwise add it to array
            self.accessory += ["\(name)"]   //   at next index
        }
    }
    
    // default initializer - gets called automatically when object 
    //                      of this class is instantiated.
    init(){
        model = "L"
        color = "Super White"
        config = "4-speed automatic"
        accessory = ["None"]
    }
    
} // end if class Prius definition

// ********************************************
// Constants => available options arrays
// *******************************************
let modelOptions : [String] = ["L","LE","LE PLUS","LE Eco","LE Eco Plus","S Plus",
                    "S Plus CVT","S Special Edition","S Plus 6MT","LE Premium",
                    "LE Eco Premium","S Premium"]
let colorOptions = ["Black Sand Pearl","Slate Metallic","Super White",
                    "Classic Silver Metallic"]
let configOptions = ["6-Speed Manual","4-Speed Automatic"]
let accessoryPkgs = ["All-Weather Floor Mat Pkg","Body Protection Pkg",
                "Protection Pkg", "Carpet Mat Pkg","Four Season Floor Mat Pkg"]
let accessoryInt = ["All Weather Floor Mats","Ashtray Cup","Cargo Net-Envelope",
                "Cargo Tote","Cargo Tray","Carpet Floor Mats","Carpet Trunk Mat",
                "Door Sill Protectors","Emergency Assistance Kit",
                "First Aid Kit","Illuminated Door Sills","Key Finder"]
let accessoryExt = ["Body Side Moldings","Door Edge Guards","Mudguards",
                "Paint Protection Film","Rear Bumper Protector"]
let accessoryPerf = ["TRD Performance Air Filter","TRD Performance Exhaust",
                "TRD Sway Bars"]
// ********************************************
// Variables
// ********************************************
var i : Int    //  loop variable
var janetsPrius = Prius()
var joesPrius = Prius()
var marksPrius = Prius()

// ********************************************
// Start of main program
// ********************************************
println("A standard Prius has the following options: ")
println(janetsPrius.description())

println("Available Colors are: ")
for (i=0; i<colorOptions.count; i++){
    println("     => \(colorOptions[i])")
}
println("\nAvailable Models are: ")
for (i=0; i<modelOptions.count; i++){
    println("     => \(modelOptions[i])")
}
println("\nAvailable Accessories are: ")
println("   Interior:")
for (i=0; i<accessoryInt.count; i++) {
    println("      * \(accessoryInt[i])")
}
println("   Exterior:")
for (i=0; i<accessoryExt.count; i++) {
    println("      * \(accessoryExt[i])")
}
println("   Performance:")
for (i=0; i<accessoryPerf.count; i++) {
    println("      * \(accessoryPerf[i])")
}
println("   Packages:")
for (i=0; i<accessoryPkgs.count; i++) {
    println("      * \(accessoryPkgs[i])")
}

janetsPrius.model = "LE Premium"
janetsPrius.color="Black Sand Pearl"
janetsPrius.config="6-speed Manual"
janetsPrius.addAccessory("All Weather Floor Mat Pkg")
janetsPrius.addAccessory("Door Sill Protectors")
janetsPrius.addAccessory("Illuminated Door Sills")
janetsPrius.addAccessory("Rear Bumper Protector")
janetsPrius.addAccessory("Emergency Assistance Kit")
println("\nJanet's Prius:")
println(janetsPrius.description())

joesPrius.color="Classic Silver Metallic"
joesPrius.model = "S Special Edition"
joesPrius.addAccessory("Carpet Floor Matts")
joesPrius.addAccessory("Carpet Trunk Matt")
joesPrius.addAccessory("Body Protection Pkg")
println("\nJoe's Prius:")
println(joesPrius.description())

marksPrius.model="LE Plus"
marksPrius.color="Black Sand Pearl"
println("\nMark's Prius:")
println(marksPrius.description())

