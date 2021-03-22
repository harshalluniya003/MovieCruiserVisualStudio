import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class FavoriteServiceService {
  constructor(private http:HttpClient) { }

  getFavoritesList():Observable<any>{
    return this.http.get<any>('http://localhost:8080/favorite-ang');
  }

  deleteFavorite(id:number){
    const deleteUrl = (`http://localhost:8080/delete-ang/${id}`);
    return this.http.delete(deleteUrl);
  }

}
