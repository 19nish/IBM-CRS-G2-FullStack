/* eslint-disable max-len */
/* eslint-disable require-jsdoc */
/* eslint-disable linebreak-style */
/* eslint-disable space-before-blocks */
export class PasswordDto {
  public Email:String;
  public oldPassword:string;
  public newPassword:string;


  constructor(Email:string, oldPassword:string, newPassword:string){
    this.Email=Email;
    this.oldPassword=oldPassword;
    this.newPassword=newPassword;
  }
}


