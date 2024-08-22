# safous-waap-sdk-ios-example

## Getting Started

### How to Build
1. Download the .xcframework file from Admin Portal
2. Open the Example Project on Xcode
3. Click Project on Left Navigation bar
4. Now Click Project Name below Targets, then Click General.
5. On the middle of page, find Section called "Frameworks, Libraries, and Embedded Content". Click Add (+) to open the popup page.
6. After popup showed, click Add other on left bottom of the popup. Then click Add Files.
7. Find the .xcframework file, then click Open.
8. Back to popup, click Add.


### Configuration
For configure the environment, you need a property list file to set this.

1. Download the certificate from Admin Portal.
2. Drag and drop the certificate into the Example Project through Xcode
3. Now Right click on left navigation bar from Xcode, then click New file
4. On the Resources Section, Choose Property List and click Next. Then, name it to "SafousWaap" then click Create 
5. Open the SafousWaap.plist that already created before, now modify several value in the .plist files as follows

| Key        			| Type           | value  							|
| --------------------- | ---------------| -------------------------------- |
| X-appId       		| String	  	 | default							|
| CertificateName   	| String       	 | <CERTIFICATE_NAME> 				|
| CertificatePassword 	| String         | <PASSPHRASE_PASSWORD_CERTIFICATE>|
| BaseUrl 				| Dictionary     | (3 items)						|


* for BaseUrl as Dictionary type, need more extend key type and value as follows :

| Key         | Type   | value  							    									|
| ------------| ------ | --------------------------------------------------------------------------	|
| Device      | String | https://waap-register.example-waap.waap.safous.com								|
| Auth   	  | String | https://waap-auth.example-waap.waap.safous.com									|
| VerifyToken | String | https://waap-client-verification.example-waap.waap.safous.com/api/device/verify	|



### How to Use

1. Open RegistrationExampleViewController class. Check for line 15 to initiate the Registration by calling getRegisterDevice function
	- [RegistrationExampleViewController.swift](SafousWaapExample/SafousWaapExample/RegistrationExampleViewController.swift#L15)
	```
	getRegisterDevice()
	```
2. Open TransactionExampleViewController class
	- [TransactionExampleViewController.swift](SafousWaapExample/SafousWaapExample/TransactionExampleViewController.swift#L13)
3. Modify of the line 13 who sets the transaction URL as follows :
	```
	let simpleURL: String = "https://simple-web.example-waap.waap.safous.com/"
	```
3. Build and Run the project
	```
	Go to Product bar on TaskBar in Xcode, click Run. Or Click Command + R on Keyboard.
	```


