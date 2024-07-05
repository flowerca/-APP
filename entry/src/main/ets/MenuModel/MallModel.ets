
export default class  MallModel{
  id:number
  cover:Resource
  title:string
  price:number



  //函数
  constructor(id:number,cover:Resource,title:string,price:number) {
    this.cover=cover
    this.title=title
    this.id=id
    this.price=price


  }
}
