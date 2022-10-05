package com.example.myportfolio

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton

class myProjects : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_my_projects)

        val backProjects: ImageButton =findViewById(R.id.backProject)
        backProjects.setOnClickListener {
            finish()
        }
    }
}