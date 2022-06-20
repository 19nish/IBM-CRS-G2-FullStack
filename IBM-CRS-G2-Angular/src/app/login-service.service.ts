// import { Injectable } from '@angular/core';

// @Injectable({
//   providedIn: 'root'
// })
// export class LoginServiceService {

//   constructor() { }
// }
/* eslint-disable max-len */
/* eslint-disable new-cap */
/* eslint-disable require-jsdoc */
import {Injectable} from "@angular/core";
import { user } from "src/models/user";
import {Router} from "@angular/router";

@Injectable(
    // {
    // providedIn: "root",
// }
)
export class LoginService {
  storage:any;
  constructor(private router:Router) { }
  loginUser(user:user) {
    if (user.role==="admin") {
      sessionStorage.clear();
      sessionStorage.setItem("isAdminLoggedIn", "true");
      sessionStorage.setItem("userName", user.Name);
      this.router.navigateByUrl("admin");
    } else if (user.role==="professor") {
      sessionStorage.clear();
      sessionStorage.setItem("isProfessorLoggedIn", "true");
      sessionStorage.setItem("userName", user.Name);
      this.router.navigateByUrl("professor");
    } else if (user.role==="student") {
      sessionStorage.clear();
      sessionStorage.setItem("isStudentLoggedIn", "true");
      sessionStorage.setItem("userName", user.Name);
      this.router.navigateByUrl("student");
    }
  }
}
