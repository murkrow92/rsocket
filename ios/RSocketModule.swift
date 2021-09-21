import Foundation
import SwiftUI
import ReactiveSwift
import RSocketCore
import RSocketNIOChannel
import RSocketReactiveSwift
import RSocketTCPTransport

@objc(RSocketModule)
class RSocketModule: NSObject {

 @objc(addEvent:location:)
 func addEvent(_ name: String, location: String) -> Void {
    print("name", name)
    print("location", location)
  do  {
    let bootstrap = ClientBootstrap(transport: TCPTransport(), config: .mobileToServer)
    let client = try bootstrap.connect(to: .init(host: "localhost", port: 7000)).first()!.get()
    let requestProducer = client.requester.build(RequestResponse(), request: Data("thangnc".utf8))
            requestProducer.logEvents(identifier: "request7").start()
    print("call success")
  }  catch {
    //handle error
    print(error)
}
 
  }
}
