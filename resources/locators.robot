*** Variables ***
# login locators
${LOGIN_URL}   https://opensource-demo.orangehrmlive.com/auth/login
${USERNAME_INPUT}   name:username
${PASSWORD_INPUT}   //input[@type="password"]
${LOGIN_BUTTON}     //button[@type="submit"]
${ERROR_MESSAGE}    css=.oxd-alert-content-text

# home page locators 
${ADMIN_BTN}   //a[@href="/admin/viewAdminModule"]
${JOB_LIST}     xpath=//span[contains(text(),'Job')]
${JOB_TITLE}  xpath=//a[text()='Job Titles']
${ADD_BTN}   //div[@class='orangehrm-header-container']//child::div//child::button

# Add Job Title Locators 

${JOB_TITLE_FIELD}   CSS:input#oxd-button oxd-button--medium oxd-button--secondary



