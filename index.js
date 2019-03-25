'use strict';

const { Toolkit } = require('actions-toolkit');
const tools = new Toolkit({
  event: [ 'push' ],
});

console.log(tools.arguments);

console.log('@@@event', JSON.stringify(tools.context.event, null, 2));

console.log('@@@payload', JSON.stringify(tools.context.payload, null, 2));

