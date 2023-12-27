import MainViewModel from '../viewmodel/MainViewModel';
import ItemData from '../viewmodel/ItemData';
import ItemData_2 from '../viewmodel/ItemData_2';
@Entry
@Component
  //折现图函数，共5格，每格30.4像素，最低0点Y偏移149.最大值偏移-3
export struct zx_picture_jg {
  @State number_1 :number = -3
  @State number_2 :number = 30.4-3
  @State number_3 :number = 30.4-3+30.4+30.4
  @State number_4 :number = 30.4-3+30.4
  @State number_5 :number = 149-30.4
  @State number_6 :number = 30.4-3+30.4

  // //数据接口与刷新
  // getNumberData(){
  //   let jsondata;
  //   let url = 'https://quan.suning.com/getSysTime.do'
  //   let url_2 = 'http://123.60.166.120:9003/harmonyos/test_api/'
  //   let httpRequest = http.createHttp();
  //   // 用于订阅http响应头，此接口会比request请求先返回。可以根据业务需要订阅此消息
  //   // 从API 8开始，使用on('headersReceive', Callback)替代on('headerReceive', AsyncCallback)。 8+
  //   httpRequest.request(
  //     // 填写http请求的url地址，可以带参数也可以不带参数。URL地址需要开发者自定义。请求的参数可以在extraData中指定
  //     // url,
  //     url_2,
  //     {
  //       method: http.RequestMethod.GET, // 可选，默认为http.RequestMethod.GET
  //       // 开发者根据自身业务需要添加header字段
  //       header: {
  //         'Content-Type': 'application/json'
  //       },
  //       connectTimeout: 60000, // 可选，默认为60s
  //       readTimeout: 60000, // 可选，默认为60s
  //     }, (err, data) => {
  //     if (!err) {
  //       jsondata = data.result
  //       jsondata = JSON.parse(jsondata)
  //       this.number_1 = jsondata.carbon_emissions
  //       this.number_4 = jsondata.carbon_price
  //       this.refresh();
  //       console.info("数据获取成功:"+data.result)//日志调试函数，展示获取数据
  //       console.info("数据获取成功:"+this.number_1)
  //       console.info("数据获取成功:"+this.number_4)
  //     } else {
  //       Prompt.showToast({
  //         message:"数据获取失败",
  //         duration:2000
  //       });
  //       console.info("数据失败")
  //       console.info("失败原因："+data.result)
  //     }
  //   }
  //   );
  // }
  // refresh(){
  //   this.getNumberData();
  // }
  build() {
    Column(){
      Stack(){
        Column(){
          ForEach(MainViewModel.getSettingColumnData_bg_1_1(),(Item_sj:ItemData)=>{
            Row({space:10}){
              Text(Item_sj.title).fontSize(13)
              Line()
                .opacity(Item_sj.number_1)
                .height(10)
                .stroke(1)
                .startPoint([0,0])
                .endPoint([220,0])
                .strokeDashArray([6, Item_sj.others])
            }.margin({top:15})
          })
          Column(){
            Row({space:30}){
              ForEach(MainViewModel.getSettingColumnData_bg_2(),(Item_sj:ItemData)=>{
                Text('')
                  .padding({left:6})
                  .borderWidth({left:0.6,})
                  .offset({x:1,y:-8})
              })
            }
            Row({space:3}){
              ForEach(MainViewModel.getSettingColumnData_bg_2(),(Item_sj:ItemData)=>{
                Text(Item_sj.title).fontSize(11)
                  .padding({left:6})
                  .offset({x:12,y:-10})
              })
            }
          }
        }
        Column(){
          Row(){
            ForEach(MainViewModel.getSettingColumnData_bg_4_jg(this.number_1,this.number_2,this.number_3,
            this.number_4,this.number_5,this.number_6),(Item_zx:ItemData_2)=>{
              Line()
                .opacity(1)
                .height(10)
                .stroke('#F39423')
                .strokeWidth(2)
                .startPoint([Item_zx.number_1,Item_zx.number_3])
                .endPoint([Item_zx.number_2,Item_zx.number_4])
            })
          }
        }
        .height('150')
      }
      // 展示调用数据内容(调试使用)
      // Column(){
      //   Text('this.num')
      //     // .fontSize(this.num)
      // }.width('100%')
      // Rect().width(this.num).height(25).fill('#6BD04E')
    }.width('60%')
    //点击触发接口
    // .onClick(this.refresh.bind(this))
  }
}
