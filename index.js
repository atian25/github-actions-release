'use strict';

const { Toolkit } = require('actions-toolkit');
const tools = new Toolkit({
  event: [ 'pull_request' ],
});

async function run() {

  console.log(tools.arguments);

  console.log('@@@event', JSON.stringify(tools.context.event, null, 2));

  console.log('@@@payload', JSON.stringify(tools.context.payload, null, 2));

  const pkg = tools.getPackageJSON();

  console.log('@@@pkg', pkg);

  const contents = tools.getFile('index.js');

  console.log('@@@contents', contents);

  const files = await tools.github.pulls.listFiles(tools.context.repo({
    number: tools.context.payload.number,
  }));

  console.log('@@@files', files);
}

run();
