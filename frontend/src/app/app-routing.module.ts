import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { LoginComponent } from './components/login/login.component';
import { GamesCatalogComponent } from './components/games-catalog/games-catalog.component';
import { CheckoutComponent } from './components/checkout/checkout.component';
import { GameDetailsComponent } from './components/game-details/game-details.component';
import { MyordersComponent } from './components/myorders/myorders.component';
import { AboutComponent } from './components/about/about.component';


const routes: Routes = [
  {
    path: '', component: HomeComponent
  }, {
    path: 'login', component: LoginComponent
  }, {
    path: 'games-catalog', component: GamesCatalogComponent
  }, {
    path: 'checkout', component: CheckoutComponent
  }, {
    path: 'game-details', component: GameDetailsComponent
  }, {
    path: 'myorders', component: MyordersComponent
  }, {
    path: 'about', component: AboutComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
