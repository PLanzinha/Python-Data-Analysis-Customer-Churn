# Customer Churn Analysis Jupyter Lab with Docker and Dbeaver
## Docker Setup

### Prerequisites

- Docker installed on your system. [Docker Installation Guide](https://docs.docker.com/get-docker/)


### Docker Image

The Docker image for this project is provided as a tarball file (customer-churn-db-docker.tar).


For this project, the Docker Container Image is provided as a Tarball file, customer-churn-db-docker.tar.
To load the Docker Image, these steps should be followed:

Loading the Docker Image

    Navigate to the directory containing the tar file and open Command Prompt, PowerShell or a Terminal.
    Tip, can be done using cd path/to/your/repository or by writing cmd, for the Command Prompt, in the address bar in the folder.


Load the Docker image from the tar file:

    docker load -i customer-churn-db-docker.tar

Running the Docker Container

After loading the Docker image, you can run a container using the following command:

    docker run -p 8888:8888 --name customer-churn-db-container customer-churn-db-docker

What does that do:

    -p 8888:8888: This maps the port 8888 on your host to port 8888 in the container.
    --name customer-churn-db-container: This part gives a name to the running container.
    customer-churn-db-docker: And this specifies the image name.

### Accessing Jupyter Lab

Open a web browser and go to http://localhost:8888 to access Jupyter Lab.
DBeaver Setup
Loading Schema and Dataset

    Open DBeaver.

    Create a New Connection:
        Go to Database > New Database Connection.
        Select PostgreSQL and click Next.

    Configure Connection Settings:
        Host: localhost
        Port: 5432
        Database: postgres
        User: postgres
        Password: postgres

    Click Finish to create the connection.

    Load Schema and Dataset:
        Use the SQL editor to run SQL scripts that create and populate the schema.

### Jupyter Lab

    !pip install sqlalchemy==2.0.22
    !pip install matplotlib
    !pip install seaborn