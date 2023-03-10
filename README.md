# book_club

# **Book Club**

<!-- can have readme preview open as well to see how it will appear -->
<!-- - this is a bullet -->

# **Checklist**

<!-- ## this is a sub heading -->

## _Build a Full Stack Spring application that includes Login and Reg_

- Build an application that requires both user authentication and validations
- Add server-side validations in addition to model-level validations
- Implement authentication logic
- Use 'Optionals' to check if a user exists
- Import and use 'BCrypt' to create hashes and compare hashed strings against the database
- Use and manipulate transient member variables and non-entity classes
- Handle user logout and active session status
- Use session data to pull the current user's information

## _TODO_

1. Add users to an application with Create and Read capabilities
2. Implement a one-to-many relationship between User and another model
3. Identify and implement routes for requests based on a wireframe
4. Manage a user session (login status) by storing and reading their ID in session
5. Apply cumulative skills to build and de-bug a full-stack application

<!--
Test: Show how to add a web browser
[website](https://www.google.com) -->

## _Schema_

- [ ] add a schema in MySQL Workbench

## _Applications Properties_

- [ ] update [application.properties](/src/main/resources/application.properties)
<!-- how to put in code blocks us ```-->

```
# Where are jsp files? HERE!
spring.mvc.view.prefix=/WEB-INF/
# Data Persistence
#<!-- after the '/' is <<WHATEVER_YOUR_SCHEMA_NAME>> that you created in MySQL Workbench -->
spring.datasource.url=jdbc:mysql://localhost:3306/book_club
spring.datasource.username=root
spring.datasource.password=rootroot
spring.jpa.hibernate.ddl-auto=update
# For Update and Delete method hidden inputs
spring.mvc.hiddenmethod.filter.enabled=true
```

## _POM File_

- ### After adding this to my pom fie it will ask if you want to update -> always say yes
- [ ] [pom.xml](pom.xml)

```
		<!--
		& add the two dependency files here
		-> after save click yes so Maven can update the dependencies that we can use
		-->

		<dependency>
			<groupId>org.apache.tomcat.embed</groupId>
			<artifactId>tomcat-embed-jasper</artifactId>
        </dependency>
		<dependency>
                <groupId>javax.servlet</groupId>
                <artifactId>jstl</artifactId>
        </dependency>

		<!-- & Bootstrap -->
	    <dependency>
        <groupId>org.webjars</groupId>
        <artifactId>webjars-locator</artifactId>
        <version>0.30</version>
		</dependency>

		<!-- BOOTSTRAP DEPENDENCIES -->
		<dependency>
			<groupId>org.webjars</groupId>
			<artifactId>bootstrap</artifactId>
			<version>5.0.1</version>
		</dependency>
		<dependency>
			<groupId>org.webjars</groupId>
			<artifactId>jquery</artifactId>
			<version>3.6.0</version>
		</dependency>

        <!-- & DEPENDENCIES FOR DISPLAYING JSPS AND USING JSTL TAGS -->
        <dependency>
            <groupId>org.apache.tomcat.embed</groupId>
            <artifactId>tomcat-embed-jasper</artifactId>
        </dependency>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
        </dependency>

        <!-- & DEPENDENCY FOR USING VALIDATION ANNOTATIONS -->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-validation</artifactId>
        </dependency>
... (186 lines left)
```
