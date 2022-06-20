/* eslint-disable require-jsdoc */
/* eslint-disable linebreak-style */
/* eslint-disable space-before-blocks */
export class StudentDto {
  public Name:string;
  public Email:string;
  public Password:string;
  public role:string;

  constructor(Name:string, Email:string,Password:string, role:string){
    this.Name=Name;
    this.Email=Email;
    this.Password=Password;
    this.role=role;
  }
}
