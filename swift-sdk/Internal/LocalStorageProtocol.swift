//
//  Copyright © 2018 Iterable. All rights reserved.
//

import Foundation

protocol LocalStorageProtocol {
    var userId: String? { get set }
    var email: String? { get set }
    var authToken: String? { get set }
    var ddlChecked: Bool { get set }
    var deviceId: String? { get set }
    var sdkVersion: String? { get set }
    var offlineMode: Bool { get set }
    func getAttributionInfo(currentDate: Date) -> IterableAttributionInfo?
    func save(attributionInfo: IterableAttributionInfo?, withExpiration expiration: Date?)
    func getPayload(currentDate: Date) -> [AnyHashable: Any]?
    func save(payload: [AnyHashable: Any]?, withExpiration: Date?)
    func upgrade()
}

extension LocalStorageProtocol {
    func upgrade() {
    }
}
