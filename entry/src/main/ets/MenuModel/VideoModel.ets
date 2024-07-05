
export default class  VideoModel{
  id:number
  cover:string
  videosrc:string
  title:string
  author:string



  //函数
  constructor(id:number,cover:string,videosrc:string,title:string,author:string) {
    this.cover=cover
    this.videosrc=videosrc
    this.title=title
    this.id=id
    this.author=author


  }
}