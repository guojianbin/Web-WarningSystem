## Web-WarningSystem
A system for monitoring and early warning

### 项目简介
#### 项目功能
  **帮助开发人员或者运维人员快速发现发生异常的系统。**
   
  系统在线上运行的过程中，会因为某些原因发生一些异常，有些异常是可以被捕获的，有些异常因为开发人员之前并没有预料到漏掉了，有些异常是因为一些外在的一些因素发生异常(比如网站松动，磁盘异常)，后两种异常都会导致系统部分或者整体不能访问。这就需要一个系统能对线上的站点运行的状况进行检测，本系统就是捕获那些没有捕获的异常，并对站点的运行进行监控。如果发现异常，则通过邮件或者短信报警。
#### 项目由来
在工作中，做过两个项目，一个是服务治理系统，一个是日志系统
> ##### 服务治理系统
服务治理系统是公司功能系统服务化后的一个产物(*注：这里的服务是以SOA方式为主的解决方案*)，当公司内的服务越来越多的时候，服务之间的依赖和管理就变的复杂，面对这种情况，国内一些互联网公司给出了自己的解决方案：比如taobao的dubbo,其他的公司也都有对应的解决方法。系统的核心就是服务提供者在启动的时候将自身信息发送到订阅服务器，服务的使用者在启动的时候，请求订阅服务器，拉取自己需要的服务列表到本地，实现访问。

> ##### 日志服务系统
日志服务系统就是一个集中的日志处理系统，对于日志，我们普遍的实现方式就是将日志记录到本地，而日志服务系统则将系统日志发送到统一的服务端，由服务端进行处理和监控，并对异常日志进行报警。

Web-WarningSystem就是受到这两个系统的启发，各取一部分功能

1. 服务治理系统中，服务提供者在启动的时候将自身的系统发送到订阅服务器，表示这个服务已经启动，在运行过程中，会因为某些问题件造成这个服务宕机，所以需要在运行的过程中对这个服务进行定时的检测，检测的方式多种多样，可以让这个服务定期的是将自己的信息发送到订阅服务器，或者由订阅服务器主动的去访问这个服务的某个页面。如果返回ok表示服务正常运行，否则服务可能出现了异常。如果服务出现了异常，需要将服务从订阅服务器中剔除，并通知使用者。所以Web-WarningSystem系统就使用了这个功能，它将主动的请求服务并检查服务的运行状况。如果发生异常，则会报警。
2. 日志服务系统是将所有的日志发送到服务端，但其实大家比较关注的都是异常日志，所以这次只实现异常日志的上传。

**所以综上所述，Web-WarningSystem系统就是发现系统在运行过程中发生异常，并把这个异常通过邮件或短信发送给相关的责任人。发现异常有两种方式，一种是主动的访问站点页面，判断响应的内容是否为ok，另外一种是捕获全局异常，同时为了能对已经捕获的异常进行报警，会提供一个API，开发人员可以在catch中调用这个api将异常上传**
