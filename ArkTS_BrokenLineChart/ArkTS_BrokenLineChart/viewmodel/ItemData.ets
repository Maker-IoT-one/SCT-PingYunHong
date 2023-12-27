export default class PageResource {//页面资源传参
  title?: string;
  others?: string;
  others_2?:string;
  img_2?:Resource;
  others_3?:string
  number_1?:number
  constructor(
    title?: string,
    others?: string,
    others_2?:string,
    img_2?:Resource,
    others_3?:string,
    number_1?:number
  ) {
    this.title = title;
    this.others = others;
    this.others_2 = others_2;
    this.img_2 = img_2;
    this.others_3 = others_3;
    this.number_1= number_1;
  }
}