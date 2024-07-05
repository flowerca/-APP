import MenuModel from './MenuModel'

export default class Menudata{


  getmenuData():Array<MenuModel>{
let recommend:MenuModel[]=[
    new MenuModel(1,'酱油手撕鸡',$r('app.media.chicken')),
    new MenuModel(2,'马卡龙',$r('app.media.makalong')),
    new MenuModel(3,'蒜香鸡爪',$r('app.media.jizhua')),
    new MenuModel(4,'低卡好吃多芒小丸子',$r('app.media.duomangxiaowanzi')),
    new MenuModel(5,'粉丝蒜蓉虾',$r('app.media.fensisuanrongxia')),
    new MenuModel(6,'甜甜的芒果布丁',$r('app.media.mangguobuding')),
    new MenuModel(7,'透心凉的西瓜凉粉',$r('app.media.xigualiangfen')),
    new MenuModel(8,'低卡好吃多芒小丸子',$r('app.media.duomangxiaowanzi')),
    new MenuModel(9,'粉丝蒜蓉虾',$r('app.media.fensisuanrongxia')),
    new MenuModel(10,'甜甜的芒果布丁',$r('app.media.mangguobuding')),
    new MenuModel(11,'透心凉的西瓜凉粉',$r('app.media.xigualiangfen')),


]



      

    return recommend;
}

}