"use strict";
// Copyright IBM Corp. and LoopBack contributors 2020. All Rights Reserved.
// Node module: @loopback/example-todo-jwt
// This file is licensed under the MIT License.
// License text available at https://opensource.org/licenses/MIT
Object.defineProperty(exports, "__esModule", { value: true });
exports.givenTodo = void 0;
const index_1 = require("../models/index");
/*
 ==============================================================================
 HELPER FUNCTIONS
 If you find yourself creating the same helper functions across different
 test files, then extracting those functions into helper modules is an easy
 way to reduce duplication.

 Other tips:

 - Using the super awesome Partial<T> type in conjunction with Object.assign
   means you can:
   * customize the object you get back based only on what's important
   to you during a particular test
   * avoid writing test logic that is brittle with respect to the properties
   of your object
 - Making the input itself optional means you don't need to do anything special
   for tests where the particular details of the input don't matter.
 ==============================================================================
 *

/**
 * Generate a complete Todo object for use with tests.
 * @param todo - A partial (or complete) Todo object.
 */
function givenTodo(todo) {
    const data = Object.assign({
        title: 'do a thing',
        desc: 'There are some things that need doing',
        isComplete: false,
    }, todo);
    return new index_1.Todo(data);
}
exports.givenTodo = givenTodo;
//# sourceMappingURL=helpers.js.map