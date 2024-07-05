import router from '@ohos.router'
import MaterialModel from '../MenuModel/MaterialModel'
import Materialdata from  '../MenuModel/Materialdata'
import Smallmatermodel from '../MenuModel/Smallmatermodel'
import Processdata from '../MenuModel/Processdata'
import SmallProcessModel from  '../MenuModel/SmallProcessModel'


const Menudata= router.getParams()
// console.log('测试输出'+Menudata['id'])



@Entry
@Component
struct Process {
  scroller: Scroller = new Scroller();
  @State message: string = 'Hello World'
  @State material:Array<Smallmatermodel>=[]
  @State processdetail:Array<SmallProcessModel>=[]


  aboutToAppear(){
    // this.material=new Materialdata().getMaterialData(Menudata['id'],Menudata['dish_name'])
    this.material=new Materialdata().getMaterialData(Menudata['id'],Menudata['dish_name'])
    this.processdetail=new Processdata().getProcessData(Menudata['id'],Menudata['dish_name'])
  }

  build() {
    Scroll(this.scroller) {
      Column({ space: 10 }) {



        // ForEach(this.material,(item,index)=>{
        //   Text(this.material[index].name)
        //     .fontSize(20)
        // })
        // Text(this.material[0].name)


        Stack({alignContent:Alignment.TopStart}){



        Column(){
        Image(Menudata['dish_image'])
          .width('95%')
          .height('25%')
          .borderRadius({topLeft:10,topRight:10})

          Row() {

          }
          .height(40)
          .width('95%')
          .backgroundColor(Color.Black)
          .margin({ top: -40 })
          .opacity(0.4)

        }.width('100%')
          .margin({top:10})


          Row(){
            Image($r('app.media.return'))
              .width(30)
              .height(30)
              .margin({ left: '3%' })
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/index'
                })
              })

            Image($r('app.media.sanheng'))
              .width(25)
              .height(25)
              .margin({right:'4%'})

          }.width('100%')
          .margin({top:10})
          .justifyContent(FlexAlign.SpaceBetween)

        }



        Text(Menudata['dish_name'])
          .fontColor(Color.White)
          .fontSize(25)
          .margin({ top: -50 })
          .padding({ left: 12 })
          .width('100%')


        Column({ space: 10 }) {
          Row() {
            Image($r('app.media.tt'))
              .height(30)
            Text('用料')
              .fontSize(25)
              .fontWeight(FontWeight.Bolder)

          }.width("100%")
          //   Row(){
          //
          //
          //
          //     Text('用料1')
          //       .fontSize(17)
          //     Text('50g')
          //   }.justifyContent(FlexAlign.SpaceBetween)
          //   .width("80%")
          //

        }.width('100%')


        ForEach(this.material, (Item, index) => {
          Row() {
            Text(this.material[index].name)
              .fontSize(17)
              .width('50%')
            Text(this.material[index].num)


          }.justifyContent(FlexAlign.SpaceBetween)
          .width("80%")
          .margin({ left: '10%' })

        })


        Column({space:20}) {
          Row() {
            Image($r('app.media.tt'))
              .height(30)
            Text('步骤')
              .fontSize(25)
              .fontWeight(FontWeight.Bolder)

          }.width("100%")


          ForEach(this.processdetail, (item, index) => {
            Column() {
              Image(this.processdetail[index].image)
                .height(150)
                .width('90%')
                .borderRadius(20)
              Text(this.processdetail[index].process)
                .width("80%")
                .textAlign(TextAlign.Start)

            }

          })

          // Image($r('app.media.test'))
          //   .height(150)
          //   .width('90%')
          //   .borderRadius(20)
          //
          // Text('步骤1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')
          //   .width("80%")
          //   .textAlign(TextAlign.Start)

        }


      }
      .width('100%')

      .alignItems(HorizontalAlign.Start)

    }

    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    // .scrollBar(BarState.On) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .scrollBarWidth(1) // 滚动条宽度
    .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹

  }
}