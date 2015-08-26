module StaticPagesHelper
  def secretariat_officers
    @secretariat_offs = exec_cos.merge(usg).merge(director)
  end

  def exec_cos
    @executive_chief_of_staff_names = {"varsha" =>    {title: "Secretary General",
                                      picture: "secretariat/varsha.jpg",
                                      name: "Varsha Venkatasubramanian"},
                        "raymond" =>   {title: "Deputy Secretary General",
                                      picture: "secretariat/raymond.jpg",
                                      name: "Raymond King"},
                        "samed" =>     {title: "Chief of Staff - External",
                                      picture: "secretariat/samed.jpg",
                                      name: "Samed Jain"},
                        "beckett" =>   {title: "Chief of Staff - Internal",
                                      picture: "secretariat/beckett.jpg",
                                      name: "Beckett Kelly"},
                        "tim" =>       {title: "Chief of Staff - Product",
                                      picture: "secretariat/tim.jpg",
                                      name: "Timothy Guan"}
                        }
  end

  def director
    @directors_names = {"antoine" =>    {title: "Director of Outreach",
                                      picture: "secretariat/antoine.jpg",
                                      name: "Antoine Bichara"},
                        "kevin" =>   {title: "Director of Business Relations",
                                      picture: "secretariat/kevin.jpg",
                                      name: "Kevin Bai"},
                        "hassan" =>   {title: "Director of Business Relations",
                                      picture: "secretariat/hassan.jpg",
                                      name: "Muhammad Hassan Ayub"},
                        "mariam" =>   {title: "Director of Programming",
                                      picture: "secretariat/mariam.jpg",
                                      name: "Mariam El-Magrissy"},
                        "steven" =>   {title: "Director of Technology",
                                      picture: "secretariat/steven.jpg",
                                      name: "Steven Chen"}
                        }
  end

  def usg
    @usgs_names = {"roya" =>    {title: "USG of Crisis",
                                      picture: "secretariat/roya.jpg",
                                      name: "Roya Azarkeyvan"},
                        "patrick" =>   {title: "USG of Joint Crisis",
                                      picture: "secretariat/patrick.jpg",
                                      name: "Patrick Babajanian"},
                        "miriam" =>   {title: "USG of Specialized Bodies",
                                      picture: "secretariat/miriam.jpg",
                                      name: "Miraim Arghavani"}
                      }
  end

  def attractions_list
    @attractions = {"academy" =>      {name: "California Academy of Sciences",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""},
                    "alcatraz" =>       {name: "Alcatraz Island",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "angel"   =>        {name: "Angel Island",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "aquarium"   =>        {name: "Aquarium of the Bay",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "coittower"   =>        {name: "Coit Tower",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "embarcadero"   =>        {name: "Embarcadero",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "exploratorium"   =>        {name: "Exploratorium",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "fishermans"   =>        {name: "Fisherman's Wharf",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "ghiradelli"   =>        {name: "Ghiradelli's Square",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "goldenbridge"   =>        {name: "Golden Gate Bridge",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "goldenpark"   =>        {name: "Golden Gate Park",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "lombard"   =>        {name: "Lombard Street",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "museum"   =>        {name: "De Young Museum",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "powell"   =>        {name: "Powell Street",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "presidio"   =>        {name: "The Presidio",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    },
                    "twinpeaks"   =>        {name: "Twin Peaks",
                                        description: "",
                                        hours: "",
                                        price: "",
                                        location: "",
                                        website: ""
                    }
    }
  end

  def load_schedule
    @thursday_schedule = [
      {name: "Registration", time: "3:30pm - 6:15pm"},
      {name: "Model UN 101", time: "4:30pm - 6:00pm"},
      {name: "Opening Ceremonies", time: "6:30pm - 7:30pm"},
      {name: "Committee Session I", time: "7:45pm - 9:45pm"},
      {name: "Committee Feedback for Head Delegates", time: "10:00pm - 10:30pm"},
      {name: "Bear Crawl", time: "10:45pm onwards"}
    ]

    @friday_schedule = [
      {name: "San Fracisco Tours", time: "8:30am - 12:00pm"},
      {name: "Committee Session II", time: "1:00pm - 5:00pm"},
      {name: "Advisor Feedback Forum", time: "3:00pm - 3:30pm"},
      {name: "Dinner", time: "5:00pm - 6:00pm"},
      {name: "Committee Session III", time: "6:30pm - 9:30pm"},
      {name: "Committee Feedback for Head Delegates", time: "9:45pm - 10:15pm"},
      {name: "Jazz Night", time: "10:30pm - 1:00am"}
    ]

    @saturday_schedule = [
      {name: "Committee Session IV", time: "10:00am - 1:00pm"},
      {name: "Advisor Feedback Forum", time: "11:30am - 12:00pm"},
      {name: "Committee Feedback for Head Delegates", time: "1:15pm - 1:45pm"},
      {name: "Lunch", time: "1:00pm - 3:00pm"},
      {name: "Committee Session V", time: "3:00pm - 7:00pm"},
      {name: "Delegate Soiree", time: "10:00pm - 2:00pm"}
    ]

    @sunday_schedule = [
      {name: "Closing Ceremonies", time: "10:00am - 12:00pm"}
    ]
  end

  def load_sbs
    @sbs = {
      "wsf" => {name: "World Social Forum: Another World is Possible!",
                type: "Specialized Body",
                description: "The World Social Forum (WSF) is a gathering of activists, intellectuals, community organizers, and people from all walks of life united by a dream – the dream of a better world for all. Since the first WSF in 2001 in Porto Alegre, the forum has stood for a world in which human beings and nature are considered the ultimate concern for politics and society, not capital. The WSF strives for a world distant from a capital focused, militarized and neo-liberally globalized world.
          \n As stated in the forum’s charter it is an open space for dialogue, reflective thinking, and the formation of proposals. It does not aim to be a body representing civil society nor does it aim to steer the global struggle for a better world. It is an event free from the constricting forces of UN bureaucracy and top-down fixed agendas. It is a safe and open space where you, the participants, will share, learn, dream, and create together. ",
                chair: {name: "Anton Wideroth", email: ""}
              },
      "nfl" => {name: "2016 NFL Owners Meeting",
                type: "Specialized Body",
                description: "America’s most popular sport finally comes to UCBMUN as delegates from around the nation come together in this 2016 NFL Owners Meeting Committee! Commissioner Roger Goodell has called the owners of all 32 NFL franchises to debate some of the most pressing and controversial topics facing the National Football League: head-related injuries, domestic violence in the NFL, cheerleaders in the NFL, the NFL’s drug policy, the Washington Redskins’ name, relocation to Los Angeles, changing the NFL schedule and so much more! And upon special invitation, this committee will also feature three representatives from labor unions such as the NFL Players Association (NFLPA) to ensure that the employees of the NFL have their voices heard.
        \n This committee is designed not to address one or two topics in great depth but rather to explore a large number of issues the National Football League faces today. Such topics are very different from one another, representing the ubiquitous impact professional football has on business, politics and American culture. All delegates, from the experienced veteran to the 'just starting out' neophyte, are welcome to participate in this committee (as long as they have an undying love for American football). Furthermore, in this committee your delegates can expect an entirely unique MUN experience. While the committee will operate under the standard Specialized Body committee framework, this one-of-a-kind committee will also incorporate modified crisis updates that will truly simulate the urgency under which the NFL leadership operates. The committee's fast-paced and crazy fun debate is one MUN experience delegates will never forget.",
                chair: {name: "Keenu Malik", email: ""}
              },
      "legal" => {name: "Legal Committee: European Court of Human Rights",
                  type: "Specialized Body",
                  description: "Proselytism, nationality, and freedom – oh my! Perhaps those were not the things Dorothy envisioned upon entering the woods, but they are indeed things that the Legal Committee of this year’s UCBMUN will be debating on. This year’s Legal Committee takes place at the European Court of Human Rights (ECHR), an international court based in Strasbourg, France that was established by the European Convention on Human Rights. The ECHR regularly hears cases that concern a state violating one or more human rights that were outlined in the Convention. This year, the ECHR will be debating and ruling on two exciting cases: Larissis and Others vs. Greece, and Petropavlovskis v. Latvia. While Legal Committee never guarantees straightforward rulings on the cases that are presented, we can always count on spirited and fiery debate from our delegates, and we are very excited to see the arguments that will take place with this year’s cases.",
                  chair: {name: "Wendie Yeung", email: ""},
                  cd: {name: "Anthony Miller", email: ""}
                },
      "disec" => {name: "DISEC: Disarmament and International Security",
                  type: "Specialized Body",
                  description: "The primary aim of the Disarmament and International Security Committee is to ensure that the international community gains security and peace. In order to achieve this goal, UCBMUN’s DISEC committee is focused on confronting terrorism in Pakistan.
        \n  Terrorism in Pakistan is one of the most critical issues concerning not only the country itself but also the International Community as a whole. It is only a matter of time before the terrorist groups, which have occupied the Northern parts of Pakistan, move to the hub of the country and severely hamper political and economic growth and development. The recent attack on an army high school in Peshawar, which resulted in the loss of hundreds of innocent lives, coupled with the attacks on the Srilankan National team on their visit to Pakistan for a tournament, has put the country in a state of turmoil and immense depression. A number of questions have been raised. Are the religious extremist groups independent groups like the Taliban, or are they being sponsored from an unknown source? Whatever the case may be, what approach should Pakistan and the International Community as a whole take in order to eradicate terrorism from the country? We also should not overlook the fact that Pakistan is a nuclear power and if the terrorist acquire these nuclear weapons, then the threat from these groups moves beyond Pakistan to the entire world.
\n Thus, it is of prime importance that this issue is seriously addressed and viable measures are suggested to improve the situation in the country. Delegates in DISEC are urged to enact creative, effective solutions towards this problem in order to restore peace and stability. ",
                  chair: {name: "Hassan Ayub", email: ""}
                },
      "specpol" => {name: "General Assembly: The Special Political and Decolonization Committee ",
                    type: "Specialized Body",
                    description: "SPECPOL, or the Special Political and Decolonization Committee, occupies a very distinct niche in the host of United Nations committees and bodies. With a looser agenda than most specialized bodies, this committee’s mission statement is to address issues that range from universal peacekeeping and human rights violations to mining, space, and atomic disputes. This year, the committee will be addressing the issues of Preventing Mass Atrocities in Areas of Conflict and Property Rights in Outer Space. The two topics of this year’s SPECPOL have gained a space on the tight agenda due to their increased relevance in modern-day political forums, and will require an intensive and highly meticulous approach to resolve. The nature of SPECPOL is not trivial; this is a body that works in concert with the Security Council and the World Trade Organization to enforce its passed resolutions. Delegates should consequently enter SPECPOL with the weight of their nation’s objectives on their shoulders, but more importantly, with the knowledge that they each individually form a component of an international governing mechanism.",
                    chair: {name: "Mariam El-Magrissy", email: ""}
                  }
    }
  end

  def load_crises
    @crises = {
        "adhoc" => {name: "Ad Hoc",
                    type: "Crisis",
                    description: "The Ad-Hoc Committee of the Secretary-General is the flagship committee of UCBMUN.
                          Seeking to challenge experienced delegates, high quality debate is expected from this application-based committee.
                          Although the committee topic will only be disclosed a week before conference, we can describe the nature of the challenge before you. With fast-paced crises and
                          constantly shifting circumstances, the Ad-Hoc promises to be unconventional and
                          highly memorable. Diplomacy, leadership, creativity, and copious amounts of crisis notes are expected. Come prepared - critical decisions await you.
                          As there’s little else we can reveal until March, we encourage you to ponder the words of John Stuart Mill:
                          'War is an ugly thing, but not the ugliest of things …  The decayed and degraded state of moral and patriotic feeling which thinks that nothing is worth war is much
                          worse. The person who has nothing for which he is willing to fight… is a miserable
                          creature and has no chance of being free unless made and kept so by the exertions of better men than himself.'",
                    chair: {name: "Lorenzo Galdon Ramos", email: ""},
                    cd: {name: "Grayson Dimick", email: ""},
                  },
        "tang" => {name: "A Clash of Three Kingdoms: The Battle at the Red Cliffs",
                   type: "Crisis",
                   description: "The year is 208 AD, and the warlords of China are hell-bent on seizing the emperor’s throne. The Eastern Han dynasty has collapsed. The fearsome Cao Cao has already taken over the southern province of Jingzhou, and he is set on unifying China under his control. To the South, two more formidable forces await Cao Cao’s inevitable advance. On one side, Liu Bei rules over his Kingdom of Shu. On the other, Sun Quan and the Kingdom of Wu. From each of these factions emerges a series of great warriors and heroes. China is a powder keg ready to explode as the three kingdoms prepare to clash in the Battle of Red Cliffs. This battle’s outcome will determine the future of the Three Kingdoms. Delegates, the destiny of China rests in your hands.",
                   chair: {name: "Timothy Guan", email: ""},
                   cd: {name: "Aric Chang", email: ""}
                 },
        "obama" => {name: "Obama Unleashed or Rejected: The Cabinet of the Presidency of the United States",
                    type: "Crisis",
                    description: "President Obama’s cabinet will be tasked with a variety of short and long-term challenges throughout the course of the committee. From averting violent conflict with the Iran Nuclear Deal, to navigating the war campaign against ISIS, and handling Russian expansion into Ukraine, the diverse group of individuals that makes up the executive advisory board council will have no room for the squeamish. Equally important will be improving education, creating effective legislation to tackle climate change, and addressing the ongoing issues of historically marginalized groups like women, immigrants, and the LGBT community. This committee, however, is about more than just passing directives, delegates will need to also negotiate with outside governments, handle a variety of calamitous crises, and deal with the consequences of their choices. So what will it be: Obama unleashed or rejected? ",
                    chair: {name: "Rahim Daya", email: ""},
                    cd: {name: "Ish Farooqui", email: ""}
                  },
        "darkweb" => {name: "Conquering the Web: Industry, Government and the Dark Net",
                      type: "Crisis",
                      description: "With new technological paradigms come novel opportunities and challenges for industry and government alike. Fast-forward to 2025. A unified international legal body has failed to regulate the Internet and Dark Web, which has continued growing at a geometric rate. Consequently the Dark Web has become a new frontier, a new Wild West, where international corporations have waged an economic war, vying for power in this new unregulated space and across the globe. In this economic war, one particularly fierce industry has been biotech, and rapidly growing and changing systems of alliances have formed to maximize odds of success, fighting on both legal and legally questionable fronts. In this committee the major biotech companies and government regulators are meeting to discuss appropriate international regulation on the Dark Web and Internet, with obviously conflicting interests. Who will conquer this new frontier? Will this space become regulated, or will international monopolies form? It is up to you.",
                      chair: {name: "Bhavna Gopal", email: ""},
                      cd: {name: "Steven Elleman", email: ""}
                    },
        "pilate" => {name: "Rome’s Forgotten Colony: Pontius Pilate and the Divisions of Judaea",
                     type: "Crisis",
                     description: "It is a glorious time for the Roman Empire. Already holding the Mediterranean Sea, Tiberius Caesar’s reach seems unstoppable, stretching further in all directions. Internally, Rome sees a period of unprecedented peace and economic prosperity­­ yet all is threatened by a single, seemingly insignificant colony. Although it’s one of the smallest territories, Judaea perpetuates a state of constant turmoil and rebellion, its stubborn and fervently devout people resisting the authority of its governor, Pontius Pilate, at every turn. Not just political, but religious upheavals plague the land as well, as ancient traditions are broken, kings are forsaken, and rumors of a savior are circulated in the countryside. From his seat in Jerusalem, Pilate faces a city on the brink­­ not just of rebellion, but of revolution. His pleas for help are ignored by Caesar, so he must turn to the city and its leaders for help. Will he manage to achieve peace for the land destined to become one of the most contested holy territories in the world? Or will he be overpowered by a proud people, desperate for their own king?",
                     chair: {name: "Alice Ma", email: ""},
                     cd: {name: "Allie Gordon", email: ""}
                   },
        "colombia" => {name: "Civil War: Colombia",
                       type: "Crisis",
                       description: "Coming soon!",
                       chair: {name: "Camilo Ossa", email: ""},
                       cd: {name: "Ryan Avery", email: ""}
                     },
        "marcos" => {name: "The Rolex 12: Marcos' Phillipines under Martial Law",
                     type: "Crisis",
                     description: "From 1972 to 1981, Philippine President Ferdinand Marcos ruled under a declaration of martial law. He and his cabinet had absolute control over the country. Opposition leaders were jailed or killed, and dissent was crushed. The twelve advisors in Marcos’ inner circle that helped guide this regime were all rumored to have been given Rolex watches as a sign of their inclusion in the elite circle of Filipino politics. They became known as the Rolex 12.
                     \n The 1970s were a tumultuous in the Philippines. Communist and Leftist movements were rising in membership, terrorism and violence began to become an everyday event. Simultaneously, President Ferdinand Marcos was to be term-limited in 1973. A plan was hatched. As early as 1970, Marcos began meeting with top advisors to devise a plan that would allow for Marcos to stay in power, for Leftist dissidents to be crushed, and for the Rolex 12 to build a new Philippines.
                     \n On August 21st, 1972, a rally of the Liberal Party was held at the Plaza Miranda in Manila. In the middle of the rally, two hand grenades were tossed on stage, killing 9 and injuring 95. While no perpetrators were identified, blame conveniently fell on Communist rebels. This was the first of two false flags that would set the plan in motion. In September of 1972, Marcos agents shot up Secretary of Defense Juan Ponce Enrile’s car. “Luckily” Secretary Enrile was riding in the backup security vehicle. Using these two events and the countrywide discord as pretext, Marcos issued Presidential Proclamation 1081, establishing martial law throughout the country, and suspending the constitution.
                     \n The Philippines are at a turning point. Violence and discord proliferate. An anemic economy keeps millions in poverty. Increasingly militant Muslims organize in Mindanao. All the while, the Philippines are still searching for its place in the Cold War world.",
                     chair: {name: "Disha Subramaniam", email: ""},
                     cd: {name: "Austin Weinstein", email: ""}
                   },
        "unsc" => {name: "UN Security Council: India and Pakistan in 1947",
                   type: "Crisis",
                   description: "Coming soon!",
                   chair: {name: "Divit Sood", email: ""},
                   cd: {name: "Rajit Kinra", email: ""}
                 },

        "wikileaks" => {name: "Wikileaks: Cyberwarfare is now.",
                        type: "Crisis",
                        description: "Delegates will be in charge of a specific portfolio within the Wikileaks agency, and all of them will be equal in power. Each delegate will have their own informants, moles within organisations, hackers at their service, etc. The truths they will uncover and the choices they will make may change the course of history, and threaten the world's peace by publicising information that would be better left unknown. When spying and counter-spying are a baseline expectation from everyone, only the most skilled will go under the radar and survive. Delegates' resolve at knowing what's right and what's wrong will be crucial; when an information they have can cause wars, and when their skills can make them billionaires at will, only the strongest will live.",
                        chair: {name: "Vaibhav Srikaran", email: ""},
                        cd: {name: "[Redacted]", email: ""}
                        }
    }
  end

  def load_jcc
    @jcc = {}
  end 

end
