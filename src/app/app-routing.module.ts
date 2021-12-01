import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CartComponent } from './component/cart/cart.component';
import { CheckoutComponent } from './component/checkout/checkout.component';
import { DashboardComponent } from './component/dashboard/dashboard.component';
import { HomeComponent } from './component/home/home.component';
import { LoginComponent } from './component/login/login.component';
import { RegisterComponent } from './component/register/register.component';

const routes: Routes = [
  { path:'',component:HomeComponent },
  { path:'login',component:LoginComponent },
  { path:'register',component:RegisterComponent },
  { path:'home',component:HomeComponent },
  { path:'dashboard',component:DashboardComponent },
  { path:'cart',component:CartComponent},
  { path:'checkout',component:CheckoutComponent}
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
