import  Menudata from '../MenuModel/Menudata'
import  MenuModel from '../MenuModel/MenuModel'
import router from '@ohos.router'
// @Entry
// @Preview
@Component
 export default  struct RecommendationPage {
  @State menucontent:Array<MenuModel>=[]
  private swiperController: SwiperController = new SwiperController()


  aboutToAppear(){
    this.menucontent=new Menudata().getmenuData()
  }


  build() {

    Row() {

      Column() {
        Swiper(this.swiperController) {
        // Image('https://img0.baidu.com/it/u=2902140488,3604453758&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=1067')
        Image($r('app.media.duomangxiaowanzi'))
          .width(100)
          .height(80)
          .borderRadius(20)



        // Image('https://img0.baidu.com/it/u=1739692806,2025492288&fm=253&fmt=auto&app=120&f=JPEG?w=608&h=455')
        Image($r('app.media.fensisuanrongxia'))
          .width(100)
          .height(80)
          .borderRadius(20)


        // Image('https://img2.baidu.com/it/u=1023762801,3775481642&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=730')
        Image($r('app.media.mangguobuding'))
          .width(100)
          .height(80)
          .borderRadius(20)

      }
      .index(0)
      .autoPlay(true)//自动播放
      .interval(3000)
      .indicator(false)
      .loop(true)//开启循环轮播
      .width('95%')
      .height('20%')
      .margin(10)

Divider().strokeWidth(3).width('20%')


        // ForEach(this.menucontent,(item)=>{
       //   Image(item.dish_image)
       //     .width(40)
       //     .height(40)
       //   Text(item.dish_name)


       // })

        // List(){
        //   ForEach(this.menucontent,(item,index)=> {
        //     ListItem(){
        //       Column(){
        //       Image(this.menucontent[index].dish_image)
        //         .width(140)
        //         .height(100)
        //       Text(this.menucontent[index].dish_name)
        //       }
        //     }
        //   })
        // }
        Grid(){
          ForEach(this.menucontent,(item,index)=> {
            GridItem(){

              Column({space:5}){
                Image(this.menucontent[index].dish_image)
                  .width('100%')
                  .height(100)
                  .borderRadius(15)
                  .backgroundColor(Color.Orange)


                Text(this.menucontent[index].dish_name)
                  .fontSize(17)
                  .fontStyle(FontStyle.Normal)

              }.onClick(()=>{
                router.push({
                  url: 'pages/process',
                  params:{
                    id:this.menucontent[index].id,
                    dish_image:this.menucontent[index].dish_image,
                    dish_name:this.menucontent[index].dish_name,
                  }
                });
              })
            }.margin(10)
          })
        }
        .columnsTemplate('1fr  1fr')
        .margin(10)


      }
      .width('100%')
    }
  .height('100%')
  }
}