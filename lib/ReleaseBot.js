'use strict';

const Bot = require('./Bot');

class ReleaseBot extends Bot {
  constructor(options = {}) {
    options.event = [ 'push' ];
    console.log('x');
  }

  async run() {
    // on master push && is release-pr merge
  }
}

module.exports = ReleaseBot;
