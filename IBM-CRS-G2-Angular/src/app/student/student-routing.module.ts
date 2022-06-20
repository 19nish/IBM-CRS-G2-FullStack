import {NgModule} from "@angular/core";
import {RouterModule, Routes} from "@angular/router"
import { StudentComponent } from "./student.component";
import { AddRemoveCourseComponent } from "./add-remove-course/add-remove-course.component";
import { PaymentComponent } from "./payment/payment.component"; 
import { UpdateDetailsComponent } from "./update-details/update-details.component";
import { ViewAvailableCoursesComponent } from "./view-available-courses/view-available-courses.component"; 
import { ViewRegistreCoursesComponent } from "./view-registre-courses/view-registre-courses.component";
import { ViewGradeComponent } from "./view-grade/view-grade.component";
import { StudentGuard } from "./student.guard";

const routes: Routes = [{path: "", component: StudentComponent, canActivate: [StudentGuard],
  children: [
    {path: "enroll-course", component: AddRemoveCourseComponent},
    {path: "view-enrolled-courses", component: ViewRegistreCoursesComponent},
    {path: "view-avalilable-courses", component: ViewAvailableCoursesComponent },
    {path: "view-grade", component: ViewGradeComponent},
    {path: "payment", component: PaymentComponent},
    {path: "update-details", component:UpdateDetailsComponent}
  ],

},


];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule],
  })
  export class StudentRoutingModule { }
  