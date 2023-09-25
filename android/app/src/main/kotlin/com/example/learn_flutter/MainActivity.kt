package com.example.learn_flutter

import android.os.Bundle
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.systemchannels.SettingsChannel.CHANNEL_NAME
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


class MainActivity : FlutterActivity() {

    companion object {
        const val CHANEL_NAME = "chanel_name"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        try {
            invokeToFlutter()
        } catch (e: Exception) {
            e.printStackTrace()
        }

    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANEL_NAME
        ).setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
            if (call.method == "nativeMethod") {
                /** Handle while method calling **/
                val data = call.argument<String>("paramKey")
                Toast.makeText(this@MainActivity, "Value: $data", Toast.LENGTH_SHORT).show()

                /** Return Result to Flutter **/
                result.success("Connect to Native Success!")
            }
        }
    }

    private fun invokeToFlutter() {
        val methodChannel = MethodChannel(
            flutterEngine!!.dartExecutor.binaryMessenger,
            CHANEL_NAME
        )

        /** Call Method  and return String {result} to Flutter **/
        val srtString = "Call to Flutter Success!"
        methodChannel.invokeMethod("receiveData", mapOf("data" to srtString))
    }
}
