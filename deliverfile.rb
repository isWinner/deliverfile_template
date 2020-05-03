# The Deliverfile allows you to store various App Store Connect metadata
# For more information, check out the docs
# https://docs.fastlane.tools/actions/deliver/

# 本文件的设置,可以参考官方文档

# 官方文档:https://github.com/fastlane/fastlane/blob/master/deliver/Deliverfile.md

# 官方文档:https://github.com/fastlane/fastlane/blob/master/spaceship/docs/iTunesConnect.md

#######################----by https://github.com/mythkiven-#######################

#######################----https://github.com/mythkiven/AD_Fastlane/blob/master/AD_Demo/fastlane/Deliverfile-#######################

############################# 基本信息 ####################################
# 1 app_identifier

app_identifier "com.xxxx.xxxx"

# 2 用户名,Apple ID电子邮件地址

username "apple id"

# 3 copyright 

copyright "对应「App 综合信息」-「版权」"

# 4 支持语言

supportedLanguages = {

  "cmn-Hans" => "zh-Hans"

}

# 5 app 名称

name({
  'zh-Hans' => "app名称" 
})

# AppStore 信息设置

# 也可以使用 txt 文本的形式

###################################  类别配置 ###################################

# 类别列表设置参见 https://github.com/fastlane/fastlane/blob/master/deliver/Reference.md

# 设置 App 的类别.这里可以设置一个主要类别,一个次要类别.

# 主要类别 

#primary_category "Games"

# 主要类别第一个子类别,游戏会有

#primary_first_sub_category "Card"

# 主要类别第二个子类别,游戏会有

#primary_second_sub_category "Casino"

# 要设置的次要类别 无

# secondary_category  

# 设置的次要第一个子类别 无

# secondary_first_sub_category  

# 设置的次要第二个子类别 无

# secondary_second_sub_category


################################## 关键字\描述等信息 ###################################

# 1 设置 app 检索关键字

keywords({
  'zh-Hans' => "检索关键词,关键词1"
})

# 2 网址设置

support_url({

  'zh-Hans' => "技术支持网址"

})

marketing_url({

  'zh-Hans' => "营销网址"

})

privacy_url({

  'zh-Hans' => "隐私申明"

})

# 3 版本描述

release_notes({

  'zh-Hans' => "「版本信息」-「此版本的新增内容」"

})


# 4 app 描述

description({

  'zh-Hans' => "「描述」"

})


################################## 分级 ########################################

# app_rating_config_path "./fastlane/metadata/itunes_rating_config.json"
################################# 提交信息等 #########################################

# 1 提交审核信息:加密, idfa 等

submission_information({    
    #出口合规信息，自上次提交后您是否为此 App 添加或更改了加密功能
    export_compliance_encryption_updated: false,
    #是否使用加密功能 (首次提交需要填写此选项)
    export_compliance_uses_encryption: false,
    #是否包含，显示，访问第三方内容(这项我没在我提交过程中找到)，没有特殊情况也都选false就可以。
    content_rights_contains_third_party_content: false,
    #对应「广告标识符」如果你在App中使用了IDFA。你必须在这给个理由，而不能直接选false。
    add_id_info_uses_idfa: true,
    #对应iOS 中的“限制广告跟踪”设置，本人XXX在此确认.....
    add_id_info_limits_tracking: true,
    #在 App 内投放广告
    add_id_info_serves_ads: false,
    #将此 App 中发生的操作与先前投放的广告相关联
    add_id_info_tracks_action: false,
    #将此 App 的安装与先前投放的广告相关联；
    add_id_info_tracks_install: true,
    #是否拥有版权
    content_rights_has_rights: true,
    export_compliance_platform: 'ios',
    export_compliance_compliance_required: false,
    export_compliance_app_type: nil,
    export_compliance_is_exempt: false,
    export_compliance_contains_third_party_cryptography: false,
    export_compliance_contains_proprietary_cryptography: false,
    export_compliance_available_on_french_store: false

})

# 2 应用审核小组的联系信息 app 审核信息

app_review_information({

  first_name: "App 审核信息」-「联系信息」-「姓氏」",

  last_name: "App 审核信息」-「联系信息」-「名字」",

  phone_number: "App 审核信息」-「联系信息」-「手机号码」:必须以+开头，且不能小于10个字符",

  email_address: "App 审核信息」-「联系信息」-「邮箱」",

  demo_user: "「App 审核信息」-「登录信息」-「用户名」",

  demo_password: "「App 审核信息」-「登录信息」-「密码」",

  notes: "「App 审核信息」-「备注」"

})

####################################### 其他信息 ###################################
# 1 自动发布 app: false,则需要手动发布
automatic_release true
# 2 价格
price_tier 0
# 3 图标
app_icon './fastlane/metadata/app_icon.jpg'
# 4 上传完成后提交新版本进行审查
submit_for_review true
# 5 跳过HTML报告文件验证
force true
# 跳过上传截图
skip_screenshots true
#跳过上传元数据
skip_metadata true
ipa "./productName.ipa"#ipa路径，一般都是在项目根目录下格式为：项目名.ipa