
export  default  class WeekSalesModel{

  id:number
  cover:Resource
  title:string
  price:number
  salenum:number



  constructor(id:number,cover:Resource,title:string,price:number,salenum:number) {
    this.cover=cover
    this.title=title
    this.id=id
    this.price=price
    this.salenum=salenum

  }

}