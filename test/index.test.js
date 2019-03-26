'use strict';

const path = require('path');
const Bot = require('../lib/Bot');

describe('test/index.test.js', () => {

  it('should work', async () => {
    const bot = new Bot();
    const result = await bot.parseHistory(path.join(__dirname, 'fixture/History.md'));
    console.log(result);
  });
});
