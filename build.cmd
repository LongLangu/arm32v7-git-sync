docker build -t arm32v7/git-sync ./

docker tag arm32v7/git-sync ghcr.io/longlangu/arm32v7/git-sync:%1

docker push ghcr.io/longlangu/arm32v7/git-sync:%1

docker rmi ghcr.io/longlangu/arm32v7/git-sync:%1

docker rmi arm32v7/git-sync