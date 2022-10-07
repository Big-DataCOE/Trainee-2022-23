package com.example.myportfolio

import android.app.Dialog
import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.net.Uri
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import java.net.URL

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val school: ImageButton = findViewById(R.id.school)
        school.setOnClickListener {
            val dialogBinding = layoutInflater.inflate(R.layout.schoolpopup, null)
            val myDialog = Dialog(this)
            myDialog.setContentView(dialogBinding)
            myDialog.setCancelable(true)
            myDialog.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            myDialog.show()
        }
        val college: ImageButton = findViewById(R.id.college)
        college.setOnClickListener {
            val dialogBinding1 = layoutInflater.inflate(R.layout.collegepopup, null)
            val myDialog1 = Dialog(this)
            myDialog1.setContentView(dialogBinding1)
            myDialog1.setCancelable(true)
            myDialog1.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
            myDialog1.show()
        }
        val profilebtn: ImageButton = findViewById(R.id.profilebtn)
        profilebtn.setOnClickListener {
            val intent = Intent(this, profile::class.java)
            startActivity(intent)
        }
        val myProjectBtn: Button = findViewById(R.id.projects)
        myProjectBtn.setOnClickListener {
            val intent = Intent(this, myProjects::class.java)
            startActivity(intent)
        }
        val facebook: ImageButton = findViewById(R.id.facebook)
        facebook.setOnClickListener {
            val url2 = "https://www.facebook.com/profile.php?id=100007668378333"

            val urlIntent2 = Intent(
                Intent.ACTION_VIEW,
                Uri.parse(String.format(url2))
            )
            startActivity(urlIntent2)
        }
        val instagram: ImageButton = findViewById(R.id.instagram)
        instagram.setOnClickListener {
            val url3 = "https://instagram.com/kush_officials?igshid=YmMyMTA2M2Y="
            val urlIntent3 = Intent(
                Intent.ACTION_VIEW,
                Uri.parse(String.format(url3))
            )
            startActivity(urlIntent3)
        }
        val whatsapp: ImageButton = findViewById(R.id.whatsapp)
        whatsapp.setOnClickListener {
            val url1 = "https://api.whatsapp.com/send?phone=%s"
            var num: String = "+916396947106"
            val urlIntent1 = Intent(
                Intent.ACTION_VIEW,
                Uri.parse(String.format(url1, num))
            )
            startActivity(urlIntent1)
        }

        val linkedIn: ImageButton = findViewById(R.id.linkedin)
        linkedIn.setOnClickListener {
            val url4 = "https://www.linkedin.com/in/kushagra-saxena-5b1b5523b"
            val urlIntent4 = Intent(
                Intent.ACTION_VIEW,
                Uri.parse(String.format(url4))
            )
            startActivity(urlIntent4)
        }
    }
}

