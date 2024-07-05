import MaterialModel from './MaterialModel'
import Smallmatermodel from  './Smallmatermodel'

export default class MaterialData{


  getMaterialData(id:number,name:string):Array<Smallmatermodel>{

    console.log('id:'+id)
    console.log('name:'+name)


      let returnarry:Array<Smallmatermodel>=[]
      let Material:MaterialModel[]=[
        new MaterialModel(1,'酱油手撕鸡',[new Smallmatermodel('鸡腿','2只'),
                                        new Smallmatermodel('料酒','少许'),
                                        new Smallmatermodel('生抽','3勺'),
                                        new Smallmatermodel('盐','少许'),
                                        new Smallmatermodel('耗油','少许'),
                                         new Smallmatermodel('姜片、八角、桂皮、香叶、花椒粒、葱段','根据鸡腿分分量决定'),
                                         new Smallmatermodel('蒜末','少许'),
                                         new Smallmatermodel('藤椒油/香油','5滴'),
                                         new Smallmatermodel('辣椒油','2勺')
        ]),

    new MaterialModel(2,'马卡龙',[new Smallmatermodel('TPT',''),
    new Smallmatermodel('杏仁粉','75g'),
    new Smallmatermodel('糖粉','75g'),
    new Smallmatermodel('TPT所用蛋白','27.5'),
    new Smallmatermodel('蛋白霜部分',''),
    new Smallmatermodel('糖','75g'),
    new Smallmatermodel('水','18.75g'),
    new Smallmatermodel('蛋白','27.5g'),
    ]),

    new MaterialModel(3,'蒜香鸡爪',[new Smallmatermodel('鸡爪','500g'),
      new Smallmatermodel('蒜头','2/3个'),
      new Smallmatermodel('小米辣','无硬性要求')
    ])

]

    Material.forEach((item,index)=>{
      if (item.name==name &&item.id==id) {
        returnarry=Material[index].quantity
        // console.log('222'+returnarry[1].name)
      }

    })



return returnarry;
  }


}