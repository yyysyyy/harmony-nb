import { DingDingColor } from '../model/DingDingData'
@Component
export struct DingDingTitle {
  private text: string

  build() {
    Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}) {
      Text(this.text)
        .fontSize('18fp')
        .padding('20px')
    }
    .height('120px')
    .backgroundColor(DingDingColor)
  }
}

@Component
export struct MyDivider {
  private style: string = ""

  build() {
    Row() {
      Divider()
        .vertical(false)
        .color(DingDingColor)
        .strokeWidth(this.style == "1" ? '3px' : '23px')
    }
    .height(this.style == "1" ? '3px' : '23px')
    .width('100%')
  }
}