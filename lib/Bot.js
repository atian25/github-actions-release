'use strict';

const util = require('util');
const fs = require('fs');
const readFile = util.promisify(fs.readFile);
const parse = require('git-changelog-parser');
const { Toolkit } = require('actions-toolkit');
class Bot {

  constructor(options) {
    this.toolkit = new Toolkit(options);
  }

  async parseHistory(filePath) {
    const md = await readFile(filePath);
    return parse(md);
  }

  async checkHistory() {

  }

  async checkPkg() {

  }
}

module.exports = Bot;

