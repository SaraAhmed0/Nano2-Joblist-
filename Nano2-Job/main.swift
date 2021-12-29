struct Job {
    var jobField : String
    var jobName : String
    var jobReq : String
    var jobExp : String
    var jobSal : String
    
}

// struct declaration
 var job1 = Job(jobField: "IT", jobName: "Application Specialist", jobReq: "Bachelors Degree in Computer Science", jobExp: "1 to 3 years experience in a related field", jobSal: "Salary: 12000 to 20000 SAR depending on experience")

var job2 = Job(jobField: "IT", jobName: "Software Engineer", jobReq: "Bachelors Degree in Computer Science", jobExp: "3+ years experience in a related field", jobSal: "Salary: 6000 to 20000 SAR depending on experience")

var job3 = Job(jobField: "Business", jobName: "Marketing Specialist", jobReq: "Bachelor Degree in Marketing", jobExp: "Minimum 2 year of experience in Marketing", jobSal: "Salary: 10000 to 24000 SAR depending on experience")

var job4 = Job(jobField: "Business", jobName: "Business Analyst", jobReq: "Master’s degree in business or a related field education", jobExp: "5+ years of experience in business analysis", jobSal: "Salary: 10000 to 15000 SAR depending on experience")

var job5 = Job(jobField: "Education", jobName: "Native English Teacher", jobReq: "BA or MA in English Language/Literature", jobExp: "Minimum 2 years of experience", jobSal: "Salary starting from 11,250 SAR to 13,125 depending on experince")

var job6 = Job(jobField: "Education", jobName: "Fitness Instructor", jobReq: "International Gym Instructor Certificate is a plus but not a must", jobExp: "Ability to teach functional or gym floor-based group classes", jobSal: "Salary: 4000 to 5000 SAR depending on experience")

// Array of all job objects
var jobs = [job1,job2,job3,job4,job5,job6]

//User input
var choice :String!
var desired_job: String!
var jobName : String!

//Loop to repeat the menu until the user exit the program
repeat{
print("-------------------Welcome To Job-Finding Prrogram-------------------")
print("Select Your Choice:")
print("1.Display All Job Available")
print("2.Search For Specific Job ")
print("3.Display Job Information")
print("4.Exit")
print("---------------------------------------------------------------------")
choice = readLine()
print()
switchCases(choice)
}while choice != "4"

func switchCases(_ userchoice:String){
    switch userchoice {
    case "1":
        print("********************* Jobs Available *********************")
        allJobs()
        print("---------------------------------------------------------------------")
        print()

    case "2" :
        print("****** Entre your  desired job field (IT,Business,Education) : ******")
        desired_job = readLine()
        print()
        specificJob(desired_job)
        print()
    case "3":
       
        print("******************** Choose from jobs available: ********************")
        allJobs()
        print("---------------------------------------------------------------------")
        jobName = readLine()
        print()
        print("****** The Information About \(jobName!) ******")
        jobInfo(jobName)
        print()
    case "4":
        print("******************** Thank you, See you soon! ********************")
        print()
    default:
        print("Please choose from menu ...")

    }
}

func allJobs(){
    for x in jobs{
        print(x.jobName)
    }
}

func specificJob(_ field:String){
    print("****** The jobs in \(field) field is ******")
        for x in jobs {
            if x.jobField == field{
                print(x.jobName)
            }
        }
}

func jobInfo(_ jobName:String){
    for x in jobs{
        if x.jobName == jobName{
            print(x.jobReq)
            print(x.jobExp)
            print(x.jobSal)
        }
    }
}
