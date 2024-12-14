
# Elastic SIEM Home Lab

This project walks you through setting up a home lab for **Elastic Stack Security Information and Event Management (SIEM)** using the **Elastic Cloud** platform and a **Kali Linux** virtual machine (VM). The goal of this project is to generate security events on the Kali VM, forward them to the Elastic SIEM instance, and analyze the logs.



# -SIEM-elastic-stack-lab
A Security Information and Event Management (SIEM) solution built using the Elastic Stack (Elasticsearch, Kibana, Logstash, Beats). This project collects, processes, and analyzes security event logs, providing real-time threat detection, visualizations, and dashboards for security monitoring

# Elastic SIEM Home Lab

This project walks you through setting up a home lab for **Elastic Stack Security Information and Event Management (SIEM)** using the **Elastic Cloud** platform and a **Kali Linux** virtual machine (VM). The goal of this project is to generate security events on the Kali VM, forward them to the Elastic SIEM instance, and analyze the logs.

## Prerequisites

Before getting started, ensure you have the following:

- **VirtualBox** or **VMware**
- **Basic knowledge of Linux** and **virtualization software**
- **Elastic Cloud account** (free trial)

## Overview of Tasks

1. Set up a free **Elastic account**
2. Install **Kali Linux** on a VM
3. Configure the **Elastic Agent** to collect and forward logs to the SIEM
4. Generate **security events** on the Kali VM
5. Query security events within the Elastic SIEM
6. Create a **dashboard** to visualize security events
7. Set up **alerts** for security events

## Task 1: Set up an Elastic Account

Follow these steps to set up a free Elastic Cloud account:

1. Sign up for a free trial at [Elastic Cloud](https://cloud.elastic.co/registration).
2. Log in to the **Elastic Cloud Console** at [Elastic Cloud Console](https://cloud.elastic.co).
3. Create a new deployment (choose Elasticsearch as the deployment type).
4. Wait for the deployment to be ready.

## Task 2: Setting up the Kali Linux VM

1. Download Kali Linux from [Kali Linux Official](https://www.kali.org/get-kali/#kali-virtual-machines).
2. Create a new VM using **VirtualBox** or **VMware**.
3. Install Kali Linux and log in with the username/password **kali/kali**.

## Task 3: Install the Elastic Agent

1. Log in to your Elastic SIEM instance and navigate to **Integrations**.
2. Search for **Elastic Defend** and install it.
3. Copy the installation command for Linux.
4. Paste the command into the Kali terminal and verify installation with `sudo systemctl status elastic-agent.service`.

## Task 4: Generate Security Events with Nmap

To generate security events:

1. Install **Nmap** (if not already installed).
   ```bash
   sudo apt-get install nmap

##Task 5: Query Security Events in Elastic SIEM

1. Go to Logs under Observability in Kibana.
2. Use the query : event.action:"nmap_scan"
3. Review the search results for security events

## Task 6: Create a Dashboard

1. Navigate to Dashboards under Analytics.
2. Create a new dashboard and add a visualization (e.g., Area chart for event counts over time).
3. Save the dashboard

##Task 7: Create an Alert

1. Navigate to Alerts under Security.
2. Create a new custom rule with the query:event.action:"nmap_scan"
3. Set alert actions such as email or Slack notifications.

Conclusion
In this guide, we set up a home lab using Elastic SIEM and a Kali Linux VM. We forwarded data from the Kali VM to the SIEM using the Elastic Agent, generated security events using Nmap, and created a dashboard and alert to monitor these events.
