import ItemData from './ItemData';
import ItemData_2 from '../viewmodel/ItemData_2';
export class MainViewModel {
  getSettingColumnData_bg_1_1(): Array<ItemData> {
    let settingListData: ItemData[] = [
      new ItemData('  5  ','2','',),
      new ItemData('  4  ','2','',),
      new ItemData('  3  ','2',''),
      new ItemData('  2  ','2',''),
      new ItemData('  1  ','2',''),
      new ItemData('  0  ','0',''),
    ];
    return settingListData;
  }
  getSettingColumnData_bg_2(): Array<ItemData> {
    let settingListData: ItemData[] = [
      new ItemData('12.18','2',''),
      new ItemData('12.19','2'),
      new ItemData('12.20','2'),
      new ItemData('12.21','2'),
      new ItemData('12.22','0'),
      new ItemData('12.23','0'),
    ];
    return settingListData;
  }
  getSettingColumnData_bg_4_jg(num : number,num_2 : number,num_3 : number,
                               num_4 : number,num_5 : number,num_6 : number): Array<ItemData_2> {//动态表格数据传输_测试_折线_碳价预测
    let settingListData: ItemData_2[] = [
      new ItemData_2(37,74,num,num_2),
      new ItemData_2(0,37,num_2,num_3),
      new ItemData_2(0,37,num_3,num_4),
      new ItemData_2(0,37,num_4,num_5),
      new ItemData_2(0,37,num_5,num_6),
    ];
    return settingListData;
  }
}
export default new MainViewModel();