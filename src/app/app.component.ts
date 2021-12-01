import { Component } from '@angular/core';
import { ApiService } from './api.service';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'SM';
  constructor(private api:ApiService)
  {

  }
  ngOnInit()
  {
    
    // this.api.apicall().subscribe((data)=>{
    //   console.warn("Api Data",data); 
    //   //this.title=data['title'];
    // })
  }
}
