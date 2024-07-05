export default class MenuModel{
  id:number
  dish_name:string
  dish_image:Resource


  //函数
  constructor(id:number,dish_name:string,dish_image:Resource) {
    this.id=id
    this.dish_name=dish_name
    this.dish_image=dish_image


  }
}