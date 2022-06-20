/* eslint-disable max-len */
/* eslint-disable require-jsdoc */
/* eslint-disable new-cap */
import {NgModule} from "@angular/core";
import {RouterModule, Routes} from "@angular/router";
import { AddGardeComponent } from "./add-garde/add-garde.component"
import {ProfessorComponent} from "./professor.component";
import { ProfessorGuard } from "./professor.guard";
import { ViewRegisteredStudentComponent } from './view-registered-student/view-registered-student.component';



const routes: Routes = [{path: "", component: ProfessorComponent, canActivate: [ProfessorGuard],
children: [
    {path: "registered-student1", component: ViewRegisteredStudentComponent},
    {path:"add-grades",component:AddGardeComponent}
],
},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ProfessorRoutingModule { }
