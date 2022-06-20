import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewRegistreCoursesComponent } from './view-registre-courses.component';

describe('ViewRegistreCoursesComponent', () => {
  let component: ViewRegistreCoursesComponent;
  let fixture: ComponentFixture<ViewRegistreCoursesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewRegistreCoursesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewRegistreCoursesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
