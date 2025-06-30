const fs = require('fs');
const path = require('path');

async function saveBrowserLogsToFile(LOG_OBJECT) {
  const logText = LOG_OBJECT.map(entry => `[${entry.level}] ${entry.message}`).join('\n');

  const filePath = path.join(__dirname, 'browserLogs.txt');
  fs.writeFileSync(filePath, logText);

  console.log(`✅ Browser logs saved to ${filePath}`);
}

module.exports = { saveBrowserLogsToFile };
