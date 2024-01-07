
import { UserInfo } from './DingDingUserInfo'

const ContactInfo: any[] = [
  {
    "portrait": "zuofengyuan.png",
    "nickName": "左丰源",
    "chatInfo": "作业做的怎么样了？",
    "time": "19:24"
  },
  {
    "portrait": "machaofan.png",
    "nickName": "马超凡",
    "chatInfo": "吃完饭了吗？",
    "time": "18:34"
  },
  {
    "portrait": "yiliao.png",
    "nickName": "医疗服务",
    "chatInfo": "2024年寒假期间校医院门诊工作安排",
    "time": "18:30"
  },
  {
    "portrait": "jiaoshi.png",
    "nickName": "教师一站式服务",
    "chatInfo": "关于非密科研合同签章业务办理流程变动",
    "time": "17:29"
  },
  {
    "portrait": "zhongshen.png",
    "nickName": "终身学习",
    "chatInfo": "@all，北京理工大学飞机维修实习培训项目火热报名中",
    "time": "17:28"
  },
  {
    "portrait": "lianzheng.png",
    "nickName": "廉政课堂",
    "chatInfo": "中共中央引发《中国共产党纪律处分条例》",
    "time": "16:27"
  },
  {
    "portrait": "guoji.png",
    "nickName": "国际合作",
    "chatInfo": "关于教师服务大厅外事服务区本周三暂停对外办公的通知",
    "time": "15:26"
  },
  {
    "portrait": "tushu.png",
    "nickName": "图书馆",
    "chatInfo": "1小时信息素养教育专题讲座(2023年秋第十期)",
    "time": "14:25"
  },
  {
    "portrait": "benke.png",
    "nickName": "本科教学",
    "chatInfo": "北京理工大学教务部2024年新年贺词",
    "time": "11:23"
  },
  {
    "portrait": "houqin.png",
    "nickName": "后勤服务",
    "chatInfo": "关于考试周班车调整的通知",
    "time": "10:22"
  },
  {
    "portrait": "wangxin.png",
    "nickName": "网信服务",
    "chatInfo": "关于校园支付系统升级的通知",
    "time": "10:21"
  },
  {
    "portrait": "tiyu.png",
    "nickName": "北理工体育",
    "chatInfo": "2023年首都高校武术比赛观赛预告",
    "time": "10:20"
  },
  {
    "portrait": "dangan.png",
    "nickName": "档案服务",
    "chatInfo": "良乡校区档案馆今日临时闭馆通知",
    "time": "10:19"
  }
]

export function getContactInfo(): Array<UserInfo> {
  let contactList: Array<UserInfo> = []
  ContactInfo.forEach(item => {
    contactList.push(new UserInfo(item.nickName, item.portrait, item.chatInfo, item.time))
  })
  return contactList
}

export const DingDingColor:string = "#ededed"