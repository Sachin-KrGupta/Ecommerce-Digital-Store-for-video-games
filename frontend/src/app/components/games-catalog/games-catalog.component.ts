import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { GamesService } from '../../services/games.service';
import { SharedService } from '../../services/shared.service';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-games-catalog',
  templateUrl: './games-catalog.component.html',
  styleUrls: ['./games-catalog.component.css']
})
export class GamesCatalogComponent implements OnInit {

  constructor(private router: Router, private gamesService: GamesService, private sharedService: SharedService, private authService: AuthService) { }
  gamesArray = [];
  gamesArrayOrdered = [];
  ngOnInit(): void {
    this.gamesService.getGames().subscribe((res: any) => {
      this.gamesArray = res;
      this.gamesArrayOrdered = res;
    })
  }

  navigateToDetails(item) {
    this.sharedService.selectedGame = item;
    this.router.navigateByUrl('/game-details');
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

  navigateToCatalog(category) {
    this.router.navigateByUrl('/games-catalog')
  }

  resetSort() {
    this.gamesArray = this.gamesArrayOrdered;
  }

  sortBy(type) {
    if (type == 'high') {
      this.gamesArray.sort((a, b) => {
        if (a.price > b.price)
          return 1;
        else
          return -1;
      })
    } else {
      this.gamesArray.sort((a, b) => {
        if (a.price > b.price)
          return -1;
        else
          return 1;
      })
    }
  }
}
