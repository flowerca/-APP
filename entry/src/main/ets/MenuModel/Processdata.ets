import ProcessModel from './ProcessModel'
import  SmallProcessModel from './SmallProcessModel'

export default class Processdata{


  getProcessData(id:number,name:string):SmallProcessModel[]{
    let returnarry:SmallProcessModel[]=[]
    let Process:ProcessModel[]=[
      new ProcessModel(1,'酱油手撕鸡',new SmallProcessModel($r('app.media.chicken1'),'热油煎香鸡腿 ps:注意用厨房纸把鸡腿表面多余水分吸干')),
      new ProcessModel(1,'酱油手撕鸡',new SmallProcessModel($r('app.media.chicken2'),'逐渐焦黄色')),
    new ProcessModel(1,'酱油手撕鸡',new SmallProcessModel($r('app.media.chicken3'),'正反两面呈现焦黄色即可，倒出多余油，留少量底油，将葱段、花椒粒、八角、桂皮、香叶倒入锅中~料酒、多一些的生抽、少量耗油倒入~翻炒均匀接着倒入与鸡腿平行的开水，小火40分钟最后大火收汁，鸡腿盛盘放凉撕成小片，倒点汤汁，撒点芝麻即可！ ')),
    new ProcessModel(1,'酱油手撕鸡',new SmallProcessModel($r('app.media.chicken4'),'最后成品图原图展示配套的蘸料配方：蒜末、藤椒油（也可是香油)辣椒油、炖鸡的原汤两勺')),

new ProcessModel(2,'马卡龙',new SmallProcessModel($r('app.media.makalong1'),'将75克杏仁粉和75克糖粉混合，即为TPT。加入27.5克蛋白搅拌至不见干粉即可。 ')),
new ProcessModel(2,'马卡龙',new SmallProcessModel($r('app.media.makalong2'),'将蛋白霜部分的27.5克蛋白打发到湿性发泡接近干性发泡，这个度难以掌握的就打到干性发泡吧，反正我是这么干的，每个人做法不同，能准确打到那个度是最好啦！ ')),
new ProcessModel(2,'马卡龙',new SmallProcessModel($r('app.media.makalong3'),'将18.75克水和75克糖放入锅中，中小火加热到116-121度之间 ')),
new ProcessModel(2,'马卡龙',new SmallProcessModel($r('app.media.makalong4'),'将加热好的糖水分多次加入蛋白中，加热糖水时间过长可能导致蛋白消泡，加入糖水前再打发一下。打发到蛋白很柔软但是有尖弯钩的状态。温度大概比手温高一点点。 ')),
new ProcessModel(2,'马卡龙',new SmallProcessModel($r('app.media.makalong5'),' 打发好的蛋白霜取三分之一加入1，第一次可以动作大一点搅拌均匀，第二次用J字法搅拌，即在盆中以“」”字形状搅拌，次数控制在20-25次直接，不可过多搅拌。第三次用同样的方法，也可以用捞拌法拌匀，即捞起来让面糊呈飘带状落下，最后搅拌好的面糊要连续飘落才是最佳状态。倒入裱花袋，挤在烤盘上，挤完震几下烤盘震出气泡。刚开始学做小马最好老老实实用结皮发，干燥15-30分钟，这个看天气干燥程度，可以隔一会儿去试一下是否结皮，即手按下去能不黏手为佳。')),
new ProcessModel(2,'马卡龙',new SmallProcessModel($r('app.media.makalong6'),' 结皮后送入烤箱最下层，160度，13分钟。这个还是要说一句看自家烤箱脾气，最好有温度计用温度计测量一下烤箱温度，没有可以多试几次看看。时间不要大约，这个最好用计时器计算好，到时间立马拿出来。晾凉后取下饼身，夹馅~')),


new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua1'),'鸡爪冷水下过，加葱姜料酒去腥，水开后煮8分钟，关火焖5分钟 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua2'),'煮好后冲洗干净，洗去里面的胶质 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua3'),'洗好后控干水分，加1勺生抽，1勺蚝油和半勺老抽 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua4'),'翻拌均匀。 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua5'),'葱姜，洋葱，香菜小火炸出香味，捞出料渣 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua6'),'蒜和小米辣分别切碎末。 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua7'),'浇上炸好的香油，加2勺生抽，1勺蚝油。 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua8'),'少许盐和白糖 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua9'),'1勺烧烤料 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua10'),'搅拌均匀 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua11'),'铺上调制好的蒜蓉香辣酱，拌匀，腌制2个小时左右（放冰箱冷藏口感更好 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua12'),'哇哦 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua13'),'刚拌出来就偷吃了一个自己在家做干净又卫生，好吃到停下来 ')),
new ProcessModel(3,'蒜香鸡爪',new SmallProcessModel($r('app.media.jizhua'),'喜欢吃软烂的的鸡爪可以多煮一会儿，用料拌着吃也是绝绝子呀（拌匀后放冰箱冷藏几个小时后更入味的） '))

    ]

    Process.forEach((item,index)=>{
      if (item.name==name &&item.id==id) {
        // returnarry=Process[index].process
        returnarry.push(Process[index].process)


        // console.log('888'+returnarry.process[1])
      }

    })

    // console.log('888'+returnarry[2].process)

     return returnarry;
  }

}