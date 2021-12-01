import { Component, OnInit } from '@angular/core';
import { CookieService } from 'ngx-cookie-service';
import { ApiService } from 'src/app/api.service';
import { CartService } from 'src/app/cart.service';
import { FormGroup, FormControl } from '@angular/forms';
import { Router } from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  public totalItem : number = 0;
  public searchTerm !: string;
  form1:FormGroup | any;
  form2:FormGroup | any;
  constructor(private apiService : ApiService,private router:Router,private cartService : CartService , private cookie : CookieService) { 
    this.total_item();
  }
  total_i:any;
  ngOnInit(): void {
    
    this.cartService.getProducts()
    .subscribe(res=>{
      this.totalItem = res.length;
    })
    this.form1 = new FormGroup({
      
    });
    this.form2 = new FormGroup({
      
    });
    }
    email={
     uemail:this.cookie.get('email')
  }
  
  logout_user():void{
    this.cookie.delete('email');
  const redirect = this.apiService.redirectUrl ? this.apiService.redirectUrl : '/login';
  this.router.navigate([redirect]);
  window.location.reload();
  }

  demo():boolean{
    if(this.cookie.get('email'))
    {
      return true;
    }
    else{
      return false;
    }
  }
  login_user(): void
  {
      const redirect = this.apiService.redirectUrl ? this.apiService.redirectUrl : '/login';
      this.router.navigate([redirect]);
       
  }
   total_item(){

    this.apiService.gettotalItem().subscribe(res=>{this.total_i=res})
   }

}
