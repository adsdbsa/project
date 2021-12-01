import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ApiService } from 'src/app/api.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
  export class RegisterComponent implements OnInit 
  {

    form:FormGroup | any;
    constructor(private apiService: ApiService,private router:Router) { }

    ngOnInit(): void
    {
      this.form = new FormGroup({
        name: new FormControl("",[Validators.required]),
        email: new FormControl("",[Validators.required]),
        pwd: new FormControl("",[Validators.required])
      
        // console.log(this.users);
        
      });
    }
    login_user():void
{
  const redirect = this.apiService.redirectUrl ? this.apiService.redirectUrl : '/login';
      this.router.navigate([redirect]);
}
      reg_user(): void
      {
        console.log(this.form.value);
        this.apiService.create(this.form.value).subscribe(res => {
          const redirect = this.apiService.redirectUrl ? this.apiService.redirectUrl : '/login' ;
      this.router.navigate([redirect]);
      
        })
        
      }
   
}
