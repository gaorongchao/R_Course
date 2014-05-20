library(ggplot2)
data<-read.table("a.csv",sep=",",header=TRUE)
head(data)
class(data$time)
data$time=as.Date(data$time)
class(data$time)
line<-data$line

start=as.Date("2011-04-13")
data$time1=data$time-start
data$time2=as.numeric(data$time1)
data$time3=data$time-start
data$time4=as.numeric(data$time3)
head(data)

myfun1=function(xvar){355.95-355.88/(1+(xvar/98.133)^3)}
myfun2=function(xvar){390.4-390.38/(1+(xvar/99.544)^3)}
myfun3=function(xvar){416.75-416.661/(1+(xvar/103.235)^3)}
myfun4=function(xvar){509-508.78/(1+(xvar/104.264)^3)}
myfun5=function(xvar){380.55-380.09/(1+(xvar/92.552)^3)}
g<-c(myfun1,myfun2,myfun3,myfun4,myfun5)

ggplot(data,aes(time4,weight,shape=type))+geom_point(aes(size=0.5))+
stat_function(fun=myfun1,aes(linetype="柳1"))+
stat_function(fun=myfun2,aes(linetype="柳2"))+
stat_function(fun=myfun3,aes(linetype="柳3"))+
stat_function(fun=myfun4,aes(linetype="柳4"))+
stat_function(fun=myfun5,aes(linetype="柳5"))+
guides(shape=guide_legend(title="密度"),linetype=guide_legend(title="密度"))+
#geom_point(size=2.5)+
geom_point(size=3.5)+
labs(x="观测时间(days)",y="地上生物量(g)")+
scale_x_continuous(breaks=seq(0,220,by=20))+
theme(axis.text.x=element_text(),
legend.key=element_rect(fill="white",color="black"))




