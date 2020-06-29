import { Component, OnInit } from '@angular/core';
import { SharedService } from '../../services/shared.service';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-game-details',
  templateUrl: './game-details.component.html',
  styleUrls: ['./game-details.component.css']
})
export class GameDetailsComponent implements OnInit {

  constructor(private sharedService: SharedService, private router: Router, private authService: AuthService) { }

  game;

  ngOnInit(): void {
    this.game = this.sharedService.selectedGame;
    console.log(this.game);
  }

  
  addToCart(item) {
    if(!this.authService.token) {
      this.router.navigateByUrl("/login");
    }
    this.sharedService.cart.push(item);
    this.sharedService.cartvalue += item.price;
    this.sharedService.updateCart();
    this.router.navigateByUrl("/checkout");
  }


}
