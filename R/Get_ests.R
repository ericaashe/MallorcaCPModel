get_ests<-function(dat, runnum=runnum,
                   n_cp = 1)
{
  # load the MCMC output
  if(n_cp == 0)
  {
    load(paste0("output/jags_mod",0,".Rdata"))
    mcmc.array<-mod$BUGSoutput$sims.array
    pars.check<-c("beta")
  }

  # load the MCMC output
  if(n_cp == 1)
  {
    load(paste0("output/jags_mod",1,".Rdata"))
    mcmc.array<-mod$BUGSoutput$sims.array
    pars.check<-c("beta[1]","beta[2]","cp")
  }

  if(n_cp == 2)
  {
    load(paste0("output",runnum,"/jags_mod",2,".Rdata"))
    mcmc.array<-mod$BUGSoutput$sims.array
    pars.check<-c("beta[1]","beta[2]","beta[3]","cp[1]","cp[2]")
  }

  if(n_cp == 3)
  {
    load(paste0("output/jags_mod",3,".Rdata"))
    mcmc.array<-mod$BUGSoutput$sims.array
    pars.check<-c("beta[1]","beta[2]","beta[3]","beta[4]","cp[1]","cp[2]","cp[3]")
  }

  if(n_cp == 4)
  {
    load(paste0("output/jags_mod",4,".Rdata"))
    mcmc.array<-mod$BUGSoutput$sims.array
    pars.check<-c("beta[1]","beta[2]","beta[3]","beta[4]","beta[5]","cp[1]","cp[2]","cp[3]","cp[4]")
  }

   # Get estimates and uncertainty
    pars.summary<-internal_get_ests(mcmc.array,pars.check = pars.check)

    return(pars.summary)
    return(list(pars.summary=pars.summary))
  }





internal_get_ests<-function(mcmc.array,
                   pars.check=c("beta[1]","beta[2]","cp")){
  mean<-sd<-l95<-u95<-l90<-u90<-l67<-u67<-l50<-u50<-median<-rep(NA,length(pars.check))
#  mean<-sd<-l95<-u95<-rep(NA,length(pars.check))

  p<-0
  for (parname in pars.check){
    p <- p+1 # index

    if(grepl("beta",parname))
    mcmc.array.par<-mcmc.array[,,parname]/1000

    if(grepl("cp",parname))
      mcmc.array.par<-mcmc.array[,,parname]*1000

    mean[p] <- mean(mcmc.array.par)
    median[p] <- quantile(mcmc.array.par,probs=0.5)
    sd[p] <- sd(mcmc.array.par)
    l95[p]<-quantile(mcmc.array.par,probs=0.025)
    u95[p]<-quantile(mcmc.array.par,probs=0.975)
    l90[p]<-quantile(mcmc.array.par,probs=0.05)
    u90[p]<-quantile(mcmc.array.par,probs=0.95)
    l67[p]<-quantile(mcmc.array.par,probs=0.1666)
    u67[p]<-quantile(mcmc.array.par,probs=0.8333)
    l50[p]<-quantile(mcmc.array.par,probs=0.25)
    u50[p]<-quantile(mcmc.array.par,probs=0.75)

#     median[p] <- median(mcmc.array.par)
#     mean[p] <- mean(mcmc.array.par)
#     sd[p] <- sd(mcmc.array.par)
#     l33[p]<-quantile(mcmc.array.par,probs=0.333)
#     u67[p]<-quantile(mcmc.array.par,probs=0.667)
#     u95[p]<-quantile(mcmc.array.par,probs=0.95)
#     l5[p]<-quantile(mcmc.array.par,probs=0.05)
#     u975[p]<-quantile(mcmc.array.par,probs=0.975)
#     l025[p]<-quantile(mcmc.array.par,probs=0.025)
  }

  ests<-t(data.frame(mean,sd,l95,u95,l90,u90,l67,u67,l50,u50))
                     #median,
#      mean,sd,l95,u95))
  colnames(ests)<-pars.check
  ests <- t(ests)
  return(ests)

}
