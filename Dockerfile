FROM openjdk:8-jre
ENV SPIGOT_REVISION=1.16.5
ENV SPIGOT_PORT=25565
WORKDIR /spigot
RUN apt-get update && \
    apt-get install -y wget && \
    wget "https://cdn.getbukkit.org/spigot/spigot-${SPIGOT_REVISION}.jar"
EXPOSE 25565
CMD java -Dcom.mojang.eula.agree=true -DIReallyKnowWhatIAmDoingISwear -Dport=$SPIGOT_PORT -jar "spigot-${SPIGOT_REVISION}.jar"
