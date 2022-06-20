import {NgModule} from "@angular/core";
import {CommonModule} from "@angular/common";


import {StudentComponent} from "./student.component";
import { AddRemoveCourseComponent } from "./add-remove-course/add-remove-course.component";
import { PaymentComponent } from "./payment/payment.component"; 
import { UpdateDetailsComponent } from "./update-details/update-details.component";
import { ViewAvailableCoursesComponent } from "./view-available-courses/view-available-courses.component"; 
import { ViewRegistreCoursesComponent } from "./view-registre-courses/view-registre-courses.component";
import { ViewGradeComponent } from "./view-grade/view-grade.component";
import { HttpClientModule } from "@angular/common/http";
import { ReactiveFormsModule } from "@angular/forms";
import { StudentRoutingModule } from "./student-routing.module";


@NgModule({
  declarations: [
    StudentComponent,
    AddRemoveCourseComponent,
    PaymentComponent,
    UpdateDetailsComponent,
    ViewAvailableCoursesComponent,
    ViewGradeComponent,
    ViewRegistreCoursesComponent
  ],
  imports: [
    ReactiveFormsModule,
    HttpClientModule,
    CommonModule,
    StudentRoutingModule,
  ],
})
export class StudentModule { }
