import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewRegisteredStudentComponent } from './view-registered-student.component';

describe('ViewRegisteredStudentComponent', () => {
  let component: ViewRegisteredStudentComponent;
  let fixture: ComponentFixture<ViewRegisteredStudentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewRegisteredStudentComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewRegisteredStudentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
