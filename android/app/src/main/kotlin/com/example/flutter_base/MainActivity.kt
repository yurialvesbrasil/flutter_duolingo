package com.example.flutter_base

import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import android.view.ViewTreeObserver;
import android.view.WindowManager;

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    getWindow().setStatusBarColor(0x00000000)
    GeneratedPluginRegistrant.registerWith(this)

    //Remove full screen flag after load
    val vto = getFlutterView().getViewTreeObserver()
    vto.addOnGlobalLayoutListener(object : ViewTreeObserver.OnGlobalLayoutListener {
      override fun onGlobalLayout() {
        getFlutterView().getViewTreeObserver().removeOnGlobalLayoutListener(this)
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
      }
    })
  }
}
