import { Component, OnInit } from '@angular/core';
import {HttpClient, HttpErrorResponse} from "@angular/common/http";
import {student} from "src/models/student";

@Component({
  selector: 'app-view-registered-student',
  templateUrl: './view-registered-student.component.html',
  styleUrls: ['./view-registered-student.component.css']
})
export class ViewRegisteredStudentComponent implements OnInit {
  listOfEnrolledStudents: student[] = [];
  constructor(private http:HttpClient) { }


  ngOnInit(): void {
    this.http.get<any>("http://localhost:1901/professor/student").subscribe(
        (res:student[])=>{
          this.listOfEnrolledStudents=res;
          console.log(this.listOfEnrolledStudents);
        },
        (err:HttpErrorResponse)=>{
        },
    );
  }

}
