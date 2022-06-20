import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MainComponent } from './main/main.component';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { AddGardeComponent } from "./professor/add-garde/add-garde.component"
import { ViewRegisteredStudentComponent } from './professor/view-registered-student/view-registered-student.component';



const routes: Routes = [
  {path:"", component:MainComponent},
  {path: "main", component: MainComponent},
  {path: "student", loadChildren: () => import("./student/student.module").then((m) => m.StudentModule)},
  {path: "professor", loadChildren: () => import("./professor/professor.module").then((m) => m.ProfessorModule)},
  {path: "admin", loadChildren: () => import("./admin/admin.module").then((m) => m.AdminModule)},
  {path: "student-registeration", loadChildren: () => import("./student-registeration/student-registeration.module").then((m) => m.StudentRegisterationModule)},
  {path: "user-password-update", loadChildren: () => import("./user-password-update/user-password-update.module").then((m) => m.UserPasswordUpdateModule)},
  {path: "user-login", loadChildren: () => import("./user-login/user-login.module").then((m) => m.UserLoginModule)},
  {path: "**", component: PageNotFoundComponent},
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
export const RoutingComponent= [
  ViewRegisteredStudentComponent,
  AddGardeComponent
]