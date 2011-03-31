demos<-function(){
    require(tcltk) || stop("tcltk support is absent")
    tt <- tktoplevel()
    tkwm.title(tt, "'asbio' Graphical Demos")
    topMenu <- tkmenu(tt)
    tkconfigure(tt, menu = topMenu, width=280,height=50)

#---------------Menu bar-------------#

    fileA <- tkmenu(topMenu, tearoff = FALSE)
    fileS <- tkmenu(topMenu, tearoff = FALSE)
    fileB <- tkmenu(topMenu, tearoff = FALSE)

#------Statistical Foundations-------#
            
            dists1 <- tkmenu(topMenu, tearoff = FALSE)
                tkadd(dists1, "command", label = "Normal", command = substitute(shade.norm.tck()))
                tkadd(dists1, "command", label = "Binomial", command = substitute(shade.bin.tck()))
                tkadd(dists1, "command", label = "Chi-square", command = substitute(shade.chi.tck()))
                tkadd(dists1, "command", label = "F", command = substitute(shade.F.tck()))
                tkadd(dists1, "command", label = "Poisson", command = substitute(shade.poi.tck()))
                tkadd(dists1, "command", label = "t", command = substitute(shade.t.tck()))
        
            questions <- tkmenu(topMenu, tearoff = FALSE)
                tkadd(questions, "command", label = "Confidence intervals", command = substitute(selftest.conf.tck1()))
                tkadd(questions, "command", label = "Experimental and sampling design", command = substitute(selftest.se.tck1()))
                tkadd(questions, "command", label = "Probability", command = substitute(selftest.prob.tck1()))
                tkadd(questions, "command", label = "Pdfs", command = substitute(selftest.pdfs.tck1()))
                tkadd(questions, "command", label = "Sampling distributions", command = substitute(selftest.sampd.tck1()))        
                

            tkadd(fileS, "command", label = "Coin flips", 
                command = substitute(anm.coin.tck()))
            tkadd(fileS, "command", label = "Confidence intervals", 
                command = substitute(anm.ci.tck()))
            tkadd(fileS, "command", label = "Die throws", 
                command = substitute(anm.die.tck()))
            tkadd(fileS, "command", label = "Experimental designs", 
                command = substitute(anm.ExpDesign.tck()))
            tkadd(fileS, "command", label = "Exponential power function", 
                command = substitute(see.exppower.tck()))    
            tkadd(fileS, "command", label = "Least squares", command = substitute(anm.ls.tck()))
            tkadd(fileS, "command", label = "Logic", command = substitute(see.logic()))
            tkadd(fileS, "command", label = "Log-likelihood", command = substitute(loglik.tck()))
            tkadd(fileS, "command", label = "M-estimation", command = substitute(see.M()))
            tkadd(fileS, "command", label = "Pdf depiction", 
                command = substitute(see.pdfdriver.tck()))
            tkadd(fileS, "cascade", label = "Pdf probability", menu = dists1)
            tkadd(fileS, "command", label = "Power", 
                command = substitute(see.power.tck()))
            tkadd(fileS, "command", label = "Sampling designs", command = substitute(anm.samp.design.tck()))
            tkadd(fileS, "command", label = "Sampling distributions", 
                command = substitute(samp.dist.method.tck()))
            tkadd(fileS, "cascade", label = "Self-test questions", menu = questions)
             tkadd(fileS, "command", label = "Type I and II error", 
                command = substitute(see.typeI_II()))
            tkadd(fileS, "command", label = "Venn diagrams", 
                command = substitute(Venn.tck()))
            tkadd(topMenu, "cascade", label = "Stats (Foundations)", menu = fileS)
            
#-------Statistical Analyses--------#
            
            tkadd(fileA, "command", label = "Bayesian analysis of discrete data", 
                command = substitute(print(Bayes.disc.tck())))
                        tkadd(fileA, "command", label = "Linear models",    
                command=function()tkmessageBox(message="Under construction"))  
            tkadd(fileA, "command", label = "Non-linear models",    
                command=substitute(see.nlm()))
            tkadd(fileA, "command", label = "Regression (Move points)", 
                command = substitute(see.regression()))
            tkadd(fileA, "command", label = "Regression (Add/delete points)", 
                command = substitute(see.adddel()))    
            tkadd(fileA, "command", label = "Type I, II, III sums of squares",    
                command=substitute(lmu.tck()))  
            tkadd(topMenu, "cascade", label = "Stats (Analyses)", menu = fileA)

#-------------Biological-------------#            

            tkadd(fileB, "command", label = "Geometric growth", 
                command = substitute(anm.geo.growth.tck()))
            tkadd(fileB, "command", label = "Exponential growth", 
                command = substitute(anm.exp.growth.tck()))
            tkadd(fileB, "command", label = "Hardy Weinberg equilibrium", 
                command = substitute(see.HW.tck()))    
            tkadd(fileB, "command", label = "Logistic growth", 
                command = substitute(anm.log.growth.tck()))          
            tkadd(fileB, "command", label = "Lotka-Volterra competition", 
                command = substitute(anm.LVc.tck()))
            tkadd(fileB, "command", label = "Lotka-Volterra exploitation", 
                command = substitute(anm.LVe.tck()))
            tkadd(fileB, "command", label = "Matrix population models", 
                command = substitute(anm.TM.tck()))       
            tkadd(topMenu, "cascade", label = "Biology", menu = fileB)
         
}
 
