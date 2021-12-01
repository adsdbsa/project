import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Users } from './users';
import { CookieService } from 'ngx-cookie-service';

@Injectable({
  providedIn: 'root'
})
export class CartService {

  public cartItemList : any =[]
  public productList = new BehaviorSubject<any>([]);
  public search = new BehaviorSubject<string>("");
  acart = "http://localhost/SM2/php/addtoCart.php";
 
  constructor(private http:HttpClient) { }
  getProducts(){
    return this.http.get<any>("http://localhost/SM2/php/getProduts.php",{withCredentials:true})
  }

  addtoCart(product : any): Observable<any>{
    
    return this.http.post(this.acart,product,{withCredentials:true});
  
  }

  gT(){
    return this.http.get("http://localhost/SM2/php/getProdutsgt.php",{withCredentials:true});   
  }

  ggT(){
    return this.http.post("http://localhost/SM2/php/StoreGrand_t.php",{withCredentials:true});   
  }
  removeCartItem(){
    return this.http.get("http://localhost/SM2/php/removeProducts.php",{withCredentials:true});
  }

  removeAllCart(){
    return this.http.get("http://localhost/SM2/php/removeAllProducts.php",{withCredentials:true});
  }
}
