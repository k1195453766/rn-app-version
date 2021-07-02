
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

public class RNAppVersionModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNAppVersionModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNAppVersion";
  }

  @ReactMethod
  public void getVersion(Callback callback) {
    final PackageManager packageManager = this.reactContext.getPackageManager();
    final String packageName = this.reactContext.getPackageName();
    try {
        // constants.put(APP_VERSION, packageManager.getPackageInfo(packageName, 0).versionName);
        // constants.put(APP_BUILD, packageManager.getPackageInfo(packageName, 0).versionCode);
        // constants.put(APP_ID, packageName);
        callback.invoke(packageManager.getPackageInfo(packageName, 0).versionName);
    } catch (NameNotFoundException  e) {
      callback.invoke("");
        //e.printStackTrace();
    }
  }

}