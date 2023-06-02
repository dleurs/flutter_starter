"use strict";
// Copyright IBM Corp. and LoopBack contributors 2020. All Rights Reserved.
// Node module: @loopback/example-todo-jwt
// This file is licensed under the MIT License.
// License text available at https://opensource.org/licenses/MIT
Object.defineProperty(exports, "__esModule", { value: true });
const test_helper_1 = require("./test-helper");
describe('TodoApplication', () => {
    let client;
    let app;
    let token;
    const testUserCredential = {
        email: 'testuser2@abc.com',
        password: 'testuser2',
    };
    before(givenAClient);
    after(async () => {
        await app.stop();
    });
    async function givenAClient() {
        ({ app, client } = await (0, test_helper_1.setupApplication)());
    }
    it('fails when getting todo list without login', async () => {
        await client.get('/todos').expect(401);
    });
    it('sign up successfully', async () => {
        await client.post('/signup').send(testUserCredential).expect(200);
    });
    it('user login successfully', async () => {
        const res = await client
            .post('/users/login')
            .send(testUserCredential)
            .expect(200);
        token = res.body.token;
    });
    it('get todo list successfully after login', async () => {
        await client
            .get('/todos')
            .set('Authorization', 'Bearer ' + token)
            .expect(200);
    });
});
//# sourceMappingURL=todo.acceptance.js.map