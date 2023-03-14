


CREATE DATABASE BLACKCHIP;
SHOW databases;
use blackchip;
CREATE TABLE CLIENTS(CLIENT_ID VARCHAR(10),
						LOCATION_ID varchar(10),
                        CLIENT_NAME VARCHAR(30),
                        CLIENT_PHONE_NUMBER varchar(40),
                        CLIENT_EMAIL VARCHAR(50),
                        primary key(CLIENT_ID,location_id));

CREATE TABLE LOCATIONS(LOCATION_ID varchar(10),
					   LOCATION_NAME VARCHAR(30),
                       CLIENT_ADDRESS VARCHAR(255),
                       primary key(LOCATION_ID));
                       
CREATE TABLE ORDERS(ORDER_ID VARCHAR(10),
				   CLIENT_ID VARCHAR(10),
                   location_id varchar(10),
                   REQUIREMENT_ID VARCHAR(10),
					MSTART_DATE DATE,
                    MEND_DATE DATE,
                   BUDGET int(20),
                   FULLFILLMENT_DATE DATE,
                   ORDER_SIZE INT(10),
                   PRIMARY KEY(ORDER_ID));


CREATE TABLE REQUIREMENTS(REQUIREMENT_ID VARCHAR(10),
						   CHIP_TECHNOLOGY_nm VARCHAR(15),
                           PERFORMANCE_TARGET varchar(10),
                           AREA_TARGET_mm varchar(10),
                           POWER_DISSIPATION_mW varchar(10),
                           SPEED varchar(10),
                           primary key(REQUIREMENT_ID)); 


CREATE TABLE EMPLOYEES(EMPLOYEE_ID VARCHAR(10),
						Manager_id VARCHAR(30),
                        Department_Name VARCHAR(30),
                        EMPLOYEE_FIRST_NAME varchar(30),
                        EMPLOYEE_LAST_NAME VARCHAR(50),
                        EMPLOYEE_PHONE_NUMBER VARCHAR(40),
                        EMPLOYEE_EMAIL_ID VARCHAR(255),
                        EMPLOYEE_ADDRESS VARCHAR(255),
                        HOURLY_RATE INT(10),
                        HRS_WORKED_PER_DAY INT(10),
                        primary key(EMPLOYEE_ID));
                        

                        
CREATE TABLE MANAGEMENT(MANAGER_ID VARCHAR(10),
						Manager_first_name VARCHAR(40),
						Manager_last_name VARCHAR(40),
                        Department_name varchar(40),
                        primary key(Manager_ID));
               
CREATE TABLE DESIGN(DESIGN_ID VARCHAR(10),
					ORDER_ID VARCHAR(10),
					EMPLOYEE_ID VARCHAR(10),
					FEATURES VARCHAR(255),
					DSTART_DATE DATE,
                    DEND_DATE DATE,
                    IP varchar(15),
                    primary key(DESIGN_ID));
                  
CREATE TABLE VERIFICATION(VERIFICATION_ID VARCHAR(10),
						EMPLOYEE_ID VARCHAR(10),
                        ORDER_ID VARCHAR(10),
                        DESIGN_ID VARCHAR(10),
                        BUGS_LOGGED_IN_DATE DATETIME(6),
                        BUGS_DESCRIPTION VARCHAR(255),
						BUGS_LOGGED_OUT_DATE DATETIME(6),
                        primary key(VERIFICATION_ID));
                        

CREATE TABLE LAYOUT(LAYOUT_ID VARCHAR(10),
					EMPLOYEE_ID VARCHAR(10),
                    ORDER_ID VARCHAR(10),
                    DESIGN_ID VARCHAR(10),
					LAYOUT_PLAN_DESCRIPTION VARCHAR(255),
                    METAL_LAYER VARCHAR(5),
                    VOLTAGE_DOMAIN VARCHAR(5),
                    primary key(LAYOUT_ID));
                    


CREATE TABLE SILICON_MANUFACTURER(MANUFACTURER_ID VARCHAR(10),
								  LAYOUT_ID VARCHAR(10),
								  ORDER_ID VARCHAR(10),
								  SILICON_WAFER_TYPE VARCHAR(255),
								  FABRICATION_PROCESS_TYPE VARCHAR(255),
								  primary key(ORDER_ID));
CREATE TABLE SALES(SALES_ID VARCHAR(10),
				   EMPLOYEE_ID VARCHAR(10),
                   ORDER_ID VARCHAR(10),
                   Profit_percentage int(20),
                   BUDGET int(10),
                   primary key(SALES_ID));
   

                  
			
show tables;
                   
insert into design(Design_ID,
Order_ID,
Employee_ID,
Features,
DStart_date,
DEnd_date,
IP)
values('D1',	'O1',	'E1',	'80% DOU high frequency','2021-03-01','2021-04-01','MXP4'),
 ('D2',	'O2',	 'E2',	'High frequency, low area','2021-03-15','2021-07-15','MX4'),
 ('D3',	'O3',	 'E1',	'low power','2021-04-01','2021-08-01','VP4'),
 ('D4',	'O4',	 'E3',	'100% DOU savings','2021-04-15','2021-05-15','P4'),
 ('D5',	'O5',	 'E4',	'midrange support','2021-05-01','2021-08-01','MCX'),
 ('D6',	'O6',	 'E3',	'turbox support','2021-05-15','2021-06-15','MC32'),
('D7',	'O7',	 'E5',	'turbo max support','2021-06-01','2021-06-15','XES2'),
 ('D8',	'O8',	 'E3',	'low technode area','2021-06-15','2021-10-16','P12'),
 ('D9',	'O9',	 'E5',	'low frequency support','2021-07-01','2021-12-01','SIO1'),
('D10',	'O10',	 'E6',	'low frequency 8nm support','2021-07-15','2021-08-01','DS1');


                      

                   
insert into clients(client_id,location_id,client_name,
client_phone_number,client_email)
values('C1',	'L1',	'Dell',	1924739294,	'ubir@dell.hyd.net'),
( 'C1',	 'L2',	 'Dell',	4101325430,	'grdschl@dell.bglr.net'),
( 'C2'	 ,'L3'	, 'Toshibha'	,2587677925,	'killmenow@toshibha.del.com'),
('C2',	 'L1',	 'Toshibha',	6683203870,	'jmorris@toshibha.hyd.com'),
( 'C3',	 'L2',	 'seagate',	2158209109,	'staikos@seagate.bglr.net'),
( 'C3',	 'L4',	 'seagate',	5173164609,	'stakasa@seagate.mum.net'),
('C3',	 'L1',	 'seagate',	2729631963,	'jbearp@seagate.hyd.net'),
( 'C4',	 'L6',	 'western digital',	4947759117,	'kewley@seagate.chenn.net'),
( 'C4',	 'L5',	 'western digital',	8089514080,	'starstuff@wd.raj.net'),
( 'C4',	 'L1',	 'western digital',	5098153588,	'andrewik@wd.hyd.net');




insert into locations(location_id,location_name,client_address)
values('L1',	'hyderabad',	'400006'),
('L2',	 'bengaluru'	, '500032'),
('L3',	'delhi',	'120012'),
( 'L4',	'mumbai',	 '410210'),
( 'L5',	'rajasthan',	 '321981'),
( 'L6',	'chennai',	'600001');

                           
insert into requirements(requirement_id,chip_technology_nm,performance_target,area_target_mm,power_dissipation_mW,speed)
values('R1',	'5',	'80%',	'0.01',	'0.1',	'1GHz'),
( 'R2',	'7',	'95%',	'0.0001',	'0.02',	 '4GHz'),
( 'R3',	'7',	'76%','	2.14',	'0.001',	 '2GHz'),
 ('R4'	,'28'	,'100%'	,'0.1'	,'0.4'	 ,'806MHz'),
 ('R5',	'10',	'95%',	'0.9',	'0.8',	 '888MHz'),
 ('R6'	,'12'	,'98%'	,'1.67'	,'0.001'	 ,'1600MHz'),
 ('R7',	'7',	'100%',	'3',	'1.2',	 '1650MHz'),
 ('R8',	'3',	'79%',	'0.9',	'0.0001',	 '400MHz'),
 ('R9',	'10',	'89%',	'0.7',	'0.0001',	 '350MHz'),
 ('R10',	'8',	'92%',	'0.5',	'0.05',	 '650MHz');



                                  
insert into silicon_manufacturer(manufacturer_id,layout_id,order_id,silicon_wafer_type,fabrication_process_type)
values('M1',	'Y1',	'O1',	'Polished',	'Cutting'),
 ('M2',	 'Y2',	'O2',	'Hi-Fiber',	 'Punching'),
('M1',	 'Y3',	'O3',	'Hyper-hi',	'forming'),
 ('M2',	 'Y4',	'O4',	'AT-fiber',	 'Shearing'),
( 'M2',	 'Y5',	'O5',	'Epitaxal',	 'Stamping'),
 ('M2',	 'Y6',	'O6',	'Diffused',	 'welding'),
 ('M1',	 'Y7',	'O7',	'SOI',	 'cutting'),
 ('M1',	 'Y8',	'O8',	'SOI',	 'welding'),
 ('M1',	 'Y9',	'O9',	'Polished',	'forming'),
 ('M1',	 'Y10',	'O10',	'Hyper-hi',	 'shearing');


insert into sales(sales_id,employee_id,order_id,profit_percentage,budget)
values('S1',	'E17',	'O1', 	'20', 	740000), 
 ('S2',	 'E17',	'O2', 	'12', 	930000), 
( 'S3',	 'E18',	'O3', 	'5', 	890000), 
('S4',	 'E19',	'O4', 	'6', 	720000), 
 ('S5',	 'E17',	'O5', 	'32', 	620000), 
('S6',	 'E19',	'O6', 	'55',	780000) ,
('S7',	 'E17',	'O7', 	'12',	500000), 
('S8',	 'E18',	'O8', 	'30',	980000), 
('S9',	 'E18',	'O9', 	'60',	1500000), 
('S10',	 'E19',	'O10', 	'21',	520000); 




insert into layout(Layout_ID,
Employee_ID, Order_id,
Design_ID,
Layout_plan_description,
Metal_layer,
Voltage_domain)
values('Y1',	'E10', 'O1',	'D1',	'Square',	'M1',	'0.675'),
 ('Y2',	 'E11', 'O2',	 'D2',	'Tabloid',	'M2',	'0.8'),
 ('Y3',	 'E10', 'O3',	 'D3',	    'rectangle',   	'M1',	'0.5'),
('Y4',	 'E12',	'O4', 'D4',	    'wedge',   	'M7',	'0.01'),
('Y5',	 'E13',	'O5', 'D5',	'T-shape',	'M9',	'0.78'),
 ('Y6',	 'E12',	'O6', 'D6',	    'Narrow pipe',   	'M10',	'0.675'),
 ('Y7',	 'E14',	'O7', 'D7',	    'square',   	'M0',	'0.655'),
 ('Y8',	 'E12',	'O8', 'D8',	   ' rectangle',   	'D3',	'0.515'),
 ('Y9',	 'E15',	'O9', 'D9',	'T-shape',	'G1',	'0.615'),
 ('Y10','E16', 'O10','D10',    'Wide square',   	'G2',	'0.465');

insert into management(Manager_ID,
Manager_first_name,
Manager_last_name,
Department_name)
values('P1','Matt','Sameulson','Design'),
('P2','Jennifer','Eigo','Verif'),
('P3','David','Bergman','Layout'),
('P4','Dave','Wanik','Sales');

 insert into orders(Order_ID,
Client_ID,
Location_ID,
Requirement_ID,
Mstart_date,
MEnd_date,
Budget,
Fullfillment_date,
Order_size)
values('O1',	'C1',	'L1',	'R1','2021-02-24','2021-04-06',	740000,'2021-05-06',5000), 
('O2',	 'C1',	 'L1',	 'R2','2021-03-10','2021-07-20',	930000,'2021-08-19',10000), 
('O3',	 'C1',	 'L2',	 'R3','2021-03-27','2021-08-06',	890000,'2021-09-05',10000), 
('O4',	 'C2',	  'L3',	 'R4','2021-04-10','2021-05-20',	720000,'2021-06-19',6000), 
('O5',	 'C2',	 'L3',	 'R5','2021-04-26','2021-08-06',	620000,'2021-09-05',12000) ,
('O6',	 'C2',	 'L1',	 'R6','2021-05-10','2021-06-20',	780000,'2021-07-20',5500) ,
('O7',	 'C3',	'L4',	 'R7','2021-05-27','2021-06-20',	50000,'2021-07-20',1000), 
('O8',	 'C3',	 'L1',	 'R8','2021-06-10','2021-10-21',	980000,'2021-11-20',15000), 
('O9',	 'C4',	 'L5',	 'R9','2021-06-26','2021-10-06'	,1500000,'2021-01-05',50000), 
('O10',	 'C4',	 'L6',	 'R10','2021-07-10','2021-08-06',	520000,'2021-09-05',1500); 

insert into verification(Verification_ID,
Employee_ID,
order_ID,
Design_ID,
Bugs_logged_in_date,
Bugs_description,
Bugs_logged_out_date)
values('V1',	'E7', 'O1',	'D1',	'2021-03-11','Response time not within <1ns',	'2021-03-22'),
 ('V2',	 'E7', 'O2',	 'D2',	'2021-04-14','Trigger missing after 1 full cycle',	'2021-05-16'),
 ('V3', 'E8', 'O3',	 'D3','2021-05-01'	,'Missing HTOL functionality','2021-06-02'),
 ('V4',	 'E9', 'O4', 'D4',	'2021-04-22','Fall response time is not within 4ns',	'2021-04-30'),
 ('V5',	 'E7', 'O5',	 'D5',	'2021-05-22',	'Rise time drop in MX module',	'2021-06-10'),
 ('V6',	 'E9',	'O6', 'D6',	'2021-05-29',	'chicken bit addition at 2nd bit',	'2021-06-08'),
 ('V7',	 'E7', 'O7',	 'D7',	'2021-06-10',	'Spare bit addition needed at core module',	'2021-06-14'),
 ('V8',	 'E8','O8',	 'D8',	'2021-08-14',	'High frequency usecase implementation','2021-09-06'),
 ('V9',	 'E8', 'O9',	 'D9',	'2021-08-30',	'Low power failure due to 1b2b connection',	'2021-09-17'),
('V10',	 'E9', 'O10',	'D10',	'2021-06-18',	'Technode fail at 1ns',	'2021-06-19');

insert into employees(Employee_ID,
Manager_id,
Department_name,
Employee_First_Name,
Employee_Last_Name,
Employee_Phone_Number,
Employee_Email_ID,
Employee_Address,
Hourly_Rate, HRS_WORKED_PER_DAY)
values('E1',	'P1',	'Design',	'Sai',	'bysani',	'1',	'sai.bcs.com',	'777 Brockton Avenue Abington MA 235',	'35', 8),
 ('E2',	'P1',	'Design',	 'Jahnavi',	'gamalapati',	'2',	'jahnavi.bcs.com',	'250 Hartford Avenue',	'35', 8),
 ('E3',	'P1',	'Design',	 'Praneetha',	'vallivedu',	'3',	'praneetha.bcs.com',	'700 Oak Street',	'40', 8),
 ('E4',	'P1',	'Design',	'Chanikya',	'digumarty',	'4',	'chanikya.bcs.com',	'66-4 Parkhurst Rd',	'40', 8),
 ('E5',	'P1',	'Design',	 'Kavya',	'peta',	'5',	 'kavya.bcs.com',	'591 Memorial Dr'	,'45', 8),
 ('E6',	'P1',	'Design',	 'Parinay',	'rikhy',	'6',	'parinay.bcs.com',	'55 Brooksby Village Way',	'45', 8),
 ('E7',	'P2',	'Verif',	 'Rabbhani',	'sheik',	'7',	'rabhani.bcs.com',	'137 Teaticket Hwy',	'40', 8),
 ('E8',	'P2',	 'Verif',	 'Susmita',	'kancharla',	'8',	'susmita.bcs.com',	'Fall River MA 2721',	'45', 8),
 ('E9',	'P2',	'Verif',	 'Varshitha',	'nallu',	'9',	'varshitha.bcs.com',	'Brockton MA 2301',	'35',8),
 ('E10',	'P3',	'Layout',	'Chethana',	'bohini',	'10',	'chethana.bcs.com',	'East Falmouth MA 2536',	'35',8),
 ('E11',	'P3',	'Layout',	 'janu',	'adabala',	'11',	 'janu.bcs.com',	'888 Brockton Avenue Abington MA 235',	'40',8),
 ('E12',	'P3',	'Layout',	'hari',	'krishna',	'12',	 'hari.bcs.com',	'280 Hartford Avenue',	'40',8),
 ('E13',	'P3',	'Layout',	 'vishwa',	'srivastava',	'13',	 'vishwa.bcs.com',	'770 Oak Street',	'45',8),
( 'E14',	'P3',	'Layout',	 'kartiki',	 'bharghava',	'14',	 'kartiki.bcs.com',	'68-4 Parkhurst Rd',	'45',8),
( 'E15',	'P3',	'Layout',	'nanditha',	 'menon',	'15',	 'nanditha.bcs.com',	'786 Memorial Dr',	'45',8),
( 'E16',	'P3',	'Layout',	 'adwaith',	 'menon',	'16',	 'adwaith.bcs.com',	'89 Brooksby Village Way',	'30',8),
 ('E17',	'P4',	'Sales',	 'shannu'	, 'shabaj',	'17',	 'shannu.bcs.com',	'679 Teaticket Hwy',	'30',8),
 ('E18',	'P4',	'Sales',	 'kiana',	 'reeves',	'18',	'kaina.bcs.com',	'Fall River MA 2571',	'30',8),
( 'E19',	'P4',	'Sales',	'Di',	 'Zhao',	'19',	'di.bcs.com',	'Brockton MA 2671',	'35',8);

			select * from employees;
select * from clients;
select * from locations;

ALTER TABLE  clients
add FOREIGN KEY (location_id) 
REFERENCES locations(location_id);

ALTER TABLE ORDERS
ADD foreign key (client_id)
 references clients(client_id),
ADD foreign key (location_id)
 references locations(location_id),   
ADD foreign key (requirement_id)
 references requirements(requirement_id);               

ALTER TABLE EMPLOYEES
ADD foreign key (manager_id)
 references management(manager_id);

ALTER TABLE DESIGN
ADD foreign key (order_id)
 references orders(order_id),
ADD foreign key (employee_id)
 references employees(employee_id);

ALTER TABLE VERIFICATION
ADD foreign key (employee_id)
 references employees(employee_id),
ADD foreign key (design_id)
references design(design_id),
ADD foreign key (order_id)
            references orders(order_id);



ALTER TABLE LAYOUT
ADD foreign key (employee_id)
 references employees(employee_id),
            ADD foreign key (design_id)
            references design(design_id),
             ADD foreign key (order_id)
            references orders(order_id);

ALTER TABLE SILICON_MANUFACTURER
ADD foreign key (layout_id)
 references layout(layout_id);

ALTER TABLE SALES
             ADD foreign key (employee_id)
             references employees(employee_id),
                  ADD foreign key (order_id)
                  references orders(order_id);




/* Query 1*/

select * from
(
select tab3.employee_id,e.EMPLOYEE_FIRST_NAME,e.EMPLOYEE_LAST_NAME, e.Department_name, count(*) as "Number of projects",  sum((s.Profit_percentage*tab3.budget)/100) as "Net profit", (sum((s.Profit_percentage*tab3.budget)/100)*0.03) as annual_bonus from
(
select o.order_id,  d.employee_id, o.budget  from orders o inner join design d on o.order_id=d.order_id
UNION all
select o.order_id, l.employee_id, o.budget from orders o inner join layout l on o.order_id=l.order_id
UNION all
select o.order_id, v.employee_id, o.budget from orders o inner join  verification v on o.order_id=v.order_id
UNION all
select o.order_id, s.employee_id, o.budget from orders o inner join sales s on o.order_id = s.order_id) as tab3 
join
sales s on s.order_id=tab3.order_id 
join
employees e on tab3.employee_id=e.employee_id

group by tab3.employee_id order by annual_bonus DESC ) as tab33;



/* Query 2 */


select d.design_id,datediff(d.dend_date,d.dstart_date) as 'design_duration (days)',features,DATEDIFF(v.Bugs_logged_out_date,v.Bugs_logged_in_date) as 'bug_resolving_duration (days)',v.bugs_description,l.layout_plan_description,l.metal_layer,l.voltage_domain from design d 
join layout l on d.design_id=l.design_id
join verification v on l.design_id=v.design_id;




/* Query 3 */

select client_id,no_of_locations,no_of_orders,sum_of_order_size,budget_per_client,profit
from (
select o.client_id,count(o.location_id) as no_of_locations, 
count(o.order_id) as no_of_orders,
sum(o.order_size) as sum_of_order_size,
sum(o.budget) as budget_per_client,
sum((s.budget*s.profit_percentage)/100) as profit 
from sales s
join orders o on s.order_id=o.order_id 
group by o.client_id
order by profit desc) as t2;




/* Query 4.1 */

select  department_name,count(employee_id), 
sum(hrs_worked_per_day*20*hourly_rate),
 max(hrs_worked_per_day*20*hourly_rate), 
 min(hrs_worked_per_day*20*hourly_rate), 
 avg(hrs_worked_per_day*20*hourly_rate) 
 from employees group by department_name;
 
 /* Query 4.2*/
 select department_name,if(department_name='Design',count(employee_id),
 if(department_name='Verif',count(employee_id),
 if(department_name='Layout',count(employee_id),
 if(department_name='Sales',count(employee_id),0)))) as Total_no_employees,
 
 if(department_name='Design',sum(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Verif',sum(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Layout',sum(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Sales',sum(hrs_worked_per_day*20*hourly_rate),0)))) as Total_Salary,
 
 if(department_name='Design',avg(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Verif',avg(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Layout',avg(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Sales',avg(hrs_worked_per_day*20*hourly_rate),0)))) as Avg_Salary,
 
 if(department_name='Design',max(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Verif',max(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Layout',max(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Sales',max(hrs_worked_per_day*20*hourly_rate),0)))) as Max_Salary,
 
 if(department_name='Design',min(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Verif',min(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Layout',min(hrs_worked_per_day*20*hourly_rate),
 if(department_name='Sales',min(hrs_worked_per_day*20*hourly_rate),0)))) as Min_salary
 
 from employees group by department_name;
 
 
/* Query 5*/

select 
l.location_id, l.location_name, count(o.client_id), sum(o.order_size), 
sum((s.budget*s.profit_percentage)/100) as profit,
 round((sum((s.budget*s.profit_percentage)/100))/count(o.client_id),2) as Normalized_profit  ,
 if(round((sum((s.budget*s.profit_percentage)/100))/count(o.client_id),2)  < 100000,
' Low profit Zone', if(round((sum((s.budget*s.profit_percentage)/100))/count(o.client_id),2)  > 500000 ,
'High profit Zone', 'Mid profit zone')) as category
from locations l 
join orders o on l.location_id=o.location_id 
join sales s on s.order_id=o.order_id group by l.location_id order by normalized_profit DESC;





