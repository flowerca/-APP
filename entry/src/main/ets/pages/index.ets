import RecommendationPage from './RecommendationPage'
import router from '@ohos.router'
import  VideoPage from './VideoPage'
import Mall from './Mall'
import mine from '../pages/mine'




@Entry
@Component
struct Index {
  private tabsController : TabsController = new TabsController()
  @State currentIndex:number=0


  @Builder TabBuilder(title: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabsController.changeIndex(this.currentIndex);

    })
  }


  build() {

    Tabs({ barPosition: BarPosition.End,controller: this.tabsController}) {
      TabContent(){

      Row() {
        Column() {
          Row() {
            Image($r('app.media.gongju'))
              .width(26)
              .height(26)
            TextInput({ placeholder: '菜谱' })
              .type(InputType.Normal)
              .enterKeyType(EnterKeyType.Search)
              .width('80%')
              .height(35)

            Image($r('app.media.xiaoxi'))
              .width(26)
              .height(26)
          }.justifyContent(FlexAlign.SpaceBetween)
          .width('95%')

          Tabs({ barPosition: BarPosition.Start }) {
            TabContent() {
              RecommendationPage()
            }.tabBar('推荐')

            TabContent() {
              VideoPage()
            }.tabBar('视频')

            TabContent() {
              Mall()
            }.tabBar('商城')
          }

        }
        .width('100%')
      }
      .height('100%')

    }.tabBar(this.TabBuilder('首页', 0, $r('app.media.shouye_select'), $r('app.media.shouye_nor')))
      TabContent(){
        mine()
      }.tabBar(this.TabBuilder('我的', 1, $r('app.media.mine_select'), $r('app.media.mine_nor')))

    }.scrollable(false)


  }
}