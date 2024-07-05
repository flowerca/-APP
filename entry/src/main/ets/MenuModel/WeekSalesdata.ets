import WeekSalesModel from './WeekSalesModel'


export default class WeekSalesdata{

getWeekSalesdata():Array<WeekSalesModel>{

  let weekSales:Array<WeekSalesModel>=[

    new WeekSalesModel(1,$r('app.media.yumi'),'大玉米棒子',3.7,982),
    new WeekSalesModel(2,$r('app.media.maodou'),'毛豆',3.5,885),
    new WeekSalesModel(3,$r('app.media.qiukui'),'秋葵',7.6,870),
    new WeekSalesModel(4,$r('app.media.gonggan'),'贡柑',4.5,751),
    new WeekSalesModel(5,$r('app.media.paigu'),'排骨',29.99,658),
    new WeekSalesModel(6,$r('app.media.fanqie'),'番茄',4.98,611),
    new WeekSalesModel(7,$r('app.media.xilanhua'),'西兰花',7.39,602),
    new WeekSalesModel(7,$r('app.media.hongxiangshao'),'红香苕',3.98,587),
  ]

  return weekSales
}


}