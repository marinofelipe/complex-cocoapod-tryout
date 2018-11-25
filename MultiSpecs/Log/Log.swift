//
//  Log.swift
//  Log
//
//  Created by Felipe Lefèvre Marino on 11/25/18.
//  Copyright © 2018 Felipe Marino. All rights reserved.
//

public struct Log {
    /// Logs a common error - any that should be logged
    ///
    /// - Parameter error: string describing the error
    public static func common(error: String) {
        print(.logPrefix + " " + error)
        
        let url = URL(staticString: "www.apple.com/report")
        // TODO: report error to URL
    }
}


// MARK: - Private constants
private extension String {
    static let logPrefix =
    """
    ============================================================ | ===========================================================================
    LOG -
    """
}
