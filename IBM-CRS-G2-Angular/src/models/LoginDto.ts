/* eslint-disable require-jsdoc */
/* eslint-disable linebreak-style */
/* eslint-disable space-before-blocks */

export class LoginDto {
  public Email : string;
  public password : string;

  constructor(Email:string, password:string) {
    this.Email=Email;
    this.password=password;
  }
}
