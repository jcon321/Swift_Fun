
import UIKit
import XCPlayground

let urlString = "http://date.jsontest.com"
let url = NSURL(string: urlString)!
let urlSession = NSURLSession.sharedSession()

let jsonQuery = urlSession.dataTaskWithURL(url, completionHandler: {data, response, error -> Void in
    if (error != nil) {
        println(error.localizedDescription)
    }
    var err: NSError?
    
    var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSDictionary
    if (err != nil) {
        println("JSON Error \(err!.localizedDescription)")
    }
    
    let jsonDate: String! = jsonResult["date"] as NSString
    let jsonTime: String! = jsonResult["time"] as NSString
    
    dispatch_async(dispatch_get_main_queue(), {
        println(jsonDate)
        println(jsonTime)
    })
})

jsonQuery.resume()

// Only needed in playground to continue async calls
XCPSetExecutionShouldContinueIndefinitely()





