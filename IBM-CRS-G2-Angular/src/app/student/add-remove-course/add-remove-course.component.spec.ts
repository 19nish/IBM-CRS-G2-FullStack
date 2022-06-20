import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddRemoveCourseComponent } from './add-remove-course.component';

describe('AddRemoveCourseComponent', () => {
  let component: AddRemoveCourseComponent;
  let fixture: ComponentFixture<AddRemoveCourseComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddRemoveCourseComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddRemoveCourseComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
