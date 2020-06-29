import { Component, OnInit } from '@angular/core';
import { GamesService } from '../../services/games.service';

@Component({
  selector: 'app-myorders',
  templateUrl: './myorders.component.html',
  styleUrls: ['./myorders.component.css']
})
export class MyordersComponent implements OnInit {

  constructor(private gameService: GamesService) { }

  orders = [];
  ngOnInit(): void {
    this.gameService.getOrders().subscribe((res:any)=> {
      
      res.forEach(item => {
        let idExists = false;
        this.orders.forEach(el => {
          if(el.purchaseid === item.purchaseid) {
            idExists = true;
          }
        });

        if(idExists) {
          this.orders.find(i=> i.purchaseid == item.purchaseid).games += ","+item.title;
        } else {
          item.games = item.title;
          this.orders.push(item);
        }
      })
    })
  }

}
