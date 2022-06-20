import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddGardeComponent } from './add-garde.component';

describe('AddGardeComponent', () => {
  let component: AddGardeComponent;
  let fixture: ComponentFixture<AddGardeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddGardeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddGardeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
