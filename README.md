
# rn-app-version

## Getting started

`$ npm install rn-app-version --save`

### Mostly automatic installation

`$ react-native link rn-app-version`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `rn-app-version` and add `RNAppVersion.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAppVersion.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNAppVersionPackage;` to the imports at the top of the file
  - Add `new RNAppVersionPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':rn-app-version'
  	project(':rn-app-version').projectDir = new File(rootProject.projectDir, 	'../node_modules/rn-app-version/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':rn-app-version')
  	```


## Usage
```javascript
import RNAppVersion from 'rn-app-version';

// TODO: What to do with the module?
RNAppVersion.getVersion(res=>{
	console.log(res)
});
```
  