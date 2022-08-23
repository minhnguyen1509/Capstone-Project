library(ggplot2)
library(reshape2)

########## plot 1
data <- read.csv("airbnbtask1.csv",header=T,row.names=NULL,sep=",")
data1 <- data[6:185,]
data1.1 <- data1[which(data1$area_name=='Oswego County'),]
month <- c("Jan","Feb","Mar","Apr","May","June","July","Aug","Sep","Oct","Nov","Dec")

ggplot(data1.1, aes(Month, available_nights, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oswego County's Available Nights")

ggplot(data1.1, aes(Month, nights_booked, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oswego County's Nights Booked")

ggplot(data1.1, aes(Month, avg_nights_booked_per_available_listing, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oswego County's Avg Nights Per Available Listing")

ggplot(data1.1, aes(Month, adj_occupancy_rate, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oswego County's Adj Occupancy Rate")

data1.2 <- data1[which(data1$area_name=='Lake Shore (Oswego County)'),]
ggplot(data1.2, aes(Month, available_nights, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Lake Shore's Available Nights")

ggplot(data1.2, aes(Month, nights_booked, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Lake Shore's Nights Booked")

ggplot(data1.2, aes(Month, avg_nights_booked_per_available_listing, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Lake Shore's Avg Nights Per Available Listing")

ggplot(data1.2, aes(Month, adj_occupancy_rate, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Lake Shore's Adj Occupancy Rate")

data1.3 <- data1[which(data1$area_name=='Oneida Lake (Oswego County)'),]
ggplot(data1.3, aes(Month, available_nights, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oneida Lake's Available Nights")

ggplot(data1.3, aes(Month, nights_booked, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oneida Lake's Nights Booked")

ggplot(data1.3, aes(Month, avg_nights_booked_per_available_listing, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oneida Lake's Avg Nights Per Available Listing")

ggplot(data1.3, aes(Month, adj_occupancy_rate, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Oneida Lake's Adj Occupancy Rate")

data1.4 <- data1[which(data1$area_name=='Salmon River (Oswego County)'),]
ggplot(data1.4, aes(Month, available_nights, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Salmon River's Available Nights")

ggplot(data1.4, aes(Month, nights_booked, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Salmon River's Nights Booked")

ggplot(data1.4, aes(Month, avg_nights_booked_per_available_listing, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Salmon River's Avg Nights Per Available Listing")

ggplot(data1.4, aes(Month, adj_occupancy_rate, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Salmon River's Adj Occupancy Rate")

data1.5 <- data1[which(data1$area_name=='Tug Hill (Oswego County)'),]
ggplot(data1.5, aes(Month, available_nights, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Tug Hill's Available Nights")

ggplot(data1.5, aes(Month, nights_booked, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Tug Hill's Nights Booked")

ggplot(data1.5, aes(Month, avg_nights_booked_per_available_listing, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Tug Hill's Avg Nights Per Available Listing")

ggplot(data1.5, aes(Month, adj_occupancy_rate, fill=as.character(year)))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') + 
  ggtitle("Tug Hill's Adj Occupancy Rate")

######## plot 2
ggplot(data1,aes(x=grain,y=available_nights,colour=area_name,group=area_name)) + 
  geom_line() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) + 
  ggtitle("Available Nights")

ggplot(data1,aes(x=grain,y=nights_booked,colour=area_name,group=area_name)) + 
  geom_line() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) + 
  ggtitle("Nights Booked")

ggplot(data1,aes(x=grain,y=avg_nights_booked_per_available_listing,colour=area_name,group=area_name)) + 
  geom_line() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) + 
  ggtitle("Avg Nights Per Available Listing")

ggplot(data1,aes(x=grain,y=adj_occupancy_rate,colour=area_name,group=area_name)) + 
  geom_line() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) + 
  ggtitle("Adj Occupancy Rate")

#### plot 3
data2 <- read.csv("airbnbtask2.csv",header=T,row.names=NULL,sep=",")

data2.1 <- data2[ which(data2$area_name=='Oswego County'), ]
ggplot(mapping = aes(x = Month, y = nights, fill = factor(year))) +
  geom_col(data = data2.1[data2.1$type == "available", ], position = "dodge") +
  geom_col(data = data2.1[data2.1$type == "booked", ], aes(group = year),
           fill = "olivedrab2", width = 0.5, position = position_dodge(width = 0.9))+scale_x_discrete(limits=month) + 
  ggtitle("Oswego County's Available Nights vs Nights Booked")

data2.2 <- data2[ which(data2$area_name=='Lake Shore (Oswego County)'), ]
ggplot(mapping = aes(x = Month, y = nights, fill = factor(year))) +
  geom_col(data = data2.2[data2.2$type == "available", ], position = "dodge") +
  geom_col(data = data2.2[data2.2$type == "booked", ], aes(group = year),
           fill = "olivedrab2", width = 0.5, position = position_dodge(width = 0.9))+scale_x_discrete(limits=month) + 
  ggtitle("Lake Shore's Available Nights vs Nights Booked")

data2.3 <- data2[ which(data2$area_name=='Oneida Lake (Oswego County)'), ]
ggplot(mapping = aes(x = Month, y = nights, fill = factor(year))) +
  geom_col(data = data2.3[data2.3$type == "available", ], position = "dodge") +
  geom_col(data = data2.3[data2.3$type == "booked", ], aes(group = year),
           fill = "olivedrab2", width = 0.5, position = position_dodge(width = 0.9))+scale_x_discrete(limits=month) + 
  ggtitle("Oneida Lake's Available Nights vs Nights Booked")

data2.4 <- data2[ which(data2$area_name=='Salmon River (Oswego County)'), ]
ggplot(mapping = aes(x = Month, y = nights, fill = factor(year))) +
  geom_col(data = data2.4[data2.4$type == "available", ], position = "dodge") +
  geom_col(data = data2.4[data2.4$type == "booked", ], aes(group = year),
           fill = "olivedrab2", width = 0.5, position = position_dodge(width = 0.9))+scale_x_discrete(limits=month) + 
  ggtitle("Salmon River's Available Nights vs Nights Booked")

data2.5 <- data2[ which(data2$area_name=='Tug Hill (Oswego County)'), ]
ggplot(mapping = aes(x = Month, y = nights, fill = factor(year))) +
  geom_col(data = data2.5[data2.5$type == "available", ], position = "dodge") +
  geom_col(data = data2.5[data2.5$type == "booked", ], aes(group = year),
           fill = "olivedrab2", width = 0.5, position = position_dodge(width = 0.9))+scale_x_discrete(limits=month) + 
  ggtitle("Tug Hill's Available Nights vs Nights Booked")


######plot 5
data3 <- read.csv("airbnbtask3.csv",header=T,row.names=NULL,sep=",")
region <- c("Oswego County","Lake Shore","Oneida Lake","Salmon River","Tug Hill")

ggplot(data3, aes(Region, available_nights, fill=as.character(Year)))+scale_x_discrete(limits=region) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Available Nights")

ggplot(data3, aes(Region, nights_booked, fill=as.character(Year)))+scale_x_discrete(limits=region) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Nights Booked")

ggplot(data3, aes(Region, avg_nights_booked_per_available_listing, fill=as.character(Year)))+scale_x_discrete(limits=region) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Avg Nights Per Available Listing")

ggplot(data3, aes(Region, adj_occupancy_rate, fill=as.character(Year)))+scale_x_discrete(limits=region) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Adj Occupancy Rate")

###plot 6
data4 <- read.csv("airbnbtask4.csv",header=T,row.names=NULL,sep=",")
data4.1 <- data4[ which(data4$area_name=='Oswego County'), ]

ggplot(data4.1,aes(x=grain,y=Avg_nights_per_book,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Oswego County's Avg Nights per Book")

ggplot(data4.1,aes(x=grain,y=Avg_room_nights_per_book,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Oswego County's Avg Rooms Nights per Book")

##plot 7
data4.2 <- data4[ which(data4$area_name!='Oswego County'), ]

ggplot(data4.2,aes(x=grain,y=Avg_nights_per_book,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Other Regions' Avg Nights per Book")

ggplot(data4.2,aes(x=grain,y=Avg_room_nights_per_book,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Other Regions' Avg Rooms Nights per Book")


## plot 8 
## avg_room_night per book is similar
#month <- c("Jan","Feb","Mar","Apr","May","June","July","Aug","Sep","Oct","Nov","Dec")
#region <- c("Oswego County","Lake Shore (Oswego County)", "Oneida Lake (Oswego County)", "Salmon River (Oswego County)", "Tug Hill (Oswego County)")


newdata4.1<-aggregate(data4$Avg_nights_per_book, FUN=mean, 
          by=list(area_name=data4$area_name, Month=data4$Month))

colnames(newdata4.1) = c("area_name", "Month", "Avg_nights_per_book")

ggplot(newdata4.1[newdata4.1$area_name=="Oswego County",], aes(Month, Avg_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oswego County's Avg Nights per Book")

ggplot(newdata4.1[newdata4.1$area_name=="Lake Shore (Oswego County)",], aes(Month, Avg_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Lake Shore's Avg Nights per Book")

ggplot(newdata4.1[newdata4.1$area_name=="Oneida Lake (Oswego County)",], aes(Month, Avg_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oneida Lake's Avg Nights per Book")

ggplot(newdata4.1[newdata4.1$area_name=="Salmon River (Oswego County)",], aes(Month, Avg_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Salmon River's Avg Nights per Book")

ggplot(newdata4.1[newdata4.1$area_name=="Tug Hill (Oswego County)",], aes(Month, Avg_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Tug Hill's Avg Nights per Book")

newdata4.2<-aggregate(data4$Avg_room_nights_per_book, FUN=mean, 
                      by=list(area_name=data4$area_name, Month=data4$Month))

colnames(newdata4.2) = c("area_name", "Month", "Avg_room_nights_per_book")

ggplot(newdata4.2[newdata4.2$area_name=="Oswego County",], aes(Month, Avg_room_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oswego County's Avg Room Nights per Book")

ggplot(newdata4.2[newdata4.2$area_name=="Lake Shore (Oswego County)",], aes(Month, Avg_room_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Lake Shore's Avg Room Nights per Book")

ggplot(newdata4.2[newdata4.2$area_name=="Oneida Lake (Oswego County)",], aes(Month, Avg_room_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oneida Lake's Avg Room Nights per Book")

ggplot(newdata4.2[newdata4.2$area_name=="Salmon River (Oswego County)",], aes(Month, Avg_room_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Salmon River's Avg Room Nights per Book")

ggplot(newdata4.2[newdata4.2$area_name=="Tug Hill (Oswego County)",], aes(Month, Avg_room_nights_per_book))+scale_x_discrete(limits=month) + 
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Tug Hill's Avg Room Nights per Book")

## plot9
data5 <- read.csv("airbnbtask5.csv",header=T,row.names=NULL,sep=",")

data5.1 <- data5[which(data5$area_name=='Oswego County'), ]

ggplot(data5.1,aes(x=grain,y=gross_revenue,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Oswego County's Gross Revenue")

ggplot(data5.1,aes(x=grain,y=adj_revpal,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Oswego County's Adj Revenue per Available Listing")

ggplot(data5.1,aes(x=grain,y=adj_revpar,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Oswego County's Adj Revenue per Available Room")

data5.2 <- data5[ which(data5$area_name!='Oswego County'), ]

ggplot(data5.2,aes(x=grain,y=gross_revenue,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Other Regions' Gross Revenue")

ggplot(data5.2,aes(x=grain,y=adj_revpal,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Other Regions' Adj Revenue per Available Listing")

ggplot(data5.2,aes(x=grain,y=adj_revpar,colour=area_name,group=area_name)) + 
  geom_line()+theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  ggtitle("Other Regions' Adj Revenue per Available Room")


##plot 10
ggplot(data5.1, aes(Month, gross_revenue, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oswego County's Gross Revenue")

ggplot(data5.1, aes(Month, adj_revpal, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oswego County's Adj Revenue per Available Listing")
  
ggplot(data5.1, aes(Month, adj_revpar, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oswego County's Adj Revenue per Available Room")

data5.3 <- data5[ which(data5$area_name =='Lake Shore (Oswego County)'), ]

ggplot(data5.3, aes(Month, gross_revenue, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Lake Shore's Gross Revenue")

ggplot(data5.3, aes(Month, adj_revpal, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Lake Shore's Adj Revenue per Available Listing")

ggplot(data5.3, aes(Month, adj_revpar, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Lake Shore's Adj Revenue per Available Room")

data5.4 <- data5[ which(data5$area_name =='Oneida Lake (Oswego County)'), ]

ggplot(data5.4, aes(Month, gross_revenue, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oneida Lake's Gross Revenue")

ggplot(data5.4, aes(Month, adj_revpal, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oneida Lake's Adj Revenue per Available Listing")

ggplot(data5.4, aes(Month, adj_revpar, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Oneida Lake's Adj Revenue per Available Room")

data5.5 <- data5[ which(data5$area_name =='Salmon River (Oswego County)'), ]

ggplot(data5.5, aes(Month, gross_revenue, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Salmon River's Gross Revenue")

ggplot(data5.5, aes(Month, adj_revpal, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Salmon River's Adj Revenue per Available Listing")

ggplot(data5.5, aes(Month, adj_revpar, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Salmon River's Adj Revenue per Available Room")

data5.6 <- data5[ which(data5$area_name =='Tug Hill (Oswego County)'), ]

ggplot(data5.6, aes(Month, gross_revenue, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Tug Hill's Gross Revenue")

ggplot(data5.6, aes(Month, adj_revpal, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Tug Hill's Adj Revenue per Available Listing")

ggplot(data5.6, aes(Month, adj_revpar, fill=as.character(Year)))+scale_x_discrete(limits=month) +
  geom_bar(stat = "identity", position = 'dodge') +
  ggtitle("Tug Hill's Adj Revenue per Available Room")

