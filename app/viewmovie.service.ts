import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http'
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class ViewmovieService {

  constructor(private httpClient:HttpClient) { }
  url="http://localhost:8080/customer-ang"

  public getAllMovie():Observable<any>{
    return this.httpClient.get<any>(this.url);
  }

  public add(id:number){
    return this.httpClient.post<any>(`http://localhost:8080/add-ang/${id}`,id);
  }

}
