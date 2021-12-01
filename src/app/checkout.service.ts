import { Injectable } from '@angular/core';
import { map, Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class CheckoutService {

  ship_api= "http://localhost/SM2/php/ship_insert.php";
  ship_get_api ="http://localhost/SM2/php/ship_get.php";
  constructor( private http:HttpClient ) { }

  insert(data:any): Observable<any> 
  {
    return this.http.post(this.ship_api, data,{withCredentials:true});
  }
  select()
  {
    return this.http.get(this.ship_get_api,{withCredentials:true});
  }
}
