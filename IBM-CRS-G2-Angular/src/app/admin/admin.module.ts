/* eslint-disable max-len */
/* eslint-disable require-jsdoc */
/* eslint-disable new-cap */
import {NgModule} from "@angular/core";
import {CommonModule} from "@angular/common";

import {AdminRoutingModule} from "./admin-routing.module";
import {AdminComponent} from "./admin.component";
import { AddRemoveCourseComponent } from "./add-remove-course/add-remove-course.component"; 
import { ApproveOrRejectRegistrationComponent } from "./approve-or-reject-registration/approve-or-reject-registration.component"; 
import { ViewRegistaredUserComponent } from "./view-registared-user/view-registared-user.component";
import { ViewCoursesComponent } from "./view-courses/view-courses.component"; 


@NgModule({
  declarations: [
    AdminComponent,
    AddRemoveCourseComponent,
    ApproveOrRejectRegistrationComponent,
    ViewRegistaredUserComponent,
    ViewCoursesComponent

  ],
  imports: [
    CommonModule,
    AdminRoutingModule,
  ],
})
export class AdminModule { }
