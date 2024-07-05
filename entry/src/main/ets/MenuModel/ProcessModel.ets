import SmallProcessModel from './SmallProcessModel'
export default class  ProcessModel{
  id:number
  name:string
  process:SmallProcessModel



  //函数
  constructor(id:number,name:string,process:SmallProcessModel) {
    this.id=id
    this.name=name
    this.process=process


  }
}