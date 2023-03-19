# Optimizing-Order-Fulfillment-Process


## Company Background:

Blackchip is an upcoming semiconductor start-up specialized in developing low-cost hardware solutions for clients that are involved in Non-Profit activities. A typical project at BlackChip semiconductor starts with client placing a order and goes through several stages like
sales, management, design, verification, layout planning, silicon manufacturing.

## Process:

Once the client places an order, the sales inventory gets updated and  a program manager gathers requirements to communicate to the designated Design Team. There are frequent architecture review meetings that are held until architecture is finalized. Once the architecture is finalized then the sales team performs projected cost benefit analysis and parallely Design development begins. For each design cycle, the verification team works on finding bugs within the design. If any breaks are found, then design is handed off to the design team to fix the issues.  Once sign-off is clean, the layout engineer places the entire design on layout (A 3D platform) to simulate the actual chip before manufacturing. Once the layout process is finished, A core review meeting is held to take care of any last-minute hiccups before proceeding to silicon manufacturing.Once silicon manufacturing completes, the sales team performs actual cost benefit analysis and the order is fulfilled to the customer.

## Actors

* **Client** - Each client places orders based on their requirements. They can make multiple orders.
* **Sales** - They handle the inventory updates. They also work on Actual and  Projected cost benefit analysis, profit or loss estimation during the entire project life cycle.
* **Project manager (Management)** - They receive the order and deliver the requirements to the appropriate design teams. They also conduct the review meetings across the teams.They are also part of signing-off of the project before delivering the order to silicon manufacturer 
* **Design & verification Team** - They design the chips, involve in hardware development and after the designing, they conduct various verifications on those chips. 
* **Layout team** - They perform chip planning on the designed and verified chips based.
* **Silicon manufacture** - Post Layouting, silicon manufacturer manufactures the chips based on the order count.

## Swinlane Diagram: As-IS Process
* Once a client places an order, program manager gathers requirements to communicate to Design Team. There 
are frequent architecture review meetings that are held until architecture is finalized. Until then no other process 
is started.
* Once architecture is finalized, hardware development begins, there are frequent design review meetings that are 
needed to confirm whether design constraints are met by the design schema or not.
* Once the design specs are finalized, verification steps begin, where we find any critical bugs that break the design. If any breaks are found, then hardware is handoff’s to design team to fix the issues.
* Once sign-off is clean. Layout engineer places the entire hardware code on layout (A 3D platform) to simulate the 
actual chip before manufacturing.
* Once layout process is finished, A core review meeting is held to take care of any last-minute hiccups before 
proceeding to silicon manufacturing. 
* Once silicon manufacturing completes the order is fulfilled to customer.
  ![image](https://user-images.githubusercontent.com/48169929/226147327-b15ee7a3-539d-46cd-8fea-385b3357f964.png)


## Issues with Current Process:
The current process has some minor issues. 
* The communication between the Design and Verification team. There is no necessity of frequent design meetings if the verification stage is failed.  For example, if a chip “A” has met all goals of power, performance and area and signed off by the design team and if the verification team found bugs then entire design resources are wasted.So, it’s not ideal for the verification team to wait until design review meetings take place. It’s best to have a strategy. 
* Once the layout planning is done, there are no meetings happening internally within the team. These meetings are necessary for any team before the final core review meeting to make sure that everything is perfect.

## Solution:
BCS has come up with the solutions for those two problems.
* For the first problem, combining the design and verification teams will resolve the dependencies among the two teams. Because they are interrelated, it’s best practice to put them under the same actor.
* As far as the second problem is concerned, BCS planned to add a layout signoff meeting before the final core-review meeting. This might add some delay in the process, but it’s necessary to have this meeting, because this makes the process more efficient before handing chips to the client.

## Enablers:
The changes suggested above contribute to modifying Workflow Design and Information systems.

* **[Workflow Design]** Added sales as a new actor and additional process restructuring in Layout, Design and Verification for making the process more streamlined.
* **[Information systems]** Addition of actor “Sales'' would create additional data which can be used to cost benefit analysis..

## Swimlane Diagram: TO-BE Process
  ![image](https://user-images.githubusercontent.com/48169929/226147441-ecd65807-9bea-4d3b-8f78-55578427feb2.png)

## Business Rules and User Requirements:
* One order is placed by one and only one client, one client can place on or more orders.
* One client will be associated with one or more locations. Each location is associated with
one client.
* One order will have one and only one requirement. Requirements will be for one or more
orders.
* One order will be assigned to one and only one manager, Each manager may or maynot
handle an order.
* One order will be assigned to one sales team, each sales team may or maynot handle
an order.
* Each order will be assigned to one and only one design team, design teams will work on
zero or more orders.
* Each Design will be verified only once, verification is done on one or more designs.
* Each verified design will have one and only layout, multiple designs can have many
layouts.
* Each layout-design is manufactured by one silicon manufacturer. Each silicon
manufacturer can manufacture many layout-designs.
* Each team like sales, management, design, verification ,layout have one or more
employees. Each employee belongs to one and only one department team.
## ERD Diagram
  ![image](https://user-images.githubusercontent.com/48169929/226147509-53dd83b7-a5c2-48a2-9604-a40595403a24.png)
## Entity Description:
1. **Client**: Each client places an order. Each client is established in 1 or more locations.
This entity contains the client's id, name, phone number, email id and location’s id. Here
client_id and location_id are the composite primary key. Location_Id is the foreigh key.
2. **Locations**: The entity locations have unique locations in which clients are present. This
entity contains Location’s ID, name and address. Here Location_id is the primary key.
3. **Orders**: This entity gives information about the orders placed such as the id of the client
who placed the order, the client’s location, the requirement’s id through which we can get
the requirements of the order, order start date, order end date, order fulfillment date,
order size and the budget assigned to this order.
4. **Requirements**: This entity gives information about the requirements such as the chip
technology to be used, target performance, target area, power dissipation and speed.
5. **Employees**: This entity contains information of all employees such as their first name
,last name, phone number, email id, address, hourly rate, number of hours worked per
day, department they belong to, and their manager’ id.
6. **Management**: This entity contains the id, first name, last name and department of the
manager.
7. **Design**: This entity gives design features, design start date , design end date, it’s ip
status for each order placed by the client.
8. **Verification**: This entity gives description of the bugs detected along with the bugs log-in
and log_out date for each design.
9. **Layout**: This entity contains information about the layout’s plan, metal layer and voltage
domain for each design.
10. **Silicon manufacturer**: This entity describes the materials and methodology type used
for the manufacturing of chips
11. **Sales**: This entity contains the budget and its respective profit percentage for each order
along with the sales employees working for each order.
