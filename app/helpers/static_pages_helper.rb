module StaticPagesHelper
  def secretariat_officers
    @secretariat_offs = exec_cos.merge(usg).merge(director)
  end

  def exec_cos
    @executive_chief_of_staff_names = {"varsha" =>    {title: "Secretary General",
                                      picture: "secretariat/varsha.jpg",
                                      name: "Varsha Venkatasubramanian",
                                      bio: "Varsha is a senior at Cal majoring in History and Economics. Originally from Jamshedpur, India, Varsha has spent the last 17 years in the United States. During that time she has attended 9 different schools in 5 different states. She recently completed her history thesis on Margaret Thatcher’s education policies in the late 80s. Varsha hopes to attend a PhD program in history, and eventually write a book. As for her hobbies, Varsha enjoys collecting more books than she has time to read, folding tiny tiny little paper cranes, and camping. She has staffed 3 previous UCBMUN conferences, and last year she was the Chief of Staff-External. As Secretary General, Varsha is extremely excited about bringing together MUN programs from across the country, building high quality committees, and ending her final year with UCBMUN with a bang!"},
                        "raymond" =>   {title: "Deputy Secretary General",
                                      picture: "secretariat/raymond.jpg",
                                      name: "Raymond King",
                                      bio: "Raymond is a third year at Cal, studying City and Regional Planning and Political Economy. Having grown up in Thailand running and attending MUN conferences, he thought it would be a great idea to dedicate even more time in college to the pursuit! He's attended 6 away conferences to date, including at Harvard, UChicago, Columbia, and UCLA, so holla if you ever see him on the circuit! In addition, Raymond works at UC Berkeley's Blum Center for Developing Economies, tying into his interests in economic policy and development. As Deputy Secretary General, Raymond is ecstatic to witness groundbreaking debate and cutthroat crisis strategies at UCBMUN XX!"},
                        "beckett" =>   {title: "Chief of Staff - Internal",
                                      picture: "secretariat/beckett.jpg",
                                      bio: "Beckett is a junior here at UC Berkeley looking to major in Political Science and minor in Public policy. When not competing or working on Model UN, he is often watching Netflix. A fun fact about Beckett is that he used to be a police explorer and he worked for the Institute for Government Studies on UC Berkeley’s campus.",
                                      name: "Beckett Kelly"},
                        "samed" =>     {title: "Co-Chief of Staff - External",
                                      picture: "secretariat/samed.jpg",
                                      name: "Samed Jain",
                                      bio: "Samed Jain is a Junior at UC Berkeley, majoring in Economics and Political Science. He has been involved with MUN for 5 years now. In addition to handling external matters of the conference, he is also part of the traveling team at Berkeley. He is extremely passionate about Economics, South Asian politics and food. Don't hesitate to reach out to him if you have any questions regarding registration or about the conference in general. He looks forward to an exciting conference, with enjoyable committees, stimulating debate and most of all, a great time for everyone coming to UCBMUN XX."},

                        "antoine" =>    {title: "Co-Chief of Staff - External",
                                                          picture: "secretariat/antoine.jpg",
                                                          name: "Antoine Bichara",
                                                          bio: "Antoine is a senior at UC Berkeley majoring in Physics. He has German/U.S. dual citizenship and spent the past semester studying abroad at the Technical University of Berlin. Besides spending time in the lab, he enjoys delving into his wide range of interests including engineering and international relations. A fun fact is that he follows several European soccer leagues very closely and supports FC Bayern München."},

                        "tim" =>       {title: "Chief of Staff - Product",
                                      picture: "secretariat/tim.jpg",
                                      name: "Timothy Guan",
                                      bio: "Tim is a junior at UC Berkeley majoring in Cognitive Science and Biochemistry and minoring in Computer Science. This is his ninth year doing MUN. Tim went to high school in Shanghai, China, but has spent most of his life in New Jersey. As Chief of Staff - Product, he is excited to deliver an unforgettable conference experience for delegates. Through his experiences staffing the JCC, chairing a crisis committee, and acting as Director of Media and Communications, Tim has been delighted to see UCBMUN grow. When he’s not participating in MUN, you can find him cloning, coding, obsessing over gastronomy, or bemoaning the neoliberal regime."}
                        }
  end

  def director
    @directors_names = {"kevin" =>   {title: "Director of Business Relations",
                                      picture: "secretariat/kevin.jpg",
                                      name: "Kevin Bai",
                                      bio: "Kevin is a sophomore majoring in Environmental Economics and Policy, this is his fourth year doing Model United Nations but he has been engaged with the international community for much longer.  Kevin has worked in 4 countries across 3 continents in 5 different industries. They are the environmental, automotive, entertainment, healthcare and technology, in chronological order.  He has an insatiable love of languages and currently speaks Mandarin, English, Spanish and French and is learning Arabic, Kevin plans to speak all 6 official languages of the United Nations before he graduates.  In his free time, Kevin likes to read and run, he ran 3 half marathons the summer of 2015 and plans on running a full marathon before the year is up.  In the future, Kevin would like to found and run his own Non Governmental Organization.  Additionally, he can and will talk about any subject for any length at any volume, you’ve been warned."},
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
                                      name: "Roya Azarkeyvan",
                                      bio: "Roya is a junior at UC Berkeley majoring in Political Economy with a minor in Public Policy. Growing up as a first generation Iranian-American, Roya recently found herself feeling liberated of her once-complicated hyphenated identity thanks to a nuclear deal between the U.S. and Iran. That being said, she is by no means endorsing it as a “good” deal. As for trivialities, she maintains a pretty bad habit of apologizing too much and often finds herself soliciting members of UCBMUN for hugs and cuddles - amongst all other forms of affection. Roya previously staffed UCBMUNC’s first ever Ad-Hoc committee and has also served as a Crisis Director for the Reign of Terror committee. As the USG of Crisis, she looks forward to the high powered committees and mind-blowing socials that are both bound to make this year’s UCBMUN unforgettable!"},
                        "patrick" =>   {title: "USG of Joint Crisis",
                                      picture: "secretariat/patrick.jpg",
                                      name: "Patrick Babajanian",
                                      bio: "Patrick is a junior at UC Berkeley majoring in Peace and Conflict Studies and intending on minoring in History and Russian. Besides MUN, he is involved with other groups on campus such as Amnesty International, Habitat for Humanity, the Troika Journal, the Cal Fencing Club, and the UC Berkeley Armenian Student Association. Some fun facts about Patrick are that he he loves to act, plans world conquest (true to his passion for Crisis Committees), and was once mistaken as the defendant in a criminal trial until the prosecutor realized he was actually just an intern."},
                        "miriam" =>   {title: "USG of Specialized Bodies",
                                      picture: "secretariat/miriam.jpg",
                                      name: "Miriam Arghavani"}
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
      {name: "San Francisco Tours", time: "8:30am - 12:00pm"},
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
      "wsf" => {name: "World Social Forum:",
                subtitle: "Another World is Possible!",
                type: "Specialized Body",
                description: ["The World Social Forum (WSF) is a gathering of activists, intellectuals, community organizers, and people from all walks of life united by a dream – the dream of a better world for all. Since the first WSF in 2001 in Porto Alegre, the forum has stood for a world in which human beings and nature are considered the ultimate concern for politics and society, not capital. The WSF strives for a world distant from a capital focused, militarized and neo-liberally globalized world.",
          "As stated in the forum’s charter it is an open space for dialogue, reflective thinking, and the formation of proposals. It does not aim to be a body representing civil society nor does it aim to steer the global struggle for a better world. It is an event free from the constricting forces of UN bureaucracy and top-down fixed agendas. It is a safe and open space where you, the participants, will share, learn, dream, and create together. "],
                chair: {name: "Anton Wideroth", email: "wsf@ucbmun.org"},
                chair_letter: ["Dear Social Movement Representatives,", "Welcome to a committee without unnecessary UN bureaucracy, without P-5

power play and without voting bloc, a committee in which you, the people, will get

your voice heard and together create a more beautiful world.  Welcome to the

World Social Forum 2016, Montreal.", "My name is Anton Wideroth and I will act as your chair for this exciting and

unique committee. I am a senior studying Political Economy with a concentration

in the political and economic development of South East Asia and a minor in

Peace and Conflict Studies. I originate from the utopia or socialist wasteland

(depending on who you ask), called Sweden, but have also lived in Japan and

now America. Since I joined UCBMUN in my freshman year I have served as

Head Delegate for our travelling team and been an ACD for the Ad-Hoc

committee. Besides MUN and being overly critical about almost anything (which

is pretty much the same as MUN), I’m a person always searching for new

experiences and love things ranging from skiing and mountain biking to

discovering the hidden treasures of new cities. It is from my critical perspective

and search for the not-yet-experienced, that this committee has developed.", "Over the course of the weekend you, as representatives of social movements

around the world, will discuss the Trans-Pacific Partnership – the largest trade

deal in history. This is not only a controversial topic but also an immensely

complicated one. A topic that will motivate you to discover both new theories and

realities, and critically analyze the potential impact of a deal devised in secret

and encompassing 40% of the world economy. To make things even more

interesting, the form of debate will be nothing like your everyday GA, it will be a

simulation of an event that every year draws more than 50,000 participants

around the world and form what some scholars have called one of the most

significant civil and political initiatives of the past century!", "Due to the nature of this committee it is important that you read the following

background guide in detail, especially the “how committee is run chapter”, and

perform your own extensive research. If you at any point have any questions,

please do not hesitate to ask.", "I hope you will enjoy embarking on this new journey with me!", "'Another world is needed. Together, it is possible!'",

"Anton Wideroth, Head Chair"]
              },
      "nfl" => {name: "2016 NFL Owners Meeting",
                type: "Specialized Body",
                description: ["America’s most popular sport finally comes to UCBMUN as delegates from around the nation come together in this 2016 NFL Owners Meeting Committee! Commissioner Roger Goodell has called the owners of all 32 NFL franchises to debate some of the most pressing and controversial topics facing the National Football League: head-related injuries, domestic violence in the NFL, cheerleaders in the NFL, the NFL’s drug policy, the Washington Redskins’ name, relocation to Los Angeles, changing the NFL schedule and so much more! And upon special invitation, this committee will also feature three representatives from labor unions such as the NFL Players Association (NFLPA) to ensure that the employees of the NFL have their voices heard.",
        "This committee is designed not to address one or two topics in great depth but rather to explore a large number of issues the National Football League faces today. Such topics are very different from one another, representing the ubiquitous impact professional football has on business, politics and American culture. All delegates, from the experienced veteran to the 'just starting out' neophyte, are welcome to participate in this committee (as long as they have an undying love for American football). Furthermore, in this committee your delegates can expect an entirely unique MUN experience. While the committee will operate under the standard Specialized Body committee framework, this one-of-a-kind committee will also incorporate modified crisis updates that will truly simulate the urgency under which the NFL leadership operates. The committee's fast-paced and crazy fun debate is one MUN experience delegates will never forget."],
                chair: {name: "Keenu Malik", email: "nfl@ucbmun.org"},
                chair_letter: ["Dear Owners,", "Welcome to the 2016 National Football League (NFL) Owners’ Meeting committee at UCBMUN XX! My name is Keenu Malik and I am honored to serve as this committee’s head chair. A little about myself: I was born in India but I have lived in Michigan for the majority of my life. I am a third year at Cal, double majoring in Industrial Engineering & Operations Research (IEOR) and Economics. This is my sixth year in MUN and my third year serving as a dias member (I chaired the Non-Aligned Movement (NAM) 2015 committee last year for any repeat UCBMUN attendees). Outside of MUN, my interests include cooking Italian food, reading about Greco-Roman and Indian mythology, watching documentaries on Netflix and religiously following Detroit and East Bay sports teams. That being said, I will not allow any delegate to insult the Detroit Lions or Oakland Raiders during the committee. (JK)",
                  "This committee is designed not to address one or two topics in great depth but rather to explore a large number of debate topics the NFL faces today. Such topics, as you will find below, are very different from one another, representing the ubiquitous impact of professional sports in business, politics and culture. With that being said, delegates should expect a fluid and fast-paced committee that will truly simulate the urgency under which the NFL leadership operates. The expectation is that delegates will arrive to committee knowing the major positions of each topic. Delegates need not research any nuanced material regarding the NFL or how it operates (i.e. don’t study the NFL’s gameplay rules). I strongly suggest keeping up to date with NFL news, particularly news specific to your team or organization. And please do message me if you have any questions, comments or concerns regarding the committee.", "Keenu Malik, Head Chair"]
              },
      "legal" => {name: "Legal Committee:",
                  subtitle: "European Court of Human Rights",
                  type: "Specialized Body",
                  description: ["Proselytism, nationality, and freedom – oh my! Perhaps those were not the things Dorothy envisioned upon entering the woods, but they are indeed things that the Legal Committee of this year’s UCBMUN will be debating on. This year’s Legal Committee takes place at the European Court of Human Rights (ECHR), an international court based in Strasbourg, France that was established by the European Convention on Human Rights. The ECHR regularly hears cases that concern a state violating one or more human rights that were outlined in the Convention. This year, the ECHR will be debating and ruling on two exciting cases: Larissis and Others vs. Greece, and Petropavlovskis v. Latvia. While Legal Committee never guarantees straightforward rulings on the cases that are presented, we can always count on spirited and fiery debate from our delegates, and we are very excited to see the arguments that will take place with this year’s cases."],
                  chair: {name: "Wendie Yeung", email: "legal@ucbmun.org"},
                  cd: {name: "Anthony Miller", email: "legal@ucbmun.org"},
                  cd_letter: ["Dear Delegates,", "My name is Anthony Miller and I am thrilled to serve as your Legal Director for UCBMUN XX!  I am currently a senior studying English at UC Berkeley, and am originally from Saint Louis, Missouri, though I most recently lived in Los Angeles.  I became involved in MUN in 2014, when I served as Legal Staff at UCBMUN XIX. Aside from MUN, my interests include checking out record stores in Berkeley, hiking the Fire Trails, and hanging out with friends in Dolores Park. I am an editor of the Comparative Literature Undergraduate Journal and have facilitated a class on drug policy and marijuana reform in California as well. I believe this year’s legal committee will provide delegates thoughtful and provocative debate while allowing for creative interpretation. I look forward to meeting you and hearing how the trial plays out!", "Sincerely,", "Anthony Miller", "Legal Director"],
                  chair_letter: ["Dear Delegates", "It is with great pleasure that I welcome you to the Legal Committee at UCBMUN XX! As UCBMUN is one of the few conferences on the circuit to host a legal committee, your legal director Anthony Miller and I are determined to make this committee as unique, interesting, and argumentative as it has been in previous years and are excited for the legal jargon, passionate speeches and spirited debate that you all will bring to committee. ", "This year’s Legal Committee will take place in the esteemed European Court of Human Rights. The first case the Court will hear is Larissis and Others v. Greece, a highly contentious case that explores the issue of religious freedom in regards to three Air Force officers who are accused of proselytism. The second case is Petropavlovskis v. Latvia, another high-profile and interesting case that concerns a political activist’s freedom of expression and association. As members of the Court, it will be up to you to decide on the interpretations of the statutes outlined in the European Convention on Human Rights and how they apply to these two cases. ", "As for me, my name is Wendie Yeung and I will be your Head Chair. I am a third year Economics major with a minor in Public Policy hailing from the sunny city of Seattle (so yes, I am an unabashedly passionate Seahawks fan and no, we will not speak of this past year’s Super Bowl.) I have been involved in MUN since my freshman year and am currently serving a second term as Secretary of UCBMUN. My other campus involvements include working as a UC Berkeley campus ambassador/tour guide as well as tutoring at the Glenn E. Dyer jail in Oakland.  When I’m not caught up in MUN-related shenanigans, I enjoy traveling, hiking, Yelp-ing, attending to my expansive postcard collection, and studying in Berkeley’s blissful plethora of cafes. ", "I look forward to meeting all of you and hope you are excited for what is sure to be a fun and rewarding conference. Please do not hesitate to reach out to me or Anthony if you ever have any questions or concerns!", "Warm regards,", "Wendie Yeung, Head Chair"]
                },
      "disec" => {name: "DISEC:",
                  subtitle: "Disarmament and International Security",
                  type: "Specialized Body",
                  description: ["The primary aim of the Disarmament and International Security Committee is to ensure that the international community gains security and peace. In order to achieve this goal, UCBMUN’s DISEC committee is focused on confronting terrorism in Pakistan.",
        "Terrorism in Pakistan is one of the most critical issues concerning not only the country itself but also the International Community as a whole. It is only a matter of time before the terrorist groups, which have occupied the Northern parts of Pakistan, move to the hub of the country and severely hamper political and economic growth and development. The recent attack on an army high school in Peshawar, which resulted in the loss of hundreds of innocent lives, coupled with the attacks on the Srilankan National team on their visit to Pakistan for a tournament, has put the country in a state of turmoil and immense depression. A number of questions have been raised. Are the religious extremist groups independent groups like the Taliban, or are they being sponsored from an unknown source? Whatever the case may be, what approach should Pakistan and the International Community as a whole take in order to eradicate terrorism from the country? We also should not overlook the fact that Pakistan is a nuclear power and if the terrorist acquire these nuclear weapons, then the threat from these groups moves beyond Pakistan to the entire world.",
"Thus, it is of prime importance that this issue is seriously addressed and viable measures are suggested to improve the situation in the country. Delegates in DISEC are urged to enact creative, effective solutions towards this problem in order to restore peace and stability. "],
                  chair: {name: "Hassan Ayub", email: "disec@ucbmun.org"},
                  chair_letter: ["Dear Delegates,", "My name is Muhammad Hassan Ayub and I will be serving as your Head Chair for the Disarmament & International Security Committee here at UCBMUN XX. I am a Sophomore at Berkeley majoring in Economics. I have been involved with MUN for the past six years. This will be the 9th time I’ll be on the other end of the committee, judging your viewpoints and policies on this very pressing issue.
In this committee, delegates will assemble to deal with critical issues that will lead to a very high level of intellectual debate. The background guide covers all the details of the topic at hand very comprehensively, so I will personally advise all of you to read the guide very acutely and address all the issues mentioned in the guide during committee. Delegates of DISEC need to take this issue forward in a very distinct manner.
", "If you wish to contact me prior to the official commencement of the conference, please feel free to contact me through Facebook or my email (hassanayub@berkeley.edu). I’ll be more than pleased to address your concerns and clarify any ambiguities. I am looking forward to meeting you all and seeing what you have to offer.
", "Kind Regards,", "Muhammad Hassan Ayub, Head Chair"]
                },
      "specpol" => {name: "General Assembly:",
                    subtitle: "The Special Political and Decolonization Committee ",
                    type: "Specialized Body",
                    description: ["SPECPOL, or the Special Political and Decolonization Committee, occupies a very distinct niche in the host of United Nations committees and bodies. With a looser agenda than most specialized bodies, this committee’s mission statement is to address issues that range from universal peacekeeping and human rights violations to mining, space, and atomic disputes. This year, the committee will be addressing the issues of Preventing Mass Atrocities in Areas of Conflict and Property Rights in Outer Space. The two topics of this year’s SPECPOL have gained a space on the tight agenda due to their increased relevance in modern-day political forums, and will require an intensive and highly meticulous approach to resolve. The nature of SPECPOL is not trivial; this is a body that works in concert with the Security Council and the World Trade Organization to enforce its passed resolutions. Delegates should consequently enter SPECPOL with the weight of their nation’s objectives on their shoulders, but more importantly, with the knowledge that they each individually form a component of an international governing mechanism."],
                    chair: {name: "Mariam El Magrissy", email: "specpol@ucbmun.org"},
                    chair_letter: ["Dear Delegates,", "My name is Mariam El Magrissy, and as one of the chairs of the UCBMUN XX conference, I am proud and excited to head one of the most critical bodies of the United Nations: the Special Political and Decolonization Committee. This year’s committee is one that finds itself at the intersection of the eventual future and the deplorable past. It endeavors to push delegates to break the wheel of history while laying down groundwork for the future of international governance. I enter this committee with the highest of expectations given the severity of both issues, but also extend a warm hand to those that come with fresh ideas and a committed heart to the General Assembly.  ", "Personally, I am an Egyptian student currently pursuing a double major in Political Economy and Peace & Conflict Studies, as well as a minor in French. In my free time, I can be found advocating for the fundamental rights of refugees with student groups on campus or concocting theories for Game of Thrones. Bearing an intense passion for studying the nuances of political systems and their flaws, I will consequently be highly interested in seeing how delegates choose to tackle the challenges that the General Assembly poses: creating a system of global governance that is effective enough to have teeth, but not too overbearing as to discourage states to participate in this crucial process.
", "This committee will offer delegates of all power levels a voice. I invite you to recognize the value of compromise and concession in the controversial topic of property rights in outer space. I implore you to remember the consequences of staying silent or soft in the area of preventing genocide. More than that, I hope that you will see SPECPOL as a blank slate that needs both intense shrewdness to navigate a committee of this size and collaboration, for our committee is nothing if not united. ", "If you have any questions or concerns about the background guide, committee topics or regulations, please do not hesitate to reach out to my Vice Chair or me! Feel free to contact us at any time, as we are extremely excited for the upcoming March conference.  ", "Best Regards,", "Mariam El Magrissy, Head Chair"]
                  }
    }
  end

  def load_crises
    @crises = {
        "adhoc" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["The Ad-Hoc Committee of the Secretary-General is the flagship committee of UCBMUN.
                          Seeking to challenge experienced delegates, high quality debate is expected from this application-based committee.",
                          "Although the committee topic will only be disclosed a week before conference, we can describe the nature of the challenge before you. With fast-paced crises and
                          constantly shifting circumstances, the Ad-Hoc promises to be unconventional and
                          highly memorable. Diplomacy, leadership, creativity, and copious amounts of crisis notes are expected. Come prepared - critical decisions await you.",
                          "As there’s little else we can reveal until March, we encourage you to ponder the words of John Stuart Mill:",

                          "'War is an ugly thing, but not the ugliest of things …  The decayed and degraded state of moral and patriotic feeling which thinks that nothing is worth war is much
                          worse. The person who has nothing for which he is willing to fight… is a miserable
                          creature and has no chance of being free unless made and kept so by the exertions of better men than himself.'"],
                    chair: {name: "Lorenzo Galdon Ramos", email: "adhoc@ucbmun.org"},
                    cd: {name: "Grayson Dimick", email: "adhoc@ucbmun.org"},
                    cd_letter: ["Dear Delegates,", "My name is Grayson Dimick, and I am honored to serve as your Crisis Director for the Ad-Hoc Committee of the Secretary-General at UCBMUN XX. Every year, the Ad-Hoc brings together the strongest delegates on the circuit for a competitive, challenging, and, ultimately, an intellectually rewarding weekend. Since I cannot declassify the topic, I will leave it to your tortuous imagination – however, I can say that delegates will be expected to debate passionately, produce excessive amounts of crisis notes, and swamp the crisis staff with an ungodly amount of directives.", "Since the topic remains shrouded in secrecy, I can bore you with some details about myself. Hailing from the small town of Sebastopol, California (not to be confused with Putin’s favorite town in Crimea), I’m a third year student at Berkeley, double majoring in Political Science and History, with a minor in Public Policy.  I’m passionate about increasing the number of women in politics, both through working with non-profits that recruit and train women as well as academic research on the gender gap. In my spare time, I can be found perfecting my RBF, watching the Daily Show, boring others with fun facts about Southeast Asian politics, and drinking chai tea.", "The majority of my time is dedicated to MUN, as I currently serve as UC Berkeley’s Head Delegate. As an experienced crisis delegate, I enjoy committees that feature substantive debate and unorthodox situations. This will be my third time serving as a Crisis Director and working with Lorenzo, having previously collaborated on Pinochet’s Chile and the Tong Wars. Our last committee session culminated in an emergency evacuation of the committee room, and ended with a raging debate about gang warfare over dim sum in a Chinatown restaurant. We promise to up the game this year, so throw your best at us.", "I urge anyone interested in a fast paced, creative, and competitive committee to apply. If you have questions, please don’t hesitate to contact Lorenzo or I. We look forward to seeing you in March!",
                                "Best Regards", "Grayson Dimick", "Crisis Director", "gdimick@berkeley.edu"],
                    chair_letter: ["Dear Delegates,", "It is my pleasure to invite you to participate in the Ad-Hoc Committee of the Secretary- General at UCBMUN XX! My name is Lorenzo Galdon and I will have the privilege of being your Chair for the weekend. Grayson and I have worked diligently to improve on the two previous Ad-Hoc Committees at UCBMUN and offer you the best one yet. Although you will have to wait until March to find out the committee topic, I can personally guarantee you it will be well worth it.", "A bit about myself: I am a fourth-year majoring in History with a minor in Ethnic Studies. At this point I have not concreted my plans for next year but the idea is to take a gap year and apply to law school so that I can eventually pursue a career in public-interest law. I joined MUN my second year at Cal and immediately fell in love. I have been to a number of conferences in which I have served as a delegate, assistant crisis director, and chair while serving as UCBMUN’s Treasurer and Vice President here in Berkeley.", "When I’m not studying, partaking in MUN-related activities, or working, you can usually find me catching up on John Oliver or napping somewhere around UC Berkeley’s beautiful campus. On the occasions that I feel more adventurous, I’ll ride my bike to some of Berkeley and Oakland’s best drinking holes (feel free to ask for recommendations) or catch a concert at The Greek. ", "I really look forward to reviewing all the applications and bringing together the best delegates on the circuit for a weekend of intense debate and creative crises. If you have any questions about the committee, feel free to contact either Grayson or myself.", "Best of luck,", "Lorenzo Galdon"]
                  },
        "redcliff" => {name: "A Clash of Three Kingdoms:",
                   subtitle: "The Battle at the Red Cliff",
                   type: "Crisis",
                   description: ["The year is 208 AD, and the warlords of China are hell-bent on seizing the emperor’s throne. The Eastern Han dynasty has collapsed. The fearsome Cao Cao has already taken over the southern province of Jingzhou, and he is set on unifying China under his control. To the South, two more formidable forces await Cao Cao’s inevitable advance. On one side, Liu Bei rules over his Kingdom of Shu. On the other, Sun Quan and the Kingdom of Wu.",
                    "From each of these factions emerges a series of great warriors and heroes. China is a powder keg ready to explode as the three kingdoms prepare to clash in the Battle of Red Cliff. This battle’s outcome will determine the future of the Three Kingdoms. Delegates, the destiny of China rests in your hands."],
                   chair: {name: "Tim Guan", email: "redcliff@ucbmun.org"},
                   cd: {name: "Aric Chang", email: "redcliff@ucbmun.org"},
                   chair_letter: ["Dear Delegates,", "Welcome to the prewar negotiations of the Battle of Red Cliff. My name is Aric Chang, and I am honored to serve as your Crisis Director for what I know will be an exciting and memorable weekend of superficial friendliness and not-so-subtle backstabbing.
", "A quick introduction: I am a second year at UC Berkeley, and I am currently double majoring in Political Science with a concentration in International Relations and Asian Studies with a concentration in China. I was born in Taipei, Taiwan, and I moved to Los Angeles, California when I was three years old. My practical career goal is to become a US diplomat, and my dream career is to become a dictator of a small country. I have been involved in Model UN since 6th grade, and I am looking forward to developing my MUN skills and learning about the world as much as possible before I graduate. At Berkeley, in addition to my involvement in MUN, I am also involved in Alpha Kappa Lambda fraternity.
", "I am very excited to CD the Battle of Red Cliff because I am greatly interested the era of the Three Kingdoms of China. Also, Guan Yu is one of my top 5 favorite historical figures. Our committee starts in 208 AD, right before the famous battle that laid the foundation of the era of the Three Kingdoms. At this time, strategy, wit, and diplomacy are the most important weapons, and I look forward to seeing all of you vie for power in this tumultuous time. If you have any questions, please do not wait to contact me. I will see you all at the negotiations. ", "Sincerely,", "Aric Chang"],
                  cd_letter: ["Dear Delegates,", "It is my honor and my pleasure to welcome you to the Clash of the Three Kingdoms committee at UC Berkeley Model United Nations XX. My name is Timothy Guan, and I’m looking forward to serving as your head chair. We anticipate a high level of dynamic debate in this committee. I can’t wait to see what you bring to the table. ", "This is my third year at Berkeley, where I study Cognitive Science and Molecular Biology with a minor in Computer Science. Though I’m originally from Edison, New Jersey, I graduated from high school in Shanghai, China. Nine years participating in Model UN have allowed me to attend a wide variety of conferences as a delegate, chair, and crisis director. When I’m not serving as Chief of Staff – Product for UCBMUN or watching copious amounts of Netflix, I conduct research in the College of Chemistry, organize the California Cognitive Science Conference, and work as a part-time cook.
", "The texts from which this committee draws inspiration have been compared to the works of Shakespeare with regard to their influence on the Chinese culture and understanding of history. Our committee will explore the turbulent and transformative period that was the Eastern Han dynasty. Delegates in this committee must navigate the volatile political climate to consider the best course for China. While I have no doubt that you will excel with this topic, please don’t hesitate to contact me with any questions. I can’t wait to meet all of you during the conference. ", "Sincerely,", "Timothy Guan"]
                 },
        "obama" => {name: "Obama Unleashed or Rejected:",
                    subtitle: "The Cabinet of the Presidency of the United States",
                    type: "Crisis",
                    description: ["President Obama’s cabinet will be tasked with a variety of short and long-term challenges throughout the course of the committee. From averting violent conflict with the Iran Nuclear Deal, to navigating the war campaign against ISIS, and handling Russian expansion into Ukraine, the diverse group of individuals that makes up the executive advisory board council will have no room for the squeamish. Equally important will be improving education, creating effective legislation to tackle climate change, and addressing the ongoing issues of historically marginalized groups like women, immigrants, and the LGBT community.",
                     "This committee, however, is about more than just passing directives, delegates will need to also negotiate with outside governments, handle a variety of calamitous crises, and deal with the consequences of their choices. So what will it be: Obama unleashed or rejected? "],
                    chair: {name: "Rahim Daya", email: "obama@ucbmun.org"},
                    cd: {name: "Ish Farooqui", email: "obama@ucbmun.org"},
                    cd_letter: ["Delegates, Friends, and Colleagues, ", "The beginning of a long three days of debate, decision making, and debauchery is nearly upon us! Welcome to UC Berkeley Model United Nations XX, the grandest of all possible conferences. My name is Ish Farooqui and I will be your crisis director for the duration of this conference and as long afterwards as you’d like.
", "Humblebrag alert: I do attend UC Berkeley and despite my best efforts have not [yet] been kicked out yet. I never figured out why anyone would care about their CD or Chair’s personal biography, but I suppose I am awesome so here is just that. I grew up in the town of New Canaan, Connecticut a beautiful oasis in between the rolling hills of New England and the gold paved city of New York. I am a second year history major and have been doing Model UN since its inception in the early 1950s. I also do a bit of this and that on the side, mostly writing, reading, and merry making. ", "The committee Rahim (your wonderful chair) and I have devised is on the topic of Obama’s Cabinet in 2012, as you most likely already knew. While I have spent my whole life in America, Rahim has been nothing short of a globetrotter. Hopefully this knowledge can help to assuage some concerns you may have if you were raised outside of the states! We hope each delegate brings his or her diverse range of perspectives. Another bit of advice is to not expect this committee to follow the course of history. The most successful delegates will come into this committee with a solid understanding of Obama’s first and second term, but prepared to handle any divergences from the actual course of events. To you all: best of luck and even better luck in your life’s pursuits. ", "Cheers,", "Ish Farooqui"],
                    chair_letter: ["Dear Esteemed Delegates,", "I am delighted to welcome you to Barack Obama Unleashed or Rejected: The Cabinet of the Presidency of the United States of America at UCBMUN XX. Both Crisis Director Ish Farooqui and I are very excited to be delivering this challenging committee and it will definitely push you to the limits of your debating and scheming abilities. As Head Chair, I foresee fervent, passionate debate; directives aimed at bringing prosperity to our wonderful nation, and crisis ideas that will make us question whether you should be exposed to the rest of the world. ", "The Cabinet will cover the length of Obama’s 2nd term as President and will see Obama’s aides look to build upon a critiqued yet mildly successful first term in office. The committee will focus on a range of issues detailed below but delegates will have the ability to instigate their own crises. Once handed your individual position, it will be your responsibility to build upon any or all of your personal goals while advancing the ambitions of the Cabinet as a whole. The background guide below and character dossiers you will receive in due course will provide a vast understanding to equip you for your time in committee. ", "A couple of things about myself, I am a junior majoring in Political Economy and this is my third year at UCBMUN Conference, serving as Vice Chair of last year’s Ad-Hoc Committee and as an ACD for the UN Security Council in 2014. I was born in London, England; Moscow, Russia and Mombasa, Kenya so I think of myself as quite a seasoned traveller. Outside of MUN, I am usually watching or playing any and all sports whether live, highlights or even analysis! I am a devout fan of Manchester United, Roger Federer and all Bay Area sports teams (how about those Warriors winning the Championship!). I enjoy spending time with friends and family while eating assortments of pastries and watching Game of Thrones, House of Cards etc.", "I eagerly anticipate meeting all of you during the course of the conference, which promises to be a memorable four days. Please do not hesitate to contact Ish or me with any questions or concerns you may have. ", "Cheers!", "Rahim Daya, Head Chair"]

                  },
        "darkweb" => {name: "Conquering the Web:",
                      subtitle: "Industry, Government and the Dark Net",
                      type: "Crisis",
                      description: ["With new technological paradigms come novel opportunities and challenges for industry and government alike. Fast-forward to 2025. A unified international legal body has failed to regulate the Internet and Dark Web, which has continued growing at a geometric rate. Consequently the Dark Web has become a new frontier, a new Wild West, where international corporations have waged an economic war, vying for power in this new unregulated space and across the globe. In this economic war, one particularly fierce industry has been biotech, and rapidly growing and changing systems of alliances have formed to maximize odds of success, fighting on both legal and legally questionable fronts. In this committee the major biotech companies and government regulators are meeting to discuss appropriate international regulation on the Dark Web and Internet, with obviously conflicting interests. Who will conquer this new frontier? Will this space become regulated, or will international monopolies form? It is up to you."],
                      chair: {name: "Bhavna Gopal", email: "darknet@ucbmun.org"},
                      cd: {name: "Steven Elleman", email: "darknet@ucbmun.org"},
                      chair_letter: ["Dear Delegates,", "It brings me great pleasure to welcome you to the Crisis Committee: “Conquering the Web: Industry, Government, and the Dark Net” at UC Berkeley Model United Nations XX. My name is Bhavna Gopal, and I am so honored and excited to serve as your head chair for what I’m sure will be a truly unforgettable weekend of debate and fun!",
                        "But first, a little about me: I am currently a sophomore at Berkeley, majoring in Bio-engineering and Electrical Engineering Computer Science (so as you can see, this committee topic is one that I have a lot of personal interest in!). I have spent the past 9 years of my life in Bangalore India, but currently live in Fremont, California. Model UN has definitely been an extremely important part of my life since eighth grade and I have chaired and served as a delegate in over 20 crisis committees. At Berkeley, in addition to being an active member of UCBMUN and a Head Chair of this committee, I’m also a Research assistant in a Bioengineering Lab, a member of the Biomedical Engineering Society and enjoy watching copious amounts of Game of Thrones. ",
                        "Chairing a committee in which I can use my technical expertise is nothing short of a dream come true for me! Our committee is truly unconventional in that both Steven and I have worked hard to make sure we can utilize the internet and technology to the maximum in committee session i.e: most of the communication delegates will do with eachother will be online. In my opinion the true heart and soul of this committee lies in the beauty of the online world and a language that I hope you, as delegates will take advantage of to the maximum! ",
                        "I have no doubts that this committee will be fantastic and please don’t hesitate to contact me with any questions. Looking forward to meeting all of you! ",
                        "Sincerely,",
                        "Bhavna Gopal"],
                      cd_letter: ["Dear Delegates,", "Welcome to Crisis: “Conquering the Web: Industry, Government, and the Dark Net” at UC Berkeley Model United Nations XX. My name is Steven Elleman, and I look forward to overseeing subterfuge, carnage, and mayhem as your very own crisis director. More importantly, I look forward to enabling the unique opportunity that Crisis affords: living in a microcosm of reality for a three day period, in another time, another place, as different people with different motives and agendas. In these three days, what we gain are not awards (although that is always nice and always a wonderful motivator) but a petri dish of the human experience, one that can educate us about circumstances borne from contrasting, coalescing, and opposing motives and strategies to channel those motives for our own ends. ", "About me: I am junior studying economics and computer science at Berkeley. I also pursue art/design, literature, history and music in my copious free time (lol). While I hail from the puny state of Rhode Island I have lived in Japan for two years, Australia for one year, Texas for three years, and have traveled to more than twenty countries. My time in MUN has been quite brief, I began last year because I was in intellectual withdrawal: both of my parents are Russia/China/Japan historians and I missed being in an environment in which discussion and contemplation of history, strategy, and diplomacy was the norm. I have now found that environment. ", "We live in a rapidly changing world, and changing systems and technologies profoundly impact how motives are channeled and realized. We want to emphasize this by enabling access to resources that would be forbidden in other committees, such as email and social media. The times they are a’ changin and so should Crisis. I am ecstatic to see where you all take this committee, given the relevance of the topics at hand.", "Feel free to contact me about anything, from committee to shadow puppets.  ", "Sincerely", "Steven Elleman"]
                    },
        "pilate" => {name: "Rome’s Forgotten Colony:",
                     subtitle: "Pontius Pilate and the Divisions of Judaea",
                     type: "Crisis",
                     description: ["It is a glorious time for the Roman Empire. Already holding the Mediterranean Sea, Tiberius Caesar’s reach seems unstoppable, stretching further in all directions. Internally, Rome sees a period of unprecedented peace and economic prosperity­­ yet all is threatened by a single, seemingly insignificant colony. Although it’s one of the smallest territories, Judaea perpetuates a state of constant turmoil and rebellion, its stubborn and fervently devout people resisting the authority of its governor, Pontius Pilate, at every turn. Not just political, but religious upheavals plague the land as well, as ancient traditions are broken, kings are forsaken, and rumors of a savior are circulated in the countryside.",
                       "From his seat in Jerusalem, Pilate faces a city on the brink­­ not just of rebellion, but of revolution. His pleas for help are ignored by Caesar, so he must turn to the city and its leaders for help. Will he manage to achieve peace for the land destined to become one of the most contested holy territories in the world? Or will he be overpowered by a proud people, desperate for their own king?"],
                     chair: {name: "Alice Ma", email: "pilate@ucbmun.org"},
                     cd: {name: "Allie Gordon", email: "pilate@ucbmun.org"},
                    chair_letter: ["Dear Delegates,", "It is my pleasure to welcome you to the Pontius Pilate of the UCBMUN XX. My name is Alice Ma, and I am a junior at UC Berkeley from New York State. I am a Political Economy and Cognitive Science double major, which essentially means I am dabbling in more than ten different fields of study, ranging from Political Science to Psychology to Computer Science.", "I have been a member of UCBMUN since Spring 2014. Having traveled to several conferences, including ones at UCLA, Columbia, and Harvard, and having staffed UCBMUN XVIII and XIX, I hope to use my experiences at these collegiate conferences to set a high standard of quality for this committee.", "Your Crisis Director, Allie Gordon, and I are deeply interested in the Middle East, conflicts involving religious tension, and Israel’s impact on the region. I studied abroad in Jerusalem, Israel in Fall 2015 and visited Pakistan during Winter 2014. I hope that my combined experiences and knowledge about the region will allow me to provide a background guide and committee experience that thoughtfully consider the prevalent issues of the region and their origins.", "It is up to the delegates of this committee to decide how the Cabinet of Pontius Pilate will implement its goals in Jerusalem while dealing with domestic opinion, extreme poverty, religious sacrilege, a region increasingly entangled in the difficulties of the Roman Empire maintaining its vast reach, trade scandals, and territorial aspirations. Delegates will act as a part of a Cabinet composed of factions and varied interests, headed by a controversial figure and charged with making decisions that could impact the course of human history.", "Sincerely", "Alice Ma"],
                    cd_letter: ["Dear Delegates,", "Shalom and welcome to the Pontius Pilate crisis committee of UCBMUN XX! My name is Allie Gordon, and I will be serving as your Crisis Director this spectacular weekend. ", "A bit about me before getting down to business: I’m originally from San Diego, and currently a junior here at UC Berkeley, where I am majoring in Political Economy with a focus on the Middle East, as well as minoring in Public Policy and Religious Studies. I’ve been a member of UCBMUN since Spring 2014, and am exciting to bring my experience from traveling and working as an ACD the past two conferences-- first in a four-way Intelligence JCC, then in last year’s 1985 Afghanistan Ad-Hoc JCC. Outside of classes or MUN, I am often found baking copious amounts of cookies (so you might expect period-appropriate treats). I also enjoy hiking, working as a barista in a local cafe, exploring the Bay, and reading anything I can get my hands on.
", "Ever since I joined MUN and discovered what it is we crazy kids do here, I’ve wanted to run a committee revolving around Jerusalem. With its ancient history and position at the center of three major religions, I believe it to be one of the most exciting, dynamic cities in the world to study. This fall, I even studied abroad in Jerusalem with my dear friend and your honorable Chair, the lovely Alice Ma. We are incredibly excited to bring everything we learned from the experience and many long nights of frantic discussions to this committee. ", "I hope this will prove to be an stimulating, surprising weekend for all of us. I look forward to seeing you all very soon; please feel free to contact me with any questions, book suggestions, or even just to say hi! ", "Warmly,", "Allie Gordon"]

                   },
        "colombia" => {name: "Colombia:",
                      subtitle: "Peace Accords with FARC",
                       type: "Crisis",
                       description: ["For the past fifty years, the government and people of Colombia have endured violence, human rights violations, and what many denominate as a civil war with rebel armed groups, most importantly, Fuerzas Armadas Revolucionarias de Colombia, known as FARC.

President Juan Manuel Santos, like many of his predecessors, attempted to negotiate with FARC, and his efforts have been perhaps the most significant peace process that Colombia has seen in decades.

This committee will simulate the current negotiations between the government of Colombia, FARC representatives, humanitarian organizations, and other stakeholders such as displaced populations, conflict victims, and Colombian politicians.

Aligning with the actual process, it will set forth an agenda of issues to be addressed and in which parties should reach consensus. The voices of the Colombian people, tired of being terrorized, and those of the FARC, arguing for equality, rural development, and investment in peripheral Colombia will face issues in which they agree and many in which they disagree."],
                       chair: {name: "Camilo Ossa", email: "colombia@ucbmun.org"},
                       cd: {name: "Will Kable", email: "colombia@ucbmun.org"},
                      chair_letter: ["Dear Delegates,", "Welcome to UCBMUN XX and this year’s Colombia: Peace Accords with FARC Committee! My name is Camilo Ossa and I am a junior studying Economics and Business Administration at the Haas School of Business. I was born and raised in Bogotá, Colombia although I have also lived in Canada. UCBMUN and this conference have been a pivotal part of why coming to Berkeley was an incredible decision and I am sure you will be able to experience some of that during the conference as well. ", "Beyond international affairs, I am interested in entrepreneurship, economic empowerment, social enterprises, and impact investment. Outside of MUN, I am an active member of Phi Kappa Psi Fraternity, the Latin American Leadership Society, and founded a non-profit that aims to connect underprivileged students to individuals interested in financing part of their education.", "This committee’s topic is one that I feel very passionate about not only because it has personally impacted my family, but also, because peace in Colombia would contribute to the country’s economic growth and governance. In light of the recent efforts of Colombian President Juan Manuel Santos, we will discuss the motivations of the guerillas, of international humanitarian agencies, of displaced populations, and of conflict victims, among many others. However, as the longest civil conflict in the western hemisphere, it is challenging to determine where forgiveness and adoption cross the line of impunity. On the other hand, without incentives to come to peace, the guerillas could continue haunting Colombia for decades and add these accords to the many failed processes of the past.", "I am incredibly excited to see what solutions and proposals you will choose to debate and explore. I hope all of you enjoy thoroughly researching about the state of the peace process, past processes, and possible solutions as much as I have. Feel free to reach out to me if you have any questions. ", "Sincerely,", "Camilo Ossa"],
                      cd_letter: ["Dear Delegates", "I would like to welcome you to UCBMUN XX’s Colombia: Peace Accords with FARC Committee. My name is Will Kable and I will be your crisis director for this committee. I am a junior studying Nuclear Engineering in the College of Engineering at UC Berkeley. I was born in Atlanta, GA but spent 5 years in Spokane, Washington. I hope to have a wonderful committee and I know you will surprise me with some devious and dastardly schemes.", "I have been doing Model United Nations for two years now and I have previously served as Legal Staff for the International Court of Justice Committee and Crisis Director for the North Korea: 2037 Committee. As a Nuclear Engineer, I am very interested in nuclear energy policy and its relation to the global energy landscape. I also am attempting a German minor before I graduate. Hoffentlich kann ich Deutsch mit Ihnen sprechen.", "The subject of this committee certainly covers one of the most difficult diplomatic crises of the 20th and 21st Century. It will be your job to traverses a political landscape that is plagued by narcoterrorism and corruption. The committee will have several paths to approaching the peace process, however you all must be weary of the ramifications of your actions. FARC is not an organization to be trifled with and you should all strive to ensure peace for the people of Colombia. The methods by which this is achieved will be determined by the committee. This is not the first attempt at peace in Colombia but hopefully the actions of this committee will bring a long overdue peace to a nation in strife.", "I am excited to see how this committee will proceed. I hope for this experience to be both substantive and exciting. To this end, I plan on allowing the committee to explore many avenues and solutions. Enjoy researching for the difficult road ahead and feel free to contact me if you have any questions.", "Sincerely,", "Will Kable"]

                     },
        "marcos" => {name: "The Rolex 12:",
                     subtitle: "Marcos' Philippines under Martial Law",
                     type: "Crisis",
                     description: ["From 1972 to 1981, Philippine President Ferdinand Marcos ruled under a declaration of martial law. He and his cabinet had absolute control over the country. Opposition leaders were jailed or killed, and dissent was crushed. The twelve advisors in Marcos’ inner circle that helped guide this regime were all rumored to have been given Rolex watches as a sign of their inclusion in the elite circle of Filipino politics. They became known as the Rolex 12.",
                     "The 1970s were a tumultuous in the Philippines. Communist and Leftist movements were rising in membership, terrorism and violence began to become an everyday event. Simultaneously, President Ferdinand Marcos was to be term-limited in 1973. A plan was hatched. As early as 1970, Marcos began meeting with top advisors to devise a plan that would allow for Marcos to stay in power, for Leftist dissidents to be crushed, and for the Rolex 12 to build a new Philippines.",
                     "On August 21st, 1972, a rally of the Liberal Party was held at the Plaza Miranda in Manila. In the middle of the rally, two hand grenades were tossed on stage, killing 9 and injuring 95. While no perpetrators were identified, blame conveniently fell on Communist rebels. This was the first of two false flags that would set the plan in motion. In September of 1972, Marcos agents shot up Secretary of Defense Juan Ponce Enrile’s car. “Luckily” Secretary Enrile was riding in the backup security vehicle. Using these two events and the countrywide discord as pretext, Marcos issued Presidential Proclamation 1081, establishing martial law throughout the country, and suspending the constitution.",
                     "The Philippines are at a turning point. Violence and discord proliferate. An anemic economy keeps millions in poverty. Increasingly militant Muslims organize in Mindanao. All the while, the Philippines are still searching for its place in the Cold War world."],
                     chair: {name: "Disha Subramaniam", email: "rolex12@ucbmun.org"},
                     cd: {name: "Austin Weinstein", email: "rolex12@ucbmun.org"},
                     chair_letter: ["Dear Delegates,", "I’m Austin Weinstein, your Crisis Director, and it is my sincere pleasure to welcome you to the Rolex 12. The collegial team of military and civilian advisors to President Ferdinand Marcos fundamentally altered the Philippine economy, political system, and international standing. These officials had nearly unchecked power under Martial Law, giving them unmatched capability to mold the state. You now take on their roles, given their mandate--make the country anew.", "Over the past four decades, Marcos and the Rolex 12 have had their reputation attacked and defended by partisans. Many historical events are re-interpreted through the eyes of political fervor, distorting them for future generations. This committee will try our best to give a historically accurate depiction of the Philippines in this era, but the fingerprints of Marcos and Aquino will inevitably come to improperly depict the events of the time. There is not a great deal of impartial history on this era, and Disha and I have worked to winnow out the bias when possible.", "This committee will be run as a classic crisis committee, following standard rules. However, there will be many points when the circumstances of the era come to affect how the committee will operate--members will have to adjust on the fly.", "As a member of this committee you have a one mandate--Bagong Lipunan. Marcos has asked for a New Society, and you must deliver that. Poverty is rampant, unrest rules the country, and the country is widely seen as backward. Martial Law exists for you to have the leeway to mend the wounds of the country, and you are expected to do so.", "Sincerely", "Austin Weinstein"],
                     cd_letter: ["Dear Delegates,", "I am so excited to welcome you to UC Berkeley Model United Nations XX. My name is Disha Subramaniam, and I will be serving as your Head Chair for the Rolex 12: Ferdinand Marcos’ Cabinet, 1972. I am a third-year student double majoring in Economics and Molecular and Cell Biology. ", "While I was born to Indian parents in the US, I grew up in Bangkok, Thailand, a vibrant and often politically turbulent metropolis in Southeast Asia. I came away from high school in Bangkok with a gratifying five years of MUN experience and an enduring desire to pursue Model UN into college. Last year, I served as head chair for the World Petroleum Congress at UCBMUN XIX and also compete on UCBMUN’s traveling team. While not working on MUN-related projects, I enjoy hiking, brewing industrial quantities of Indian chai, overanalyzing the Harry Potter books, and performing dramatic renditions of Disney songs to anyone within earshot.", "Growing up in Southeast Asia, I developed an interest in the politics of the region, which ultimately gave rise to this committee. The Rolex 12 will take place at a pivotal point in Philippine history shortly after incumbent President Ferdinand Marcos declared martial law, wherein overnight, corporations, media outlets, student organizations, and any dissenting factions were shut down and violently suppressed. Marcos’ martial law was characterized by widespread corruption, forced ‘disappearances’ of opposition figures, communist insurgency, crony-capitalism, debilitating hyperinflation, and a general atmosphere of terror in the country. I am eager to see how the delegates will navigate this complex political backdrop to alter the course of Philippine history.", "On behalf of the staff of this committee and of UCBMUN XX, we hope you find your experience on the Rolex 12 invigorating and enjoyable. Please don’t hesitate to reach out to me with any questions about the committee or conference. ", "Sincerely", "Disha", "Subramaniam"]

                   },
        "unsc" => {name: "UN Security Council:",
                  subtitle: "India and Pakistan in 1947",
                   type: "Crisis",
                   description: ["Welcome to the United Nations Security Council (UNSC), a committee that promises be characterized by debauchery, intensity and but of course, the veto. Take a trip back in time with us to 1947 where we encounter a world struggling to recover in the wake of the Second World War. Travel with us first to Greece to help us find an answer to the Greek Question that is the Greek Civil War. Then to India to negotiate a compromise between the fiery people of the subcontinents two largest nations, India and Pakistan, in the midst of the bloodiest migration in recent history. Our journey will end in the murky forests of Indonesia as we try to mitigate the effects of the Indonesian National Revolution. Keep your wit about you, as this committee will require quick thinking, decisive action and, most importantly, cunning diplomacy."],
                   chair: {name: "Divit Sood", email: "unsc@ucbmun.org"},
                   cd: {name: "Rajit Kinra", email: "unsc@ucbmun.org"},
                   chair_letter: ["Dear Delegates,", "Welcome to the United Nations Security Council (UNSC), a committee that promises be characterized by debauchery, intensity and but of course, the veto. ", "Take a trip back in time with us to 1947 where we encounter a world struggling to recover in the wake of the Second World War. Travel with us first to Greece to help us find an answer to the Greek Question that is the Greek Civil War. Then to India to negotiate a compromise between the fiery people of the subcontinents two largest nations, India and Pakistan, in the midst of the bloodiest migration in recent history. Our journey will end in the murky forests of Indonesia as we try to mitigate the effects of the Indonesian National Revolution. Keep your wit about you, as this committee will require quick thinking, decisive action and, most importantly, cunning diplomacy. ", "A little about me: I am a senior at UC Berkeley and am pursuing a degree in Civil Engineering.  Following an exciting and successful MUN career in high school, I joined UCBMUN in the fall semester of my freshman year and since have been an active participant in the club. I have had a lot of experience as a chair and had the pleasure of chairing last year's Security Council at UCBMUN. ", "I am not originally from the United States; in fact I am from halfway across the world. I was born and brought up in the U.A.E and also spent three years in the Netherlands. In my free time, I like to play music and sports because they help me get away from the monotony of engineering. I specifically enjoy watching soccer and support Manchester City (sorry Manchester United fans). ", "I am looking forward to chairing at UCBMUN since this will be the last time I attend the conference! Last year's conference was a blast and I am looking forward to making the upcoming conference even better. If you have any questions or concerns about the background guide or the committee in general, please feel free to email me.", "Regards,", "Divit Sood"],
                   cd_letter: ["Dear Delegates,", "I am very excited to welcome you to the 20th edition of UC Berkeley’s Model United Nations conference. My name is Rajit Kinra and I shall be your Crisis Director for the highly contentious and electric United Nations Security Council. Join us in our journey back to 1947, as we attempt to recreate the events that unfolded after the Second World War. We shall begin by attempting to mitigate the Greek Civil War, after which we shall explore the partition of the Indian subcontinent, which resulted in the displacement of over 14 million individuals. The action shall come to an end in Indonesia, as it attains independence as a result of the Indonesian National Revolution. I can only hope that you as a committee are able to work together, and the controversial veto power is not misused. It is extremely crucial that you exercise sound judgment and make collective, yet decisive actions in order to maintain peace and stability across the globe. ", "Finally, what you’ve been waiting for, a little bit about myself:  I originally grew up in a small island nation in the Indian Ocean called Sri Lanka. Having spent the majority of my life there, I attended high school in Delhi, India and am now a senior at UC Berkeley studying Industrial Engineering & Business Administration. I enjoy watching TV shows, procrastinating, and playing FIFA on the PlayStation. My one true passion in life is food; so feel free to come see me to discuss restaurants in the area! I am also highly passionate about the partition of the Indian subcontinent, belonging to a family with its roots in modern-day Pakistan. A true patriot at heart, I enjoy watching debates on Indian politics and have also been enjoying the highly entertaining GOP debates thus far. ", "I have been a member of UC Berkeley’s Model United Nations team since my freshman year now, and was the Deputy Secretary General of last year’s conference. I have had an absolute blast during my time in UCBMUN and am looking forward to making the most of my last conference as a club member. An interesting fact here, Divit and I actually interviewed back-to-back as freshmen for UCBMUN. ", "Please feel free to email me with any questions you may have! I look forward to seeing you in March.", "Good luck,", "Rajit Kinra"]

                 },

        "thatcher" => {name: "Cabinet of the Iron Lady:",
                        subtitle: "There is no alternative.",
                        type: "Crisis",
                        description: ["Delegates, welcome to the Cabinet of the Right Honourable Margaret Hilda Thatcher, Prime Minister of the United Kingdom. This committee will deal with the first term of Margaret Thatcher’s Cabinet from her accession in 1979 to the General Elections of 1983. These are dark economic times for Britain with the mismanagement of the Labour Party over the past 15 years. As members of this Cabinet, you are expected to reclaim the economic prowess of Britain, while maintaining their status throughout the world."],
                        chair: {name: "Vaibhav Srikaran", email: "thatcher@ucbmun.org"},
                        cd: {name: "Siddharth Mehta", email: "thatcher@ucbmun.org"},
                        chair_letter: ["Dear Delegates,", "I welcome you to Margaret Thatcher’s Cabinet here at UCBMUN XX. I hope you enjoy your weekend in San Francisco and have an enjoyable time debating the various world issues, which are bound to come up during the course of this committee.", "My name is Vaibhav (Vī-Bō) Srikaran and I will be serving as your chair for this glorious conference. I am a sophomore studying computer science and economics, with a bit of city planning. I was raised among the rolling fields of soybeans and corn in Des Moines, Iowa. I have a fervent love for my state and can rattle off infinite facts as to why Iowa is the greatest place on Earth. I have been in UCBMUN for 2 years, but I also did 2 years of MUN in high school, but this will be my first time chairing. Although the official sport of UCBMUN is football/ soccer, I proudly hold the bastion of basketball high as a loyal Miami Heat, Iowa State Cyclones, and Cal Golden Bears fan. I am an avid eater and Netflix watcher. At the time of this writing, I am currently enthralled by the reelection of Jedd Bartlett in the West Wing.
", "My crisis director Sidd Mehta and I look forward to hearing about your innovative solutions to the pressing economic concerns on the minds of British citizens. We hope to regain the prominence we have lost toiling over the misgivings of the Labour Party.", "Yours Truly,", "Vaibhav Srikaran"],
                        cd_letter: ["Dear Delegates,", "Welcome to Margaret Thatcher’s Cabinet and welcome to UCBMUN XX. My name is Siddharth Mehta, but don’t worry if you don’t remember that, I’m perfectly responsive to Sid as well!", "I’m a sophomore studying Computer Science here at Cal. I grew up in harsh climate of  New Delhi, India, so don’t complain about the cold (or heat)! I started MUN-ing during my highschool years, starting in 9th grade and continuing till today. Apart from MUN-ing, I enjoy being outdoors, working out, partying and engaging in random shenanigans - all in equal measure.", "Along with my Chair, Vaibhav Srikaran, I expect to have a great committee - both in terms of intellectual debate and fun. I look forward to getting to know you in person in the wonderful city of San Francisco.", "Regards,", "Siddharth Mehta"]
                      }
    }
  end

  def load_jcc

    @jcc = {
      "rhodesia" => {name: "The Government of Rhodesia",
                     type: "Joint Crisis",
                     description: ["'The wind of change is blowing through this continent. Whether we like it or not, this growth of national consciousness is a political fact.'",
                     "The year is 1964, and Rhodesia is in the crosshairs. It’s voters, a white minority comprising a mere 5% of the country, have overwhelmingly indicated that they’d rather declare independence from Great Britain than allow native Africans into government. The ‘Wind of Change’, or Britain’s decolonization policy, continued to blow against the Rhodesian rock as stubborn as its leaders. Fed up with the the conservative regime, two rival factions, the Maoist Zimbabwe African National Union and Leninist Zimbabwe African People’s Union, have been established to dethrone Rhodesia by diplomacy or dynamite. Committee will start by throwing the Rhodesian cabinet into the drama of declaring a ‘Unilateral Declaration of Independence’ from it’s mother country and surviving the wrath of the international community. The committee must then face off against two rival political forces, each eager to install a new government, whilst managing the policies, politics, and people of a nation steeped in controversy and chaos."],
                     chair: {name: "Kristina Kousherian", email: "rhodesia@ucbmun.org"},
                     cd: {name: "Nathan Black", email: "rhodesia@ucbmun.org"},
                     chair_letter: ["Greetings Distinguished Delegates,", "My name is Nathan Black, and I am incredibly eager to be serving as your crisis director. In addition to holding this exciting position, I also serve as one of Berkeley's head delegates alongside the incredibly terrifying talented Grayson Dimick. I am a senior here at Cal studying business and history, and I spend my free time plotting to destroy America's economy and become the 1%. Unfortunately, I am still squarely within the ninety-nine, and must instead exert my energy by roleplaying in Model UN as the sociopathic conqueror I will never become. Whilst I am not in a position to comment on the aspirations of my lovely partner-in-crime (and your chair) Kristina, I can attest to her excitement for the committee and to her ability to shoot down any cheeky delegate who denounces our glorious Rhodesian regime.", "It is a privilege to facilitate the Rhodesian JCC, an idea that has been fermenting since my first crisis. The conflict, though lesser known, has left a legacy that carries on to this day (I'm looking at you, Mugabe). Seeped in racism, scandal, and Cold War politics, the Rhodesian Bush War is a fertile ground for the conniving minds of experienced delegates. Our crisis staff looks forward to tackling every propaganda initiative and counter insurgency operation with vigor and speed. My primary focus when developing this committee was immersion. I find the best committees leave me legitimately fearing for my character's life, even hours after committee has ended and celebration has begun. Hopefully, our surprises and commitment to history will do just this. Rest assured, our socials will be well stocked to soothe your anxieties.", "As my last UCBMUN, this conference will be bitter sweet. Every year, all delegates face the same foreboding graduation dates when they must say goodbyes to their teammates, fellow delegates, and best friends. Though the dream of remaining perpetually 21 might be intoxicating in more ways than one, the health risks associated with such behavior are too great for someone who must save his well being for cocaine and hookers during my inevitable midlife crisis. Nonetheless, I am confident that our team will set an incredibly high standard for a conference whose bar is already mountainous. It is via this legacy that I hope to leave my mark.
", "Best of luck on the battlefield", "Nathan Black"],
                     cd_letter: ["Dear Delegates,", "Welcome to this year's joint crisis committee that proudly presents the Battle for the Heart of Africa: The Rhodesian War! The Rhodesian Civil War, also known as the Rhodesian Bush War, is a complex war for independence where three forces are against one another. The three-way joint crisis committee will consist of three major actors: the Rhodesian Government (white majority imperialists), the Zimbabwe African National Union (Maoist rebel group) and the Zimbabwe African People’s Union (Marxist- Leninist rebel group). Our council will address issues pertaining to the Rhodesian Government and the Rhodesian Government's role in this conflict.", "A little about me: I am a senior at UC Berkeley, pursuing a degree in Political Science with international relations as my concentration, as well as minoring in Middle Eastern Studies. I joined UCBMUN in the spring semester of my junior year after transferring from community college back in Los Angeles. I got interested in Model United Nations after meeting the United Nations representative of Syria, Bashar al-Jaafari. His remarkable devotion to his country truly inspired me to join UCBMUN. I look forward to following his footsteps in the future and being able to represent my country to its fullest. Through my adventures on the MUN, I have gained exceptional experience as assistant crisis director and was given the honor to be your head chair for this year’s amazing UCBMUN XX. 
", "I’m also a California native of Armenian descendent: my mother was born in Soviet Armenia and my father was born in Syria. My background certainly has influenced my interest in politics as both countries have faced or are currently facing atrocities. In my free time, I usually go out with friends or explore the city of San Francisco since it makes me forget about the hundreds of pages of reading I am supposed to be doing. I’m also a huge Barcelona fan! (Visca Barça – sorry Real Madrid fans)", "I’m absolutely excited to be chairing at this year's UCBMUN XX conference and I hope you are as excited as I am! We’ll make sure this conference will be a conference that you will never forget (in a positive way)! If you have any questions or concerns about the background guide or the committee in general, please feel free to email me.
", "Best Regards, ", "Kristine Kousherian"]


                   },
      "zanu" => {name: "Zimbabwe African National Union (ZANU)",
                 type: "Joint Crisis",
                 description: ["The era of European imperialism is gradually coming to an end, and with events as they are, it is not certain what the future of Africa will look like. Already there are splits within the ranks of the opposition to the white minority government of Rhodesia, creating the potential for a two-front conflict. Whether the land of Zimbabwe will thrive under the Maoist principles of ZANU, succumb to the Leninism espoused by ZAPU, or remain under the imperialist control of the Government of Rhodesia will be up to you to decide."],
                 chair: {name: "Amay Gupta", email: "zanu@ucbmun.org"},
                 cd: {name: "Jay Mahabal", email: "zanu@ucbmun.org"},
                 chair_letter: [
                   "Hello Delegates,", "Welcome to the ZANU committee in what is sure to be one of our greatest joint crisis committees ever – the Battle for the Heart of Africa! My name is Amay Gupta and I’m honored and excited to be your chair for this committee. I vice-chaired the JCC last year, the UNSC the year before, and was on the crisis team for the JCC my freshman year. I’m an Economics major, and have been in UCBMUN since the start of my undergraduate career. Besides UCBMUN, I am also involved in Berkeley Investment Group and non-profit healthcare work in my hometown of Los Angeles. I also enjoy investing in the stock market, learning international finance, and all things related to luxury sports cars.",
                   "I expect the tone of this committee to be serious and for this committee to test your knowledge of southern Africa. I hope each delegate will come to this committee with an array of knowledge about the subject. This committee topic is particularly exciting given my father grew up in the tumultuous Federation in Northern Rhodesia, albeit Indians were characterized as Europeans for land and voting purposes. I will not look favorably the members of the committee whose primary focus is sabotage rather than working towards defeating ZAPU and the white settler Ian Smith leadership that has plagued Rhodesia for too long. ",
                   "As UCBMUN’s JCC, this committee will test you with very quick, rapid crises. At the same time, you will have many opportunities to work with those around you as well as reach out to members of other committees to help effect change. I will ensure that the crisis team does a great job in matching the aims of this committee, and I am a very lax chair as long as everyone participates and moves debate forward. I will do my best to ensure your opinions for crisis arcs are reflected in updates, and will match the pace of the debate with what you all can handle. Please be prepared on day one with your positions ready, opening speeches memorized, and a strong willingness to participate. I will look favorably upon those that can balance strong personal crisis arcs, committee directive writing, public speaking skills, and rebuttal tactics.",
                   "If you have any questions, feel free to e-mail me. I look forward to seeing you all in the spring! ",
                   "Best,", "Amay Gupta"
                 ],
                 cd_letter: ["Dear Delegates,", "Welcome to the Battle for the Heart of Africa! My name is Jay Mahabal and I’m excited to be your Crisis Director this year. I’m currently a fourth-year Mathematics major with a minor in Geographic Information Systems and Technology. I’ve been involved in MUN since high school, and I’ve thoroughly enjoyed my time so far. This will unfortunately be the last committee I get to staff.", "Battle for the Heart of Africa promises to provide an engaging experience that allows you to scheme nefariously, but let it be known that all members of this committee are expected to devote their all towards our raison d’être: bringing down the regime. This committee has an incredible amount of power, and I fully expect you to use this power for the advancement of our mission. Still, you must do so responsibly. Your decisions impact Zimbabwe, Africa, and the world, and you have the ability to change history for the better – so do so.", "This committee will be very fast-paced, and crises will come rapidly. The fact that this committee is part of a JCC means that we have a plethora of pathways for success. You have an enormous amount of latitude, so this committee should be very fun – I’m excited!", "I look forward to seeing you in San Francisco, and feel free to email me any questions that you have.", "Yours,", "Jay Mahabal"]


      },
      "zapu" => {name: "Zimbabwe African People's Union (ZAPU)",
                 type: "Joint Crisis",
                 description: ["The Soviet-inspired Zimbabwe African People's Union (ZAPU) has recently parted ways with the Maoist Zimbabwe African National Union (ZANU), and Rhodesia has just declared its independence. ZAPU must decide how to respond to this historic injustice, while building its ideology and infrastructure to make its case for a revolution of the proletariat."],
                 chair: {name: "Or-el Vaknin", email: "zapu@ucbmun.org"},
                 cd: {name: "Sahil Gupta", email: "zapu@ucbmun.org"},
                 cd_letter: ["Dear Delegates,", "Welcome to UC Berkeley’s 20th annual Model United Nations Conference. My name is Sahil Gupta and I have the privilege of serving as your Crisis Director for the Zimbabwe African People’s Union (ZAPU) committee within JCC Rhodesia. ", "To provide some background on myself, I grew up in Sacramento, California and am currently a senior at UC Berkeley studying Economics and Computer Science. This is my fourth year in UCBMUN, and this is my first time serving as a Crisis Director for a JCC, while in my past three UCBMUN conferences I have chaired three JCCs. Outside of UCBMUN, I am involved in some of the finance organizations on campus, and professionally aspire to build a career in finance, having interned at Goldman Sachs within investment banking this past summer. Some of my hobbies on campus include playing tennis, hiking in the Berkeley Hills, and traveling. ", "I am extremely excited for JCC Rhodesia this year and am completely confident that delegates will bring the most creative and well-researched ideas to ensure the highest quality of debate. In years past I have chaired JCCs where each committee represents a different country, but this is the first time we are running a JCC domestic crisis. Keeping in mind this tumultuous time period for Zimbabwe, each party’s political aspirations, Cold War alignments and Zimbabwe’s internal strife, there are a multitude of factors to consider in preparing and debating for this committee, yet these also make this JCC one of the most exciting ones UCBMUN has yet seen. I look forward to meeting all of you this upcoming March and am excited to see the debate that ensues. If you have any questions in your preparation do not hesitate to reach out to me at ssgupta1994@berkeley.edu.", "Best,", "Sahil Gupta"],
                 chair_letter: ["Hello Delegates,", "Welcome to the Battle for the Heart of Africa! My name is Or-el Vaknin, and I will be the chairman of our committee. I’m a fourth-year political science major (focus in international relations) and a public policy minor, and I have been involved with Model UN for over two years. This will be the last committee I will help run, and I look forward to an action-packed time!", "With one eye forward and one back, the Battle for the Heart of Africa promises to be an exciting time. Working to enhance the lives of our workers and empower the proletariat is the ultimate goal of our committee, and it is expected that all will contribute to this goal. Violent revolutions can lead to amazing outcomes, and we must not shirk from the opportunity to bleed the Heart of Africa to make it stronger. Your decisions will impact the proletariat and the bourgeoisie alike, and you must consider each action carefully. Our rivals in ZANU will be just as unforgiving of mistakes as the Rhodesian Government, and we must tread carefully.
", "This committee will move very quickly, and requires rapid thinking. Coordination between committees will be essential to the outcomes, and I as chair will coordinate with the Crisis Director to make the experience as efficient and smooth as possible. We hope you find this committee as exciting as we do!", "I look forward to seeing you in San Francisco. I am happy to answer questions via email, best of luck to you all!", "Best,", "Or-el Vaknin"]
                 }
               }

  end

end
