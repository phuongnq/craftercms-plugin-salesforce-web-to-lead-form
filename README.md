# Salesforce web to lead form plugin

A Salesforce plugin to submit a form to Salesforce using [Web to Lead](https://www.salesforce.com/products/guide/lead-gen/web-to-lead/).

# Installation

1. Install the plugin via Studio's Plugin Management UI under `Site Tools` > `Plugin Management`

   OR You can also install this plugin by cloning this repository and using the Studio API.

    1a. Create a Studio JWT Token.

    1b. Execute the following CURL command a terminal

    ```bash
    curl --location --request POST 'http://SERVER_AND_PORT/studio/api/2/marketplace/copy' \
    --header 'Authorization: Bearer THE_JWT_TOKEN_FOR_STUDIO' \
    --header 'Content-Type: application/json' \
    --data-raw '{
      "siteId": "YOUR_PROJECT_ID",
      "path": "THE_ABSOLUTEL_FILE_SYSTEM_PATH_TO_THIS_REPO",
      "parameters": { "oid": "YOUR_SALESFORCE_ORGANIZATION_ID" }
    }
    ```

    OR You can aslo install this plugin by cloning this repository and using [Crafter CLI Commands](https://docs.craftercms.org/en/4.0/new-ia/reference/devcontentops-toolkit/copy-plugin.html)

    ```
      ./crafter-cli copy-plugin -e local -s YOUR_PROJECT_ID --path THE_ABSOLUTEL_FILE_SYSTEM_PATH_TO_THIS_REPO --param oid=YOUR_SALESFORCE_ORGANIZATION_ID
    ```
2. Create a form with `/component/plugins/pn/org/craftercms/plugin/salesforce/web-to-lead-form` content type

![Web to Lead Form](/web_to_lead_form.png)

3. Create a page with `/page/plugins/pn/org/craftercms/plugin/salesforce/web-to-lead-page` content type

![Web to Lead Page](/web_to_lead_page.png)

4. Submit the form and verify that the data is stored in Salesforce

![Web to Lead Page display](/web_to_lead_page_display.png)

![Salesforce Lead](/salesforce_lead.png)