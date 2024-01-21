Postmortem Report for ALX System Engineering & DevOps Project
Issue Summary
Outage Duration: March 10, 2024, 08:00 WAT - March 10, 2024, 10:30 WAT

Impact: A 2.5-hour outage occurred on our main web service, affecting approximately 70% of our users. During this period, users experienced complete inaccessibility to our online platform.

Root Cause: The outage was caused by a misconfiguration in the load balancer settings after a recent update, which led to improper request routing.

Timeline
08:00 WAT - Issue Detection: The outage was first detected by our automated monitoring system, which reported a sudden drop in user traffic.
08:15 WAT - Initial Investigation: The DevOps team began investigating, initially suspecting a server failure.
08:45 WAT - Misleading Path: Investigations into server performance did not reveal any anomalies.
09:00 WAT - Escalation: The issue was escalated to the senior DevOps engineer.
09:45 WAT - Root Cause Identified: The actual cause was identified as a misconfiguration in the load balancer.
10:30 WAT - Resolution: The issue was resolved by reverting the load balancer settings to their previous state.
Root Cause and Resolution
The root cause of the outage was a misconfiguration in the load balancer that was inadvertently introduced during a routine update. This misconfiguration resulted in improper routing of user requests, leading to a service outage.

To resolve the issue, we reverted the load balancer settings to their state prior to the update. This action was taken after a thorough review of recent changes and configurations.

Corrective and Preventative Measures
To prevent similar outages in the future and to improve our system's reliability, we have planned the following measures:

Enhanced Monitoring Implementation: Implement more robust monitoring around load balancer configurations to detect anomalies immediately.
Configuration Change Review Process: Establish a more rigorous review process for any configuration changes in our infrastructure.
Regular System Audits: Conduct regular audits of our infrastructure to ensure settings and configurations align with best practices.
Team Training: Update our internal documentation and conduct training sessions for the DevOps team, focusing on best practices for system updates and configuration management.
