import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewRegistaredUserComponent } from './view-registared-user.component';

describe('ViewRegistaredUserComponent', () => {
  let component: ViewRegistaredUserComponent;
  let fixture: ComponentFixture<ViewRegistaredUserComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewRegistaredUserComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewRegistaredUserComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
