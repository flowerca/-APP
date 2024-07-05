


@Component
struct FunctionComponent {
  private icon_image:Resource=null
  private title:string=null

  build() {

    Row(){
      Row({space:15}){
        Image(this.icon_image)
          .width(40)
          .height(40)
        Text(this.title)
          .fontSize(18)
      }.padding(10)
      Image($r('app.media.qianjin_icon'))
        .width(30)
        .height(30)
        .margin({right:15})

    }.width('95%')
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
    .borderRadius(25)




  }
}



@Entry
@Component
export default    struct Mine {
  @State message: string = 'Hello World'

  build() {

      Column() {
        Row({space:20}){
          Image($r('app.media.touxiang_icon'))
            .width(70)
            .height(70)
            .borderRadius(50)
          Text('超级无敌大西瓜')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
        }.width('100%')
        .margin({top:30,left:20})



        FunctionComponent({icon_image:$r('app.media.shoucang_icon'),title:'我的收藏'}).margin({top:30})

        Column({space:10}){
          FunctionComponent({icon_image:$r('app.media.fankui_icon'),title:'用户反馈'})
          FunctionComponent({icon_image:$r('app.media.lianxikefu_icon'),title:'联系客服'})
          FunctionComponent({icon_image:$r('app.media.chehui_icon'),title:'撤回隐私协议'})
          FunctionComponent({icon_image:$r('app.media.guanyu_icon'),title:'关于我们'})
          FunctionComponent({icon_image:$r('app.media.gerenxinxi_icon'),title:'个人手机信息清单'})
          FunctionComponent({icon_image:$r('app.media.disanfang_icon'),title:'第三方共享信息清单'})


        }.backgroundColor(Color.White)
        .borderRadius(25)
        .margin({top:20})

        // Row(){
        //   Row({space:15}){
        //   Image($r('app.media.shoucang_icon'))
        //     .width(50)
        //     .height(50)
        //   Text('我的收藏')
        //     .fontSize(21)
        //   }.padding(10)
        //   Image($r('app.media.qianjin_icon'))
        //     .width(30)
        //     .height(30)
        //     .margin({right:15})
        //
        //
        // }.width('95%')
        // .height(80)
        // .justifyContent(FlexAlign.SpaceBetween)
        // .backgroundColor(Color.White)
        // .borderRadius(25)
        // .margin({top:30})



      }
      .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.beijing'))



  }
}