// Copyright (c) 2019 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/log;

public function main() {
    error e = error("bad sad");
    log:print("Inside main function", username = "Alex92", id = 845315, foo = true);
    log:print("Inside main function", username = isolated function() returns string { return "Alex92";}, id = isolated function() returns int { return 845315;});
    log:printError("Something went wrong", username = "Alex92", id = 845315, foo = true);
    log:printError("Something went wrong", username = isolated function() returns string { return "Alex92";}, id = isolated function() returns int { return 845315;});
    log:printError("Something went wrong", err = e, username = "Alex92", id = 845315, foo = true);
}