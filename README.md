# dnmp
Docker deploying Nginx MySQL PHP7 in one key, support full feature functions.

Frok from https://github.com/yeszao/dnmp

![Demo Image](./dnmp.png)

### Feature
1. Completely open source.
2. Support Multiple PHP version(PHP5.4, PHP5.6, PHP7.2) switch.
3. Support Multiple domains.
4. Support HTTPS and HTTP/2.
5. PHP source located in host.
6. MySQL data directory in host.
7. All conf files located in host.
8. All log files located in host.
9. Built-in PHP extensions install commands.
10. Promise 100% available.
11. Supported any OS with docker.

### Usage
1. Install `git`, `docker` and `docker-compose`;
	```
	yum update
	yum install git
	yum install docker
	yum install python-pip
	pip uninstall docker-compose
	pip install docker-compose
	```
2. Clone project:
    ```
    $ git clone https://github.com/yeszao/dnmp.git
    ```
3. Start docker containers:
    ```
    $ docker-compose up
    ```
    You may need use `sudo` before this command in Linux.
4. Go to your browser and type `localhost`, you will see:

5. XShell 使用rz/sz命令 
    ```
    yum install -y lrzsz
    ```
6. 其实可以执行./shell文件夹下的sh文件构建 ,记得chmod +x ./xxx.sh文件

7. 然后把当前用户加到docker用户组里面：$ sudo gpasswd -a ${USER} docker ,就不用每次启动Docker都得加sudo了

8. Docker PHP Composer 容器使用
   ```
    Run Composer through the Composer container:
        $ docker run --rm -v $(pwd):/app composer/composer install
    
    Or run using a specific version of Composer:
        $ docker run --rm -v $(pwd):/app composer/composer:1.1 install
    
    If working with packages installed via git ssh the local .ssh directory shall be mapped into the container:
        $ docker run --rm -v $(pwd):/app -v ~/.ssh:/root/.ssh composer/composer install
   ```
9. Composer使用: docker run -it -v $PWD:/app composer['composer'为容器名] (已经为镜像创建工作目录/app)

10. NPM,NODE使用：docker run -it -v $PWD:/app goular/node node -v    (已经为镜像创建工作目录/app)
   
11. 如何更新，只需要使用git pull，完成后再/drnmp文件夹下执行docker-compose build即可

12. 由于jenkins牵涉了很多的基于root的操作，所以不集成在这个docker-compose项目中
   
![Demo Image](./snapshot.png)

The index file is located in `./www/site1/`.

### Other PHP version?
Default, we start LATEST PHP version by using:
```
$ docker-compose up
```
we can also start PHP5.4 or PHP5.6 by using:
```
$ docker-compose -f docker-compose54.yml up
$ docker-compose -f docker-compose56.yml up
```
We need not change any other files, such as nginx config file or php.ini, everything will work fine in current environment (except code compatibility error).

> Notice: We can only start one php version, for they using same port. We must STOP the running project then START the other one.

### HTTPS and HTTP/2
Default demo include 2 sites:
* http://www.site1.com  (use HTTP1.1)
* https://www.site2.com (use HTTPS)

To preview them, add 2 lines to your hosts file (at `/etc/hosts` on Linux and `C:\Windows\System32\drivers\etc\hosts` on Windows):
```
127.0.0.1 www.site1.com
127.0.0.1 www.site2.com
```
Then you can visit from browser.
