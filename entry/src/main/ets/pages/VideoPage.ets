import Videodata from '../MenuModel/Videodata'
import VideoModel from '../MenuModel/VideoModel'
import DisplayNum from '../MenuModel/DisplayNum'



@Entry
@Component
export default struct VideoPage {
  @State videoList:Array<VideoModel>=[]
  @State videoSrc:string='http://192.168.56.1:8080/video1.mp4'
  @State previewUri:string='http://192.168.56.1:8080/video1.png'
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = false
  @State showControls: boolean = true
  @State numarray:Array<number>=[]
  scroller: Scroller = new Scroller();

  controller: VideoController = new VideoController()


  aboutToAppear(){

    this.videoList=new DisplayNum().getdisnum(5) //获取播放视频列表

  }

  build() {

    Column(){

      Video({
                  src:this.videoSrc,
                  previewUri: this.previewUri,
                  controller: this.controller
                }).width('100%').height(200)
                  .autoPlay(this.isAutoPlay)
                  .controls(this.showControls)
                  // .margin({top:5})

      Scroll(this.scroller) {

      Column(){

      Grid(){
            ForEach(this.videoList,(item,index)=>{


              GridItem(){
                        Column(){
                          Row(){
        Image(this.videoList[index].cover)
          .width(150)
          .height(90)
          .borderRadius(10)
Column({space:20}){
          Text(this.videoList[index].title) //标题
            .fontSize(18)


          Text(this.videoList[index].author)//作者
            .fontSize(13)


          }.alignItems(HorizontalAlign.Start)
            .width('50%')
            .backgroundColor(Color.White)
                            .onClick(()=>{
                              this.previewUri=this.videoList[index].cover
                              this.videoSrc=this.videoList[index].videosrc
                              this.isAutoPlay=true

                            })


          }.width('95%')
          .justifyContent(FlexAlign.SpaceBetween)
                          Divider().strokeWidth(1)
                            .margin({top:5})
        }

        }.margin({top:20})



      })

      }

      }.width('100%')



    }

    .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
    // .scrollBar(BarState.On) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .scrollBarWidth(1) // 滚动条宽度
      .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹





    }.width('100%')






}
}