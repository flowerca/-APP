import  promptAction from '@ohos.promptAction'
import router from '@ohos.router';
import Prompt from '@system.prompt';
@Entry
@Component
struct login {
  @State account:string='';
  @State password:string='';
  @State isShowProgress:Boolean=false;
  private timeOutId = null;
  @Builder imageButton(src:Resource){
    Button({type:ButtonType.Circle,stateEffect:true}){
      Image(src)
    }
    .height(40)
    .width(40)
    .backgroundColor(Color.White)
  }
  login(){
    if(this.account===''||this.password===''){
      promptAction.showToast({message:'你输入的用户名或密码不能为空'})
      Prompt.showToast({message:'你输入的用户名或密码不能为空'})
    }else{
      this.isShowProgress=true;
      this.timeOutId=setTimeout(()=>{
        this.timeOutId = null;
        router.pushUrl({url:'pages/index'})
      },1000)
    }
  }
  build() {
    Row() {
      Column({space:10}) {
        Image($r('app.media.shipu_icon'))
          .width(150)
          .height(150)

        // Text('账号密码登录')
        //   .fontSize(20)
        //   .fontWeight(FontWeight.Medium)
        //   .fontColor(Color.Black)
        // Text('safasfds')
        //   .fontSize(12)
        //   .fontColor(Color.Gray)
        TextInput({placeholder:'账号'}).onChange((value: string) => {
          this.account=value;
        }).width('95%')
        TextInput({placeholder:'密码'}).onChange((value: string) => {
          this.password=value;
        }).width('95%')
          .type(InputType.Password)
        Row(){
          Text("短信验证登录服务").fontColor('#007dff')
          Text("忘记密码").fontColor('#007dff')
        }.width('95%')
        .justifyContent(FlexAlign.SpaceBetween)
        Button("登录",{type:ButtonType.Capsule})
          .backgroundColor('#1fc201')
          .width("70%")
          .margin({top:80})
          .onClick(()=>{
            this.login()
            // promptAction.showToast({message:'你输入的用户名或密码不能为空'})
          })
        Text("注册账号")
          .fontSize(15)
          .fontColor(Color.Blue)
        Blank()
        Text("其他登录方式")
          .fontSize(12)
          .fontColor(Color.Gray)
          .margin({top:50,left:20})

        Row({space:25}){
          this.imageButton($r('app.media.weixin_icon'))
          this.imageButton($r('app.media.QQ_icon'))
          this.imageButton($r('app.media.shouji_icon'))
        }
        .margin({left:20})
      }
      .width('100%')
    }
    .height('100%')
  }
}