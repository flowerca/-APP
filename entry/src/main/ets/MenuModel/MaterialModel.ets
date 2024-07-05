
import Smallmatermodel from  './Smallmatermodel'
export default class MaterialModel{
  id:number
  name:string
  quantity:Smallmatermodel[]


  //函数
  constructor(id:number,name:string,quantity:Smallmatermodel[]) {
    this.id=id
    this.name=name
    this.quantity=quantity


  }
}
