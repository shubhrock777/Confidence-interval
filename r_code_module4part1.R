    

                                      # Module 04 part 1

#  importing file 
cars <- read.csv("D:\\360digitM\\assi\\Module 4\\Archive\\Cars.csv")
wc <- read.csv(file.choose())

attach(cars)
attach(wc)


# Q1

sd_mpg = sd(MPG)
mean_mpg = mean(MPG)

    # a.
pnorm(38,mean_mpg,sd_mpg)

    #b.
1-pnorm(40,mean_mpg,sd_mpg)

    #c.
pnorm(50,mean_mpg,sd_mpg)-pnorm(20,mean_mpg,sd_mpg)

#Q2
    #a.
qqnorm(MPG)
qqline(MPG)
hist(MPG)
    
    #b.
qqnorm(Waist)
qqline(Waist)
hist(Waist)

qqnorm(AT)
qqline(AT)
hist(AT)

#3

qnorm(.95)
qnorm(.97)
qnorm(.80)

#Q4

qt(0.975,24)
qt(0.98,24)
qt(0.995,24)

#Q5

# probability for t student distribution

x_ = 260
u_= 270
s_ =90
n_=18

t_value =(x_-u_)/(s_/sqrt(n_))

pt(t_value,17)
t_value

#Q6


ser_p =pnorm(50,45,8)
fail_P = 1-ser_p

#Q7

    #A
p_older_than_44 = 1- pnorm(44,38,6)
p_bw_38_44 = 1 - pnorm(38,38,6) - p_older_than_44

    #B
num_emp_under_30 = 400 * pnorm(30,38,6)


#Q9

mean_<- 100 
sd_ <- 20
z_value= qnorm((1-0.99)/2)

# Z_vlue = (X- mean) / sd
# X = z_value *  sd + mean

lower_range = (z_value * sd_) + mean_
upper_range = -(z_value * sd_) + mean_

#Q10

mean_a = 5
sd_a =   3

mean_b = 7
sd_b      =   4

     #A
profit_mean = (mean_a + mean_b)/2

profit_sd= sqrt((sd_a**2)+(sd_b**2)+(mean_a - profit_mean)+(mean_b - profit_mean))


z_val_95 = qnorm((1-0.95)/2)

lower_range_rs = ((z_val_95 * profit_sd) + profit_mean)* 45 * 1000000
upper_range_rs = ( -(z_val_95 * profit_sd) + profit_mean) * 45 * 1000000
    
    #B


z_val_5= qnorm(0.05,profit_mean,profit_sd)

percentile_5 = -(z_val_5 * profit_sd + profit_mean) * 45 * 1000000

    #C
dividion_a = pnorm(0,mean_a,sd_a)
dividion_a

dividion_b = pnorm(0,mean_b, sd_b )
dividion_b







