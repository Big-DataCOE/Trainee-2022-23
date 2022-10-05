package com.example.myportfolio

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ImageButton

class profile : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_profile)

        val back: ImageButton=findViewById(R.id.back)
        back.setOnClickListener {
            finish()
        }
    }
}