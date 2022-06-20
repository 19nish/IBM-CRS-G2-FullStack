export class student{
  
  public studentId: number;
  public studentName:string;
  public studentQualification:string;
  public studentBranch:string;
  public studentAddress:string;
  public studentContactNo:string;
  public studentGrade:string;  
  
  constructor(studentId:number,studentName:string, studentQualification:string, studentBranch:string, studentAddress:string, studentContactNo:string,  studentGrade:string ){
    this.studentId=studentId;
    this.studentName=studentName;
    this.studentQualification=studentQualification;
    this.studentBranch=studentBranch;
    this.studentAddress=studentAddress;
    this.studentContactNo=studentContactNo;
    this.studentGrade=studentGrade;
  }
}