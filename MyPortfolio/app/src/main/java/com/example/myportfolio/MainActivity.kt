package com.example.myportfolio

import android.app.Dialog
import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val school: ImageButton= findViewById(R.id.school)
        school.setOnClickListener{
            val dialogBinding=layoutInflater.inflate(R.layout.schoolpopup,null)
            val myDialog=Dialog(this)
            myDialog.setContentView(dialogBinding)
            myDialog.setCancelable(true)
            myDialog.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            myDialog.show()
        }
        val college: ImageButton=findViewById(R.id.college)
        college.setOnClickListener {
            val dialogBinding1=layoutInflater.inflate(R.layout.collegepopup,null)
            val myDialog1=Dialog(this)
            myDialog1.setContentView(dialogBinding1)
            myDialog1.setCancelable(true)
            myDialog1.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            myDialog1.show()
        }
        val profilebtn: ImageButton=findViewById(R.id.profilebtn)
        profilebtn.setOnClickListener {

        }

    }
}