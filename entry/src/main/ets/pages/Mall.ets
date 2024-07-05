import Malldata from '../MenuModel/Malldata'
import MallModel from '../MenuModel/MallModel'
import WeekSalesModel from '../MenuModel/WeekSalesModel'
import WeekSalesdata from '../MenuModel/WeekSalesdata'
import Router from '@system.router'
import router from '@ohos.router'
@Entry
@Component
export default  struct Mall {
  @State WeekSalesArray:Array<WeekSalesModel>=[]
  @State DailyMallArray:Array<MallModel>=[]
  scroller: Scroller = new Scroller();
  @State message: string = 'Hello World'
  private swiperController: SwiperController = new SwiperController()



  aboutToAppear(){
    this.DailyMallArray=new Malldata().getmalldata()
    this.WeekSalesArray=new WeekSalesdata().getWeekSalesdata()
  }

  build() {
    Scroll(this.scroller) {

      Column() {
        Swiper(this.swiperController) {
          // Image('https://img0.baidu.com/it/u=2902140488,3604453758&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=1067')
          Image('https://img2.baidu.com/it/u=3068592105,4007756168&fm=253&fmt=auto&app=138&f=JPEG?w=700&h=467')




          // Image('https://img0.baidu.com/it/u=1739692806,2025492288&fm=253&fmt=auto&app=120&f=JPEG?w=608&h=455')
          Image('https://img0.baidu.com/it/u=3109509097,3215679303&fm=253&fmt=auto&app=120&f=JPEG?w=751&h=500')




          // Image('https://img2.baidu.com/it/u=1023762801,3775481642&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=730')
          Image('https://img2.baidu.com/it/u=3347611842,2004222774&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=305')



        }
        .index(0)
        .autoPlay(true)//自动播放
        .interval(5000)
        .indicator(false)
        .loop(true)//开启循环轮播
        .width('100%')
        .height('25%')
        .margin(10)

Text("每日上新")
  .fontSize(29)
  .fontWeight(FontWeight.Bolder)
  .width('100%')


        List(){
          ForEach(this.DailyMallArray,(item,index)=>{

            ListItem(){
              Column(){
              Image(this.DailyMallArray[index].cover)
                .width('95%')
                .height(110)
                .borderRadius(10)
                .margin({top:10})
                Column(){
                     Text(this.DailyMallArray[index].title)
                       .fontSize(16)
                       .fontWeight(FontWeight.Bold)

                     Text('￥'+this.DailyMallArray[index].price+' 起')
                       .fontColor(Color.Red)
                       .fontSize(15)

                        }.margin({top:2})
                .width('90%')
                .alignItems(HorizontalAlign.Start)
              }

            }.onClick(()=>{
              router.push({
                url: 'pages/Malldetail',
                params:{
                  id:this.DailyMallArray[index].id,
                  cover:this.DailyMallArray[index].cover,
                  title:this.DailyMallArray[index].title,
                  price:this.DailyMallArray[index].price,
                }
              });
            })


          })



        }.lanes(3)

        Text("7天销量榜")
          .fontSize(29)
          .fontWeight(FontWeight.Bolder)
          .width('100%')
          .margin({left:10,top:10})

        List(){
          ForEach(this.WeekSalesArray,(item,index)=>{

            ListItem(){
              Column(){
                Image(this.WeekSalesArray[index].cover)
                  .width('95%')
                  .height(110)
                  .borderRadius(10)
                  .margin({top:10})
                Column(){
                  Text(this.WeekSalesArray[index].title)
                    .fontSize(16)
                    .fontWeight(FontWeight.Bold)


                  Row(){
                  Text('￥'+this.WeekSalesArray[index].price+' 起')
                    .fontColor(Color.Red)
                    .fontSize(15)

                    Text('7天销量 '+this.WeekSalesArray[index].salenum)
                      .fontSize(12)
                  }.justifyContent(FlexAlign.SpaceBetween)
                  .width('100%')

                }.margin({top:2})
                .width('90%')
                .alignItems(HorizontalAlign.Start)
              }

            }.onClick(()=>{
              router.push({
                url: 'pages/Malldetail',
                params:{
                  id:this.WeekSalesArray[index].id,
                  cover:this.WeekSalesArray[index].cover,
                  title:this.WeekSalesArray[index].title,
                  price:this.WeekSalesArray[index].price,
                }
              });
            })



          })



        }.lanes(2)





      }
      .width('100%')

    }

    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    // .scrollBar(BarState.On) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .scrollBarWidth(1) // 滚动条宽度
    .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹
  }
}