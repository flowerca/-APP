
import router from '@ohos.router'
import Router from '@system.router'



const Mallcontent= router.getParams()


@CustomDialog
struct CustomDialogExample {
  @State num:number=1

  controller: CustomDialogController
  build() {

    Column() {


      Row() {
        Image(Mallcontent['cover'])
          .width(100)
          .height(100)
        .borderRadius(20)
        Column() {
          Text(Mallcontent['title'])
            .fontSize(27)
            .fontWeight(FontWeight.Bold)
            .margin({left:10})
          Text('￥' +Math.round(Mallcontent['price']*this.num*100)/100.0)
            .fontColor(Color.Red)
            .fontSize(22)

            .width('100%')
            .margin({ left: 10 })
            .fontSize(22)

        }.width('90%')
        .alignItems(HorizontalAlign.Start)
      }.width('100%')
      .margin({left:10,top:10})


      Row(){
        Text("数量")
      Row() {
        Text('-').fontSize(30)
          .onClick(()=>{
            if (this.num>1)
            this.num--
          })
        Text(this.num.toString()).fontSize(20)
        Text('+').fontSize(30)
          .onClick(()=>{
            this.num++
          })

      }
      .justifyContent(FlexAlign.SpaceBetween)

      .width(120)
      }.justifyContent(FlexAlign.SpaceBetween)
      .width('90%')



      Button('直接购买')
        .width('60%')
        .backgroundColor('#ff4d4d')
        .height(50)
        .margin({top:20})




    }.height('40%')


  }
}



@Entry
@Component
struct Malldetail {


  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({}),
  })


  build() {
Column(){
      Column({space:10}) {
        Stack({alignContent:Alignment.TopStart}){

          Image(Mallcontent['cover'])
            .width('100%')
            .height('40%')
          Image($r('app.media.return_circular'))
            .width(40)
            .height(40)
            .opacity(0.5)
            .onClick(()=>{
              Router.push({
                uri:'pages/index'
              })
            })
        }

        Text(Mallcontent['title'])
          .fontSize(32)
          .fontWeight(FontWeight.Bold)
          .width('100%')
          .margin({left:20})
        Text('￥'+Mallcontent['price']+' 起')
          .fontColor(Color.Red)
          .fontSize(15)
          .width('100%')
          .margin({left:20})
          .fontSize(22)
        Column({space:10}){
        Text('发货 顺丰 | 预计 2天内 发货，发货后 2 天内送达')
        Text('服务 |不好吃退款')
        }.width('100%')
        .alignItems(HorizontalAlign.Start)
        .margin({left:20})

      }
      .width('100%')
  .height('90%')

  Row({space:10}){

    Image($r('app.media.shoucang_nor'))
      .width(50)
      .height(50)
      Image($r('app.media.fenxiang'))
        .width(50)
        .height(50)
    Button('直接购买')
      .width('60%')
      .backgroundColor('#ff4d4d')
      .height(50)
      .margin({left:10})
      .onClick(() => {
        this.dialogController.open()
      })


  }.width('100%')
  .height('10%')



}.height('100%')


  }
}