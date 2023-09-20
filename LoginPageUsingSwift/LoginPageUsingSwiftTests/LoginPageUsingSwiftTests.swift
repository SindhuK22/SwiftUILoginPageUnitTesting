//
//  LoginPageUsingSwiftTests.swift
//  LoginPageUsingSwiftTests
//
//  Created by Sindhu K on 20/09/23.
//

import XCTest
@testable import LoginPageUsingSwift

final class LoginPageUsingSwiftTests: XCTestCase {

        let viewModel = AuthViewModel()
    
        override func setUpWithError() throws {
        }
        override func tearDownWithError() throws {
        }
        func testSuccessfulLogin() {
            let expectation = XCTestExpectation(description: "Successful login")
                viewModel.login(username: "atistagetest", password: "Password1")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                    XCTAssertTrue(self?.viewModel.isLoggedIn ?? false)
                    XCTAssertNotNil(self?.viewModel.token)
                    XCTAssertNotNil(self?.viewModel.expiresOn)
                    expectation.fulfill()
                }
                
                wait(for: [expectation], timeout: 10.0)
           
            }
        func testFailedLogin() {
            let expectation = XCTestExpectation(description: "Failed login")
                viewModel.login(username: "Sindhu", password: "Solera1")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                    XCTAssertFalse(self?.viewModel.isLoggedIn ?? true)
                    expectation.fulfill()
                }
                
                wait(for: [expectation], timeout: 10.0)
            }
    }
    

    

