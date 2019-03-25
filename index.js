'use strict';

const { Toolkit } = require('actions-toolkit');
const tools = new Toolkit();

console.log(tools.arguments);

tools.command('check', async (args, match) => {
  console.log(args)
  // -> { app: 'example', container: 'node:alpine' }
});

