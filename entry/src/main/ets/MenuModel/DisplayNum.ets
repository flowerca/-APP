import Videodata from '../MenuModel/Videodata'
import VideoModel from '../MenuModel/VideoModel'

export default class DisplayNum{

  getdisnum(numb:number):Array<VideoModel>{

    let numarray:Array<number>=[] //返回需要显示视频数组
    let num:number=numb  //显示视频数量
    let videoList:Array<VideoModel>=[]//注意：必须加中括号，不然报错[]


    while (num-->0){
      
      numarray.push(Math.round(Math.random()*100)%10) //随机添加

    }

numarray.forEach((item,index)=>{

  videoList.push(new Videodata().getVideodata(numarray[index]))

})



    return videoList
  }


}
