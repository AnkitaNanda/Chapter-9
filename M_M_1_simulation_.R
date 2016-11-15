m_m_1 <- function(){
  
  
  n <- readline("Enter the number of server: ")
  n <- as.integer(n)
  k <- readline("Enter the maximum number of permitted customers in the system: ")
  k <- as.integer(k)
  
  print(paste("this is a M / M/", n, "/", k, "system"))
  
  
  lambda <- readline("Enter the rate of arrival of customers to the system as unit per hour: ")
  lambda <- as.double(lambda)
  mu <- readline("Enter the average service rate as unit per hour (service rate must be greater than arrival rate): ")
  mu <- as.double(mu)
  
  
  roh <- (lambda / mu)
 
  
  
  
  
  
}
