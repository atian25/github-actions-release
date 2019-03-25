'use strict';

const { Toolkit } = require('actions-toolkit');
const tools = new Toolkit({
  event: [ 'push' ],
});

console.log(tools.arguments);

tools.command('check', async (args, match) => {
  console.log(args)
  // -> { app: 'example', container: 'node:alpine' }
});

