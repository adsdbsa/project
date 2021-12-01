import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { ApiService } from 'src/app/api.service';
import { Router } from '@angular/router';
import { CookieService } from 'ngx-cookie-service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  email: any; 
  formdata: any ;
  pwd: any;
  uuemail:any;
  constructor(private apiService: ApiService,private router:Router,private cookie: CookieService) { }
  
  form:FormGroup | any;

  ngOnInit(): void {
    this.form = new FormGroup({ 
      email: new FormControl(""),
      pwd: new FormControl("")
   }); 

  }
reg_user():void
{
  const redirect = this.apiService.redirectUrl ? this.apiService.redirectUrl : '/register';
      this.router.navigate([redirect]);
}
  
  login_user(): void
  {
   
    this.cookie.set('email',this.form.value.email);
    this.apiService.api_login(this.form.value).subscribe(res => {
      const redirect = this.apiService.redirectUrl ? this.apiService.redirectUrl : '/home';
      this.router.navigate([redirect]);
  
      this.router.navigate(['/home'])
      .then(() => {
        window.location.reload();
      });
      
  },
  

error => {
  alert("User name or password is incorrect")
  });
  }
  get email1() { return this.form.get('email'); }
  get password() { return this.form.get('pwd'); }
  }
  
