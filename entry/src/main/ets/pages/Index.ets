import { ContactsPage } from './ContactsPage'
import { RecentChatPage } from './RecentChatPage'
import { DiscoveryPage } from './DiscoveryPage'
import { MyPage } from './MyPage'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0

  build() {
    Column() {
      Tabs({
        index: this.currentIndex,
        barPosition: BarPosition.End
      }){
        //消息
        TabContent() {
          RecentChatPage()
        }
        .tabBar(this.tabBuilder(0, '消息', $r('app.media.information_selected'), $r('app.media.information_normal')))

        //通讯录
        TabContent() {
          ContactsPage()
        }
        .tabBar(this.tabBuilder(1, '通讯录', $r('app.media.contacts_selected'), $r('app.media.contacts_normal')))

        //我的北理
        TabContent() {
          DiscoveryPage()
        }
        .tabBar(this.tabBuilder(2, '工作台', $r('app.media.my_bit_selected'), $r('app.media.my_bit_normal')))

        //我
        TabContent() {
          MyPage()
        }
        .tabBar(this.tabBuilder(3, '我的', $r('app.media.me_selected'), $r('app.media.me_normal')))

      }
      .barMode(BarMode.Fixed)
      .onChange((index) => {
        this.currentIndex = index
      })
    }
  }

  @Builder tabBuilder(index: number, title: string, selectedImage: Resource, normalImage: Resource) {
    Column() {
      Image(this.currentIndex == index ? selectedImage : normalImage)
        .size({width: 25, height:25})
      Text(title)
        .fontColor(this.currentIndex == index ? '#1698CE' : '#6B6B6B')
    }
    .width(50)
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}