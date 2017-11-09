#program to show the shopping mall menu
print('welcome to shopping mall ')
print('please select your category')
print('1.MOBILE')
print('2.APPAREL')
print('3.BOOKS')
choice=scan()
ola=data.frame()
mobile<-function(){
  model<-c("iphone_4s","iphone_5s","iphone_6s","iphone_7s","iphone_8s")
  price<-c(15000,20000,25000,35000,49000)
  serial<-c(1,2,3,4,5)
  df=data.frame(serial,model,price)
  print("the phones available are: ")
  print(df)
  print('do you want to buy anything, if yes then enter-Y')
  print('enter your choice')
  op=scan(what='character')
  flag=0
  while(op=='Y' || op=='y'){
    print('enter the serial no')
    serial_input=scan(what='character')
    if(flag==0){
      
      cart=data.frame(df[serial_input,])
      flag=1
    }
    else{
      cart=rbind(cart,df[serial_input,])
      #print(cart)
    }
    print('do you want to shop more: ')
    op=scan(what='character')
  }
  print('your cart contains : ')
  print(cart)
  total=sum(cart[,3])
  print('the contract term available for you')
  c_time<-c(3,6,9,12)
  discount<-c(10,15,20,25)
  t.d=data.frame(c_time,discount)
  print(t.d)
  factor_d=c(0.1,0.15,0.2,0.25)
  t.d1<-data.frame(c_time,discount,factor_d)
  print('select any contract by entering the serial no')
  con=scan()
  d_price=total-(total*t.d1[con,3])
  print(paste('discounted price is: ',d_price))
  days=30*t.d1[con,1]
  end_date=as.Date(Sys.Date()+days)
  print(paste('your contract ends at',end_date))
  print('thankyou for shopping :D!!!!!!!!!!')
  #write.table(Sys.time(),"shopping.csv",append=T,row.names = F)
  #write.table(cart,"shopping.csv",append=T,col.names = F,row.names = F)
  #ola<<-cart
  #file.show('shopping.csv')
  
}

switch(choice,mobile(),apparel(),books())
