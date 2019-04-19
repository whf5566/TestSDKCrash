# TestSDKCrash

最近在开发iOS平台上的SDK，提供给合作方使用。为了监控SDK自身的崩溃率，我们在SDK中加入了抓取crash的功能。但收集上来的日志中有较多合作方App的crash，并且接入SDK的App数量很多，产生的崩溃日志量非常大。靠人力从海量的日志中筛选出我们SDK的crash日志非常困难。  

于是就有了这个问题，如何自动区分SDK内部的crash和App的crash？  

[阅读全文](https://wellphone.me/post/2019/how_to_distinguish_crash_in_sdk/)
