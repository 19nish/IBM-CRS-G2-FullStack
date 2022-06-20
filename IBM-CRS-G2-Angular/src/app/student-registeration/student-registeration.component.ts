/* eslint-disable max-len */
/* eslint-disable space-before-blocks */
/* eslint-disable new-cap */
/* eslint-disable require-jsdoc */
import {Component, OnInit} from "@angular/core";
import {FormBuilder, Validators} from "@angular/forms";
import {HttpClient, HttpErrorResponse, HttpHeaders} from "@angular/common/http";
import { StudentDto} from "src/models/StudentDto";
import { student } from "src/models/student";
import { Router } from "@angular/router";
import { user } from "src/models/user";
@Component({
  selector: "app-student-registeration",
  templateUrl: "./student-registeration.component.html",
  styleUrls: ["./student-registeration.component.css"],
})
export class StudentRegisterationComponent implements OnInit {
  showPassword:boolean=false;
  studentRegisterationForm = this.fb.group({
    studentName: ["", [Validators.required]],
    password: ["", [Validators.required]],
    studentDepartment: ["", [Validators.required]]});

  studentDto!: StudentDto;
  student!: student;
  user!:user;
  registerationUnSuccess: boolean=false;
  registerationUnSuccessMessage: string="";
  registerationSuccess: boolean=false;
  registerationSuccessMessage: string="";
  constructor(private fb: FormBuilder, private http:HttpClient,private router:Router) {

  }


  ngOnInit(): void {
  }
  onRegister(){
    this.studentDto=new StudentDto(this.studentRegisterationForm.value["Name"], this.studentRegisterationForm.value["Password"], this.studentRegisterationForm.value["Email"],this.studentRegisterationForm.value["role"]);


    const headers={"Content-Type": "application/json"};
    const body=JSON.stringify(this.studentDto);

    this.http.post<any>("http://localhost:1901/user/registration", body, {headers}).subscribe(

        (res:student)=>{
          this.registerationSuccess=true;
          this.registerationSuccessMessage="You have Successfully Registered! Your user ID is "+res.studentName+ " Please Login once admin has approved";
          this.studentRegisterationForm.reset();
        },
        (err:HttpErrorResponse)=>{
          this.registerationUnSuccess=true;
          this.registerationUnSuccessMessage=err.error.message;
          this.studentRegisterationForm.reset();
        },
    );
  }

  password_show_hide(password:HTMLInputElement) {
    this.showPassword=!this.showPassword;
    password.type=this.showPassword?"text":"password";
  }
  redirectToLogin(){
    this.router.navigateByUrl("");
  }
}
