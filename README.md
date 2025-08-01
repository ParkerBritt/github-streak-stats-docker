<h1 align="center">Github Streak Stats Docker</h1>

<div align="center">
<img src="https://parkerbritt.com/badge?label=docker&icon=docker&color=2496ED">
<img src="https://parkerbritt.com/badge?label=podman&icon=podman&color=892CA0">
</div>

<br>
<div align="center">
A Docker/Podman config for self hosting the <a href="https://github.com/DenverCoder1/github-readme-streak-stats">GitHub Readme Streak Stats</a> project.
</div>

<h2>Installation</h2>

Clone the repository
```sh
git clone https://github.com/ParkerBritt/github-streak-stats-docker.git
```

Enter the folder
```sh
cd github-streak-stats-docker
```

Copy and edit the .env file  
Set the token to your [github personal access token](https://www.geeksforgeeks.org/git/how-to-generate-personal-access-token-in-github/) and optionally change the app port to whatever you want
```sh
cp .env.example .env
```

Start the container
```sh
docker-compose up -d
```

You can now access the website in your browser at
```
localhost:8000
```
> replace 8000 with the app port you set in the .env file

After installation I recommend setting it up with a reverse proxy and port forwarding to access it from anywhere.
