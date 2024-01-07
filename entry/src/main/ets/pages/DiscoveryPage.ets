import contact from '@ohos.contact'
import { DingDingTitle } from '../components/CommonStyle'
import { ContactItemStyle } from '../components/DingDingContactItemComponent'
import { getContactInfo, DingDingColor } from '../model/DingDingData'
@Entry
@Component
export struct DiscoveryPage {
  private swiperController: SwiperController = new SwiperController()

  build() {
    Column() {
      //
      DingDingTitle({text: 'BIT功能'})

      //
      Scroll() {
        Column() {
          Swiper(this.swiperController) {
            Image($rawfile('swipe1.jpg'))
              .width(349)
              .height(145)
            Image($rawfile('swipe2.png'))
              .width(349)
              .height(145)
            Image($rawfile('swipe3.png'))
              .width(349)
              .height(145)
            Image($rawfile('swipe4.png'))
              .width(349)
              .height(145)
          }
          .width(349)
          .height(145)
          .loop(true)
          .autoPlay(true)

          Text("      延河课堂")
            .fontSize('12fp')
            .backgroundColor(DingDingColor)
            .height('80px')
            .width('100%')

          List() {
            ListItem() {ContactItemStyle({ imageSrc: "lexue.png", text: "乐学"})}
            ListItem() {ContactItemStyle({ imageSrc: "zhibo.png", text: "直播课堂"})}
            ListItem() {ContactItemStyle({ imageSrc: "lubo.png", text: "录播课堂"})}
            ListItem() {ContactItemStyle({ imageSrc: "jingpin.png", text: "精品课程"})}
            ListItem() {ContactItemStyle({ imageSrc: "baijia.png", text: "百家大讲堂"})}
          }

          Text("      教务管理")
            .fontSize('12fp')
            .backgroundColor(DingDingColor)
            .height('80px')
            .width('100%')


          List() {
            ListItem() {ContactItemStyle({ imageSrc: "kebiao.png", text: "我的课表"})}
            ListItem() {ContactItemStyle({ imageSrc: "kongxian.png", text: "空闲教室查询"})}
            ListItem() {ContactItemStyle({ imageSrc: "kaoshi.png", text: "我的考试安排"})}
          }

          Text("      校务管理")
            .fontSize('12fp')
            .backgroundColor(DingDingColor)
            .height('80px')
            .width('100%')

          List() {
            ListItem() {ContactItemStyle({ imageSrc: "xietong.png", text: "协同办公"})}
            ListItem() {ContactItemStyle({ imageSrc: "kaoqin.png", text: "考勤打卡"})}
          }

          Text("      学生事务")
            .fontSize('12fp')
            .backgroundColor(DingDingColor)
            .height('80px')
            .width('100%')

          List() {
            ListItem() {ContactItemStyle({ imageSrc: "fanxiao.png", text: "学生返校登记"})}
            ListItem() {ContactItemStyle({ imageSrc: "xinxi.png", text: "学生信息"})}
            ListItem() {ContactItemStyle({ imageSrc: "qingjia.png", text: "请假销假"})}
            ListItem() {ContactItemStyle({ imageSrc: "zonghe.png", text: "综合素质评价"})}
            ListItem() {ContactItemStyle({ imageSrc: "changdi.png", text: "场地预约"})}
            ListItem() {ContactItemStyle({ imageSrc: "biye.png", text: "毕业离校"})}
          }
        }
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}