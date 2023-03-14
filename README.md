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

* [Workflow Design] Added sales as a new actor and additional process restructuring in Layout, Design and Verification for making the process more streamlined.
* [Information systems] Addition of actor “Sales'' would create additional data which can be used to cost benefit analysis..


