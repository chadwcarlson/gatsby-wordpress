# Gatsby Wordpress multi-app for Platform.sh

<p align="center">
<a href="https://console.platform.sh/projects/create-project?template=https://raw.githubusercontent.com/platformsh/template-builder/master/templates/gatsby-wordpress/.platform.template.yaml&utm_content=gatsby-wordpress&utm_source=github&utm_medium=button&utm_campaign=deploy_on_platform">
    <img src="https://platform.sh/images/deploy/lg-blue.svg" alt="Deploy on Platform.sh" width="180px" />
</a>
</p>

This template builds a multi-app project using Gatsby as its frontend and a Wordpress backend to store content using Gatsby's Wordpress source plugin.

Gatsby is a free and open source framework based on React that helps developers build blazing fast websites and apps, and WordPress is a blogging and lightweight CMS written in PHP.

## Services

* Node.js 12
* PHP 7.3
* MariaDB 10.4

## Post-install

1. The Wordpress backend is identical to our existing [Wordpress template](https://raw.githubusercontent.com/platformsh-templates/wordpress), and is accessible at `wordpress.<Platform.sh generated URL>`. Once the Wordpress app has been deployed, run through the Wordpress installer as normal. You will not be asked for database credentials as those are already provided.
2. Once you have completed the Wordpress install, copy the generated url for the backend app (`backend.<PLATFORM_ENVIRONMENT>-<PLATFORM_PROJECT>.<REGION>.platformsh.site`) and add it to the `baseUrl` parameter defined in your `gatsby-config.js` file. Commit and push that change to Platform.sh.

## Customizations

The following files and additions make the framework work.  If using this project as a reference for your own existing project, replicate the changes below to your project.

* The `.platform.app.yaml`, `.platform/services.yaml`, and `.platform/routes.yaml` files have been added.  These provide Platform.sh-specific configuration and are present in all projects on Platform.sh.  You may customize them as you see fit.
* Additional Platform.sh configuration reader modules for both [PHP](https://github.com/platformsh/config-reader-php) and [Node.js](https://github.com/platformsh/config-reader-nodejs) have been added. They provide convenience wrappers for accessing the Platform.sh environment variables.

## References

* [Gatsby](https://www.gatsbyjs.org/)
* [gatsby-source-wordpress](https://www.gatsbyjs.org/packages/gatsby-source-wordpress/)
* [WordPress Source Plugin Tutorial](https://www.gatsbyjs.org/tutorial/wordpress-source-plugin-tutorial/)
* [Node.js http](https://nodejs.org/api/http.html#http_http)
* [Node.js on Platform.sh](https://docs.platform.sh/languages/nodejs.html)
* [WordPress](https://wordpress.org/)
* [WordPress on Platform.sh](https://docs.platform.sh/frameworks/wordpress.html)
* [PHP on Platform.sh](https://docs.platform.sh/languages/php.html)
