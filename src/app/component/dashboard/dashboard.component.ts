import { Component, OnInit } from '@angular/core';
import { Users } from 'src/app/users';
import { ApiService } from '../../api.service';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {
  users:  Users[] | undefined;
  selectedUsers:  Users = { Id:null, name : null  ,email: null ,pwd: null 
  };
  constructor(private apiService: ApiService) { }

  ngOnInit() {
    this.apiService.readUsers().subscribe((user: Users[])=>{
      this.users = user;
      // console.log(this.users);
    })
  }
}