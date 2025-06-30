const {Given, Then, When} = require('@cucumber/cucumber')
const linkLocators = require('../locator/linkLocators.js'); // adjust path as needed
const UtilsFiles = require('../pages/UtilsFiles.js');




// Go to Home Page
Given('i go to the home index', function() {
  return browser.navigateTo('/');

});
Then('verify home url', function(){
  return browser.assert.titleEquals("Automation Practice Site - Home");

})


// Verify Urls and Title
// When('I click on the link {string}', function(linkText) {
//   browser.element.findByText(linkText).click();
// })

// Then('Title is {string} and Url is {string}', function (expectedTitle, expectedUrl) {
//   browser.assert.titleEquals(expectedTitle);
//   browser.assert.urlEquals(expectedUrl);
// });



// Scenario Outline: Verifying if the link works correctly
Given('I click on the link {string}', async function (linkText) {
  const selector = pageLocators[linkText];
  if (!selector) {
    throw new Error(`Locator not found for linkText: ${linkText}`);
  }
  // console.log(selector);
  await browser.element.findByText(selector).click();

});

Then('Title is {string} and Url is {string}', async function (expectedTitle, expectedUrl) {
  // Add a wait here as well, to ensure the new page has fully loaded
  // and its title/URL are stable.
    browser.assert.titleEquals(expectedTitle);
    browser.assert.urlEquals(expectedUrl);
});




// Saving Log From Now on
When("I am on Home website",function(){
  return browser.navigateTo('/');
})

Then("Save the Logs  in a text File",async function(){
  const logs = await browser.getLog('browser'); // Await logs
  // console.log("Is Array:", Array.isArray(logs));
  await UtilsFiles.saveBrowserLogsToFile(logs);                  // Pass real logs to the function


})
Then("Show the Logs  in Console",function(){
  // console.log(browser.getLog('browser'));
})
