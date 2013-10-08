Visual = c(3, 0, 9, 8, 8, 13, 10, 15, 5, 3, 4, 4, 11, 4, 9, 10, 9, 7, 6, 5, 12, 9, 9, 9, 7, 2)
Aural = c(5, 10, 9, 7, 1, 10, 4, 9, 1, 6, 3, 3, 11, 4, 7, 7, 8, 11, 5, 3, 10, 7, 10, 11, 8, 6)
Readwrite = c(7, 5, 3, 5, 5, 11, 10, 11, 6, 7, 8, 4, 9, 1, 12, 7, 11, 8, 5, 6, 10, 5, 9, 8, 10, 4)
Kinesthetic = c(7, 5, 3, 5, 5, 11, 10, 11, 6, 7, 8, 4, 9, 1, 12, 7, 11, 8, 5, 6, 10, 5, 9, 8, 10, 4)
careergoals = c(rep('actuary',6), rep('company',5), rep('science',4), rep('software',4), rep('scientist',4),rep('skills',3), rep('engineering',3),rep('school',2), rep('industry',2), rep('statistician',2), rep('problems',2), rep('start',2), rep('researcher',2), rep('engineer',2), rep('technology',2),rep('learning',2), rep('entrepreneur',2),
rep('actuarial',          2),
rep('consulting',         2),
'dunno',              
'startup',            
'where',              
'autonomous',         
'become',             
'analytical',         
'solve',              
'stuff',              
'market',             
'wellrounded',        
'analysis',           
'awesome',            
'success',            
'couple',             
'great',              
'implements',         
'using',              
'analyst',            
'research',           
'vietnam',            
'world',              
'biostatistician',    
'teacher',            
'people',             
'marketing',          
'finence',            
'statistically',      
'return',             
'staying',            
'eventually',         
'happy',              
'graduate',           
'learned',            
'interesting',        
'editor',            
'quant',              
'interested',         
'algorithms',         
'machine',            
'actually',           
'sciences',           
'lkajsdf',            
'analytics',          
'solving',            
'finance',            
'doctor',             
'internationally',    
'psychology',         
'career',             
'impact',             
'computer',           
'thinks',             
'starting',           
'hones',              
'challenged',         
'engaging',           
'years',              
'coding',             
'profession',         
'being',              
'epidemiologist',     
'challenging',        
'positive',           
'sector')        

careercounts=c(rep(6,1), rep(5,1), rep(4,3), rep(3,1), rep(2,12), rep(1,65))
careernames = c('actuary','company', 'science', 'software', 'scientist','skills', 'engineering','school','industry','statistician', 'problems', 'start', 'researcher', 'engineer', 'technology','learning', 'entrepreneur',
                'actuarial',
                'consulting',
                'dunno',              
                'startup',            
                'where',              
                'autonomous',         
                'become',             
                'analytical',         
                'solve',              
                'stuff',              
                'market',             
                'wellrounded',        
                'analysis',           
                'awesome',            
                'success',            
                'couple',             
                'great',              
                'implements',         
                'using',              
                'analyst',            
                'research',           
                'vietnam',            
                'world',              
                'biostatistician',    
                'teacher',            
                'people',             
                'marketing',          
                'finence',            
                'statistically',      
                'return',             
                'staying',            
                'eventually',         
                'happy',              
                'graduate',           
                'learned',            
                'interesting',        
                'editor',            
                'quant',              
                'interested',         
                'algorithms',         
                'machine',            
                'actually',           
                'sciences',           
                'lkajsdf',            
                'analytics',          
                'solving',            
                'finance',            
                'doctor',             
                'internationally',    
                'psychology',         
                'career',             
                'impact',             
                'computer',           
                'thinks',             
                'starting',           
                'hones',              
                'challenged',         
                'engaging',           
                'years',              
                'coding',             
                'profession',         
                'being',              
                'epidemiologist',     
                'challenging',        
                'positive',           
                'sector')

orderedcareergoals = c("lkajsdf",
                       "scientist",
                       "graduate school",
                       "autonomous start company",
                       "become entrepreneur",
                       "entrepreneur",
                       "epidemiologist biostatistician",
                       "editor",
                       "actuary",
                       "actuary school",
                       "doctor",
                       "science software engineering",
                       "being actually solving problems learned",
                       "researcher",
                       "consulting analytics",
                       "internationally",
                       "statistician",
                       "skills profession interested",
                       "actuarial science",
                       "company",
                       "industry challenging engaging interesting",
                       "wellrounded scientist thinks statistically implements machine learning algorithms solve problems hones coding skills awesome stuff",
                       "scientist great computer scientist quant eventually return vietnam startup",
                       "market research marketing",
                       "positive impact world",
                       "software engineering",
                       "finance technology company",
                       "engineer",
                       "researcher psychology",
                       "success",
                       "software engineer couple years start technology company",
                       "staying industry where challenged learning",
                       "actuary",
                       "science",
                       "people using analytical skills",
                       "analyst",
                       "actuary",
                       "teacher",
                       "starting company career consulting analysis",
                       "happy",
                       "dunno science finence sector",
                       "statistician",
                       "software engineering actuarial sciences",
                       "actuary",
                       "actuary")

keeporderedcareergoals = orderedcareergoals[c(2,4,5,7,8,10,11,13,15,16,19,20,21,22,23,24,26,27,30,31,32,35,38,39,41,45)]

#-----------------------------------------------------------------------------------------------

par(mfrow=c(1, 1))
png(filename="Class_Boxplot.png")
b1=boxplot(Visual, Aural, Readwrite, Kinesthetic, names = c("Visual", "Aural", "Readwrite", "Kinesthetic"), main = "Distribution of VAR Scores", col=c("red", "sienna", "palevioletred1", "royalblue1"), ylab="VAR Score")
dev.off()

png(filename="Class_Barplot.png")
barplot(careercounts[1:8], names.arg=careernames[1:8], col=c("springgreen2", "snow3", "wheat3", "thistle3", "sienna2", "tan", "slategray3","yellowgreen"), main= "Top 8 Career Goals in Statistics 157", xlab = "Career Goal", ylab = "Frequency", cex.axis=0.8, cex.names=0.6)
dev.off()

#For each of the top 8 Career Goals, let's dissect how the learning styles differ:
allavgnames=c("actuary", "company", "science", "skills", "software", "school", "engineering")
Vavg = c()
Aavg = c()
Ravg = c()
Kavg = c()

#Average for Actuary:
Vavg[1]=mean(Visual[grep("actuar", keeporderedcareergoals)])
Aavg[1]=mean(Aural[grep("actuar", keeporderedcareergoals)])
Ravg[1]=mean(Readwrite[grep("actuar", keeporderedcareergoals)])
Kavg[1]=mean(Kinesthetic[grep("actuar", keeporderedcareergoals)])

#Average for Company:
Vavg[2]=mean(Visual[grep("compan", keeporderedcareergoals)])
Aavg[2]=mean(Aural[grep("compan", keeporderedcareergoals)])
Ravg[2]=mean(Readwrite[grep("compan", keeporderedcareergoals)])
Kavg[2]=mean(Kinesthetic[grep("compan", keeporderedcareergoals)])

#Average for Science:
Vavg[3]=mean(Visual[grep("scien", keeporderedcareergoals)])
Aavg[3]=mean(Aural[grep("scien", keeporderedcareergoals)])
Ravg[3]=mean(Readwrite[grep("scien", keeporderedcareergoals)])
Kavg[3]=mean(Kinesthetic[grep("scien", keeporderedcareergoals)])

#Average for Skills:
Vavg[4]=mean(Visual[grep("skill", keeporderedcareergoals)])
Aavg[4]=mean(Aural[grep("skill", keeporderedcareergoals)])
Ravg[4]=mean(Readwrite[grep("skill", keeporderedcareergoals)])
Kavg[4]=mean(Kinesthetic[grep("skill", keeporderedcareergoals)])

#Average for Software:
Vavg[5]=mean(Visual[grep("software", keeporderedcareergoals)])
Aavg[5]=mean(Aural[grep("software", keeporderedcareergoals)])
Ravg[5]=mean(Readwrite[grep("software", keeporderedcareergoals)])
Kavg[5]=mean(Kinesthetic[grep("software", keeporderedcareergoals)])

#Average for School:
Vavg[6]=mean(Visual[grep("school", keeporderedcareergoals)])
Aavg[6]=mean(Aural[grep("school", keeporderedcareergoals)])
Ravg[6]=mean(Readwrite[grep("school", keeporderedcareergoals)])
Kavg[6]=mean(Kinesthetic[grep("school", keeporderedcareergoals)])

#Average for Engineering:
Vavg[7]=mean(Visual[grep("engin", keeporderedcareergoals)])
Aavg[7]=mean(Aural[grep("engin", keeporderedcareergoals)])
Ravg[7]=mean(Readwrite[grep("engin", keeporderedcareergoals)])
Kavg[7]=mean(Kinesthetic[grep("engin", keeporderedcareergoals)])

#put in data frame;
alldataboxplot = data.frame(allavgnames, Vavg, Aavg, Ravg, Kavg)

#stacked barplot:
data.mat=as.matrix(alldataboxplot[,2:5])
rownames(data.mat)=alldataboxplot$allavgnames
data.mat=t(data.mat)
png(filename="Correlated_Barplot.png")
barplot(data.mat, beside=TRUE, col=c("skyblue", "thistle", "turquoise", "rosybrown2"), cex.names=0.9, main="Average VARK Scores by Career Goal", ylab = "Average Raw Score", xlab="Career Goal")
legend("topleft",rownames(data.mat), legend=c("Visual", "Aural", "Readwrite", "Kinesthetic"),fill=c("skyblue", "thistle", "turquoise", "rosybrown2"), cex=0.9, title="VARK Legend")
dev.off()