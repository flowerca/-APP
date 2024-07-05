import { Level } from '@ohos/hypium'
import VideoModel from '../MenuModel/VideoModel'

export default class Videodata{

getVideodata(id:number):VideoModel{
  let returnvideo:VideoModel
  let VideoList:VideoModel[]=[
    // new VideoModel(1,$r('app.media.video1'),$rawfile('video1.mp4'),'论：如何把羊肉，做成素菜','绵羊料理'),
    // new VideoModel(2,$r('app.media.video7'),$rawfile('video7.mp4'),'一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),
    // new VideoModel(3,$r('app.media.video1'),$rawfile('video1.mp4'),'论：如何把羊肉，做成素菜','绵羊料理'),
    // new VideoModel(4,$r('app.media.video7'),$rawfile('video7.mp4'),'一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),
    // new VideoModel(5,$r('app.media.video1'),$rawfile('video1.mp4'),'论：如何把羊肉，做成素菜','绵羊料理'),
    // new VideoModel(6,$r('app.media.video7'),$rawfile('video7.mp4'),'一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),
    // new VideoModel(7,$r('app.media.video1'),$rawfile('video1.mp4'),'论：如何把羊肉，做成素菜','绵羊料理'),
    // new VideoModel(8,$r('app.media.video7'),$rawfile('video7.mp4'),'一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),
    //

    new VideoModel(1,'http://192.168.56.1:8080/video1.png','http://192.168.56.1:8080/video1.mp4','论：如何把羊肉，做成素菜','绵羊料理'),
  new VideoModel(2,'http://192.168.56.1:8080/video2.png','http://192.168.56.1:8080/video2.mp4','这才是懒人早餐好吃的做法，营养又美味喜欢记得收藏','阿光美食记'),
    new VideoModel(3,'http://192.168.56.1:8080/video3.png','http://192.168.56.1:8080/video3.mp4','新疆美食馕坑肉，整块儿的羊排烤的外焦里嫩，','新疆集艾力'),
    new VideoModel(4,'http://192.168.56.1:8080/video4.png','http://192.168.56.1:8080/video4.mp4','花10天炸一只鸡腿？入嘴的瞬间，值了！','绵羊料理'),
    new VideoModel(5,'http://192.168.56.1:8080/video5.png','http://192.168.56.1:8080/video5.mp4','十几味食材一锅炖，自私的姐姐吃到渣都不剩','绵羊料理'),
    new VideoModel(6,'http://192.168.56.1:8080/video6.png','http://192.168.56.1:8080/video6.mp4','店里卖898一份的招牌菜，自己在家做，居然只花了…','绵羊料理'),
    new VideoModel(7,'http://192.168.56.1:8080/video7.png','http://192.168.56.1:8080/video7.mp4','一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),
    new VideoModel(8,'http://192.168.56.1:8080/video7.png','http://192.168.56.1:8080/video7.mp4','十几味食材一锅炖，自私的姐姐吃到渣都不剩','绵羊料理'),
    new VideoModel(9,'http://192.168.56.1:8080/video7.png','http://192.168.56.1:8080/video7.mp4','店里卖898一份的招牌菜，自己在家做，居然只花了…','绵羊料理'),
    new VideoModel(10,'http://192.168.56.1:8080/video1.png','http://192.168.56.1:8080/video7.mp4','一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),






  // new VideoModel(2,$r('app.media.video2'),$rawfile('video2.mp4'),'这才是懒人早餐好吃的做法，营养又美味喜欢记得收藏','阿光美食记'),
  //   new VideoModel(3,$r('app.media.video3'),$rawfile('video3.mp4'),'新疆美食馕坑肉，整块儿的羊排烤的外焦里嫩，','新疆集艾力'),
  //   new VideoModel(4,$r('app.media.video4'),$rawfile('video4.mp4'),'花10天炸一只鸡腿？入嘴的瞬间，值了！','绵羊料理'),
  //   new VideoModel(5,$r('app.media.video5'),$rawfile('video5.mp4'),'十几味食材一锅炖，自私的姐姐吃到渣都不剩','绵羊料理'),
  //   new VideoModel(6,$r('app.media.video6'),$rawfile('video6.mp4'),'店里卖898一份的招牌菜，自己在家做，居然只花了…','绵羊料理'),
  //   new VideoModel(7,$r('app.media.video7'),$rawfile('video7.mp4'),'一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),
  //   new VideoModel(8,$r('app.media.video5'),$rawfile('video5.mp4'),'十几味食材一锅炖，自私的姐姐吃到渣都不剩','绵羊料理'),
  //   new VideoModel(9,$r('app.media.video6'),$rawfile('video6.mp4'),'店里卖898一份的招牌菜，自己在家做，居然只花了…','绵羊料理'),
  //   new VideoModel(10,$r('app.media.video7'),$rawfile('video7.mp4'),'一颗茶叶蛋敢卖3000块？这难道是仙丹？','南翔不爱吃饭'),

  ]

  VideoList.forEach((item,index) => {
    if (VideoList[index].id==id){
      returnvideo=VideoList[index]
    }
  });

  return returnvideo
}

}