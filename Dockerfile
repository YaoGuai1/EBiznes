FROM ubuntu:18.04

RUN apt update && apt-get upgrade -y
RUN apt install openjdk-8-jdk -y
RUN apt-get install wget dpkg -y
RUN apt-get install npm -y
RUN wget https://downloads.lightbend.com/scala/2.12.0/scala-2.12.0.deb
RUN dpkg -i scala-2.12.0.deb

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get install curl -y
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
RUN apt-get install sbt -y

RUN useradd -ms /bin/bash rafalkuzma
RUN adduser rafalkuzma sudo

EXPOSE 8888

USER rafalkuzma
WORKDIR /home/rafalkuzma
RUN mkdir /home/rafalkuzma/projekt

VOLUME /home/rafalkuzma/projekt


1000 - 50% * 1000 = 500
500 - 50% * 500 = 250
250 + 20% * 250 = 300



w datagramie:
Kompozyt - groupElem ma Host  Nety i subgrupy - rekurencyjnie zbiera wszystko z grup i subgrup - atrukturalne
Chain of responsibility - po kolei sprawdzamy Adressy, Protokół i Flagi - behawioralne
State - do matchowania hostów - końcowe które nie robią - behawioralny

W swarmie:
Singleton - tworzenie jednej instancji AgentService żeby był tylko pojedyńcza instancja optimizationProblem i modelConstans - dla bezpieczeństwa   - kreacyjny
Strategia - stategia czy ruszamy się randomowo czy do sąsiada - behawioralne
State - normalizacja ruchu przez stepsize i przez krańce tak długo aż bedzie AdjustedbyBorder - behawioralny 
Dekorator - Znajdowanie sąsiadów - strukturalny 


12. changelog jest pewnego rodzaju sposobem komentowania kodu - zmian jakie w nim zaszły 
18. Moim zdaniem jako tester uważam że na podstawie ilości błędów nie możemy stwierdzić jak dobry był proces testowania - błędy mogły nie zostać jeszcze naprawione lub sama aplikacja jest dużo bardziej spkomplikowana niż druga przez co nawet mimo znacznie lepszego procesu testowania aplikacja w dalszym ciągu zachowuje się gorzej.
21. Moja odpowiedź to "tak" gdyż może mieć wiele bloków warunków i try-catchy
38. Moim zdaniem testy jako cały proces powinny i są odpalane w wielu krokach - oddzielnie testy jednostkowe, oddzielne testy np: backendu i frontendu, oddzielnie UAT itd. Nawet na tym samym poziomie np: testów integracyjnych podczas buildu początkowo odpalane są smoke testy aby jak najszybciej wyłapać błędy krytyczne a dopiero następnie uruchamiana jest reszta testów automatycznyc integracyjnych.
39. W tym przyadku także zaznaczyłęm odpowiedź, że można, ale moim zdaniem nie należy rezygnować z testów automatycznych. Zawsze testy automatyczne są wartością dodaną do dowolnego projektu nie ważne o jakiej złożoności. Skracają chociażby proces regresji przy jakichkolwiek zmianach np: przy refaktoryzacji.
41. Na podstawie jednego ze slajdów z Pana wykładów, stwierdziłem że w takim przypadku klasa abstakcyjna może być zaimplementowana jako interface, ale nie musi (tak zrozumiałem słowo "powinna") gdyż różnic między klasą abstrakcyjną a interface jest wiele a użycie zależne jest od naszych potrzeb i nie zależy tylko od tego czy metody będą miały implementację czy nie.
49. Zaznaczyłęm odpowiedź tak, gdyż wysyłaliśmy Panu naszą pełną implementację. Nie wiem jednak czy testował to Pan znając i odnosząc się do implementacji czy nie. Założyłem że wysyłając nasz kod miał Pan taką możliwość stąd odpowiedź "tak"
86. Wzorce pomagają w reużywalności kodu stąd moja odpowiedź
