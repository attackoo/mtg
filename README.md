# MTProto Heroku

## 概述 

## 镜像

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/attackoo/mtg)


### 端口

`端口` 为 `443` 。

### secret

`secret` 默认为 `ee788eabf5aae8fa02c7253c0701dffa9262696c6962696c692e636f6d` 可自行设置。

## 流量中转

可以使用cloudflare的workers来`中转流量`，配置为：  
```
addEventListener(  
    "fetch",event => {  
        let url=new URL(event.request.url);  
        url.hostname="xx.xxxx.xx";//你的heroku域名    
        let request=new Request(url,event.request);  
        event. respondWith(  
            fetch(request)  
        )  
    }  
)  



addEventListener(
  'fetch',event => {
     let url=new URL(event.request.url);
     url.hostname='111.111.111.111.xip.io';
     if(url.protocol == 'https:') {
        url.protocol='http:'
     }
     let request=new Request(url,event.request);
     if(request.headers.has("Origin")) {
       request.headers.delete("Origin");
     }
     event.respondWith(
          fetch(request)
    )
  }
)

```
