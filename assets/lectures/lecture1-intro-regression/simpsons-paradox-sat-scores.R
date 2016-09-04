library(mosaic)

qplot(salary, sat, data=SAT)

qplot(salary, sat, data=SAT, geom=c("point", "smooth"), method="lm", se=FALSE)


SAT$fracgrp = cut(SAT$frac, breaks=c(0, 22, 49, 81), 
                  labels=c("low", "medium", "high"))

qplot(salary, sat, color=fracgrp, data=SAT)

qplot(salary, sat, color=fracgrp, facets=.~fracgrp, data=SAT)

qplot(salary, sat, color=fracgrp, facets=.~fracgrp, data=SAT,  geom=c("point", "smooth"), method="lm", se=FALSE)

qplot(salary, frac, data=SAT)
qplot(salary, sat, data=SAT)
qplot(frac, sat, data=SAT)

qplot(expend, sat, data=SAT)
qplot(expend, sat, data=SAT,  geom=c("point", "smooth"), method="lm", se=FALSE)

qplot(ratio, sat, data=SAT)
qplot(ratio, sat, data=SAT,  geom=c("point", "smooth"), method="lm", se=FALSE)
