const core = require('@actions/core');

async function run() {
  /**
   * 1. Pass the input
   *  1.1. check base branch update
   *  1.2  target the branch and create the PR
   *  1.2  use github token for auth & create the PR
   *  1.2  working dir for which branch to update
   * 2. Execute the npm command inside dir
   * 3. check any changes in package*.json file updated
   * 4. if any update available
   *  4.1 add commit the target branch
   *  4.2 create PR from target branch to main branch use octokit api
   * 5.close the action
   */
  core.info('I am a custom JS action');
}

run();