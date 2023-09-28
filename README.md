The objective of the current project is to explore a simple application of Airflow within a machine learning pipeline, leveraging a project developed by Priyank Sanghvi published in Kaggle website [link](https://www.kaggle.com/code/priyanksanghvitech/satellite-image-classification-using-cnn). The ML project's primary goal is to train and test a Convolutional Neural Netwrok (CNN) model for classify satellite images using Pytorch. In this context, I delve into Airflow functionalities, such as Connections and Hooks, as well as utilize other Python libraries and tecnologies, such as PostgreSQL, AWS' Simple Storage System (S3), Metabase and Docker containers. Additionally, I briefly explore the utilization of GPU by PyTorch within a container.

PyTorch can't exploit parallelism and multithreading for data processing through of its DataLoader workers because Airflow also uses these features, creating a conflict between these two libraries. To prevent the competition for system resources and unpredictable behaviour, the number of workers for DataLoaders is set to 0, disabling multiprocessing for PyTorch. The only way to allow PyTorch use multiprocessing is to treat PyTorch as as an external sevice, similar to how PostgreSQL is integrated with Airflow. This is why TorchX, a universal job laucher for PyTorch applications, is better suited to Kubernetes, a container orchestration system.

To enable the usage of a GPU inside a container, the [Nvidia Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html) must  be installed.