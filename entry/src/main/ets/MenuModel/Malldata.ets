import MallModel from './MallModel'


export default  class Malldata{


  getmalldata():Array<MallModel>{

    let dayMall:Array<MallModel>=[
      new MallModel(1,$r('app.media.fujianmiyou'),'福建蜜柚',2.98),
      new MallModel(2,$r('app.media.wuyu'),'乌鱼',19.99),
      new MallModel(3,$r('app.media.xianxianggu'),'鲜香菇',9.90),
      new MallModel(4,$r('app.media.niuliji'),'牛里脊',41),
      new MallModel(5,$r('app.media.xisiguamian'),'细丝挂面',2.60),
      new MallModel(6,$r('app.media.niunan'),'牛腩',33.5),


    ]

  return dayMall
}





}