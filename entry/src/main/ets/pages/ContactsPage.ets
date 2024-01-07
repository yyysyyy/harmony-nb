import contact from '@ohos.contact'
import { DingDingTitle } from '../components/CommonStyle'
import { ContactItemStyle } from '../components/DingDingContactItemComponent'
import { getContactInfo, DingDingColor } from '../model/DingDingData'
@Entry
@Component
export struct ContactsPage {
  private  contactsInfo = getContactInfo()

  build() {
    Column() {
      //
      DingDingTitle({text: '通讯录'})

      //
      Scroll() {
        Column() {
          // 固定列表
          ContactItemStyle({ imageSrc: "my_friend.png", text: "我的好友" })
          ContactItemStyle({ imageSrc: "friend_suggestion.png", text: "好友推荐" })

          Text("      企业内")
            .fontSize('12fp')
            .backgroundColor(DingDingColor)
            .height('80px')
            .width('100%')

          List() {
            ListItem() {ContactItemStyle({ imageSrc: "xiaohui.png", text: "北京理工大学"})}
            ListItem() {ContactItemStyle({ imageSrc: "L.png", text: "组织架构"})}
            ListItem() {ContactItemStyle({ imageSrc: "L.png", text: "计算机学院-2019-07111903"})}
            ListItem() {ContactItemStyle({ imageSrc: "L.png", text: "计算机学院-2023-软件工程"})}
          }

          Text("      企业间")
            .fontSize('12fp')
            .backgroundColor(DingDingColor)
            .height('80px')
            .width('100%')


          List() {
            ListItem() {ContactItemStyle({ imageSrc: "shangxia.png", text: "上下游"})}
            ListItem() {ContactItemStyle({ imageSrc: "qiyelx.png", text: "企业联系"})}
            ListItem() {ContactItemStyle({ imageSrc: "qiyegx.png", text: "企业关系"})}
          }

          Text("      企业服务")
            .fontSize('12fp')
            .backgroundColor(DingDingColor)
            .height('80px')
            .width('100%')


          List() {
            ListItem() {ContactItemStyle({ imageSrc: "qidian.png", text: "企典"})}
            ListItem() {ContactItemStyle({ imageSrc: "fuwuchuang.png", text: "服务窗"})}
            ListItem() {ContactItemStyle({ imageSrc: "gengduo.png", text: "更多"})}
          }
        }
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}