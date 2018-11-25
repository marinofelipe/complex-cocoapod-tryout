//
//  Log.swift
//  Log
//
//  Created by Felipe Lefèvre Marino on 11/25/18.
//  Copyright © 2018 Felipe Marino. All rights reserved.
//

struct Log {
    /// Logs a common error - any that should be logged
    ///
    /// - Parameter error: string describing the error
    func common(error: String) {
        FabricAnswers().log(commonError: error)
        print(.logPrefix + " " + error)
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
