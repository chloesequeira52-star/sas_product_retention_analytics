data daily_behavior; 
    call streaminit(123); /* Seed for reproducibility */ 
 
    do user_id = 1 to 300; 
        /* Define 3 static variables per user */ 
        age_group = byte(64 + ceil(rand('Uniform') * 3));  
        plan_type = scan('Free,Basic,Premium', ceil(rand('Uniform') * 3), ','); 
        onboarding_completed = rand('Bernoulli', 0.6); 
         
        /* We output once per user for now just to test the logic */ 
        output;  
    end;  
run; 
 
/* Check if the 300 rows were created */ 
proc contents data=daily_behavior; 
run; 
data daily_behavior; 
    call streaminit(123);  
 
    do user_id = 1 to 300; 
        /* Static traits */ 
        age_group = byte(64 + ceil(rand('Uniform') * 3));  
        plan_type = scan('Free,Basic,Premium', ceil(rand('Uniform') * 3), ','); 
        onboarding_completed = rand('Bernoulli', 0.6); 
         
        /* The Daily Loop */ 
        do day = 1 to 30; 
            /* For now, just a placeholder variable to see it working */ 
            active_flag = 1;  
