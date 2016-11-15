m_m_1 <- function(){
  
  
  lambda <- 5
  mu <- 6
  d <- 10
  
  
  t <- 0 
  queue <- 0 
  s <- 0 
  T1 <- rexp(1,rate=lambda)
  currentqueue <- 1
  eventsTime <- T1
  t <- T1
  nEvents <- 1
  
  
  
  while (t<d) {
    nEvents <- nEvents+1
    
    if(currentqueue>0) { 
      
      T1 <- rexp(1,rate=lambda+mu) 
      
      
      p <- runif(1,0,1)
      queue[nEvents] <- currentqueue 
      currentqueue <- ifelse(p<lambda/(lambda+mu), currentqueue+1, currentqueue-1)
    } 
    
    
    else { 
      
      T1 <- rexp(1,rate=lambda)
      queue[nEvents] <- currentqueue
      currentqueue <- 1
    }
    
    t <- t+T1 
    eventsTime[nEvents] <- T1 
    s <- s+T1*queue[nEvents] 
  }
  
  
  plot(cumsum(eventsTime),queue,type="s", xlab="Time",ylab="Queue length",
       main=paste("M/M/1 Simulation, mean queue length=",s/t))
  
  
  
}