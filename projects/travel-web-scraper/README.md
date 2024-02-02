# Travel Deals Monitoring Web Scraping Project

## Objective
Develop a web scraping application to monitor travel deals for trains and flights based on user-defined specifics, aiming to aggregate and compare available rates from different websites into a single CSV file.

## Project Description
The application will allow users to input travel details, such as destination, departure date, and preference between train and flight. It will then scrape predefined websites of airlines and railway companies to gather offers matching the input criteria. The collected information will be processed and compiled into a CSV file for easy comparison.

## Features
- **User Input:** Users can input travel details including date, destination, and preferred mode of transportation.
- **Website Selection for Scraping:** A pre-populated list of websites (airlines and railways) from which to extract offer information will be defined.
- **Real-Time Scraping:** Execute scraping scripts that query the selected sites to find offers matching the user's search criteria.
- **CSV File Creation:** Compile the gathered data into a CSV file, organizing offers by price, departure time, travel duration, and other relevant criteria.
- **Updates and Notifications:** Option to perform scraping at regular intervals with updates to the CSV file and notifications to the user for new deals or significant changes.

## Privacy and Legal Compliance
- **Rate Limiting:** Implement pauses between requests to avoid overloading the target sites' servers and comply with their usage policies.
- **Terms of Service Compliance:** Ensure that scraping is allowed by the terms of service of the source websites, and obtain permission if necessary before proceeding.

## Development Phases
1. **Requirement Gathering and Planning:** Precisely define user requirements and select the sites to monitor.
2. **Scraping Script Development:** Code the scripts that will perform the scraping of the required information.
3. **Processing Logic Implementation:** Develop the logic to filter, sort, and aggregate the extracted data.
4. **User Interface Creation:** Design and implement an interface through which users input their travel details.
5. **Testing and Optimization:** Verify the application's functionality and optimize performance.
6. **Deployment and Monitoring:** Deploy the application and monitor its operation to identify and resolve any issues.

# CREDITS

Simone Torrisi [https://github.com/storrisi]