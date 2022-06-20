/* eslint-disable max-len */
/* eslint-disable new-cap */
/* eslint-disable require-jsdoc */
import {NgModule} from "@angular/core";
import {CommonModule} from "@angular/common";

import {ProfessorRoutingModule} from "./professor-routing-module";
import { AddGardeComponent } from "./add-garde/add-garde.component"
import {ProfessorComponent} from "./professor.component";
import { ViewRegisteredStudentComponent } from './view-registered-student/view-registered-student.component';
import {HttpClientModule} from "@angular/common/http";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";


@NgModule({
  declarations: [
    ProfessorComponent,
    AddGardeComponent,
    ViewRegisteredStudentComponent
  ],
  imports: [
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    CommonModule,
    ProfessorRoutingModule,
  ],
})
export class ProfessorModule { }
