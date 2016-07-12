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
      {name: "Registration", time: "3:30pm - 6:30pm"},
      {name: "Model UN 101", time: "4:30pm - 6:00pm"},
      {name: "Opening Ceremonies", time: "7:00pm - 7:45pm"},
      {name: "Committee Session I", time: "8:00pm - 10:00pm"},
      {name: "Committee Feedback for Head Delegates", time: "10:15pm - 10:45pm"},
      {name: "Bear Crawl", time: "11:00pm - 1:00am"}
    ]

    @friday_schedule = [
      {name: "Committee Session II", time: "1:00pm - 5:00pm"},
      {name: "Advisor Feedback Forum", time: "3:00pm - 3:30pm"},
      {name: "Dinner", time: "5:00pm - 6:15pm"},
      {name: "Committee Session III", time: "6:15pm - 9:15pm"},
      {name: "Committee Feedback for Head Delegates", time: "9:30pm - 10:00pm"},
      {name: "Jazz Night", time: "10:00pm - 1:00am"}
    ]

    @saturday_schedule = [
      {name: "Committee Session IV", time: "10:00am - 1:00pm"},
      {name: "Advisor Feedback Forum", time: "11:30am - 12:00pm"},
      {name: "Committee Feedback for Head Delegates", time: "1:15pm - 1:45pm"},
      {name: "Lunch", time: "1:00pm - 3:00pm"},
      {name: "Committee Session V", time: "3:00pm - 7:00pm"},
      {name: "Delegate Soiree", time: "10:00pm - 2:00am"}
    ]

    @sunday_schedule = [
      {name: "Closing Ceremonies", time: "10:00am - 12:00pm"}
    ]

    @event_rooms = [
      {name: "Head Delegate Feedback", time: "2nd Floor, Mason 1"},
      {name: "MUN 101", time: "2nd Floor, Montgomery"}
    ]

    @sbs_rooms = [
        {name: "World Social Forum:", time: "4th Floor, Pine"},
        {name: "NFL Owners' Meeting:", time: "4th Floor, Columbus 3"},
        {name: "Legal Committee:", time: "4th Floor, Columbus 2"},
        {name: "DISEC:", time: "4th Floor, Columbus 1"},
        {name: "General Assembly:", time: "3rd Floor, Grand Ballroom"}
    ]

    @crisis_rooms = [
        {name: "The Ad Hoc Committee of the Secretary-General", time: "2nd Floor, Pyramid"},
        {name: "A Clash of Three Kingdoms:", time: "1st Floor, Valencia"},
        {name: "Obama Unleashed or Rejected:", time: "1st Floor, Embarcadero"},
        {name: "Conquering the Web:", time: "2nd Floor, Davis"},
        {name: "No King but Caesar:", time: "1st Floor, Grant"},
        {name: "Colombia:", time: "2nd Floor, Sansome"},
        {name: "The Rolex 12:", time: "1st Floor, PDR"},
        {name: "UN Security Council:", time: "2nd Floor, Washington"},
        {name: "Cabinet of the Iron Lady:", time: "2nd Floor, Front"},

    ]

    @jcc_rooms = [
        {name: "The Government of Rhodesia", time: "2nd Floor, Mason 1"},
        {name: "Zimbabwe African National Union:", time: "2nd Floor, Mason 2"},
        {name: "Zimbabwe African People's Union:", time: "2nd Floor, Montgomery"}

    ]
  end

  def load_sbs
    @sbs = {
      "disec" => {name: "DISEC:",
              subtitle: "The First Committee of the United Nations General Assembly",
              type: "Specialized Body",
              description: [""],
              chair: {name: "Hassan Ayub", email: "disec@ucbmun.org"},
              chair_letter: [""]
            },
      "unesco" => {name: "UNESCO:",
                    subtitle: "Media Pluralism & Sexual Literacy in the 21st Century",
                    type: "Specialized Body",
                    description: ["UNESCO makes its way to UCBMUN XXI as delegates from the international community come together in the 2017 United Nations Educational, Scientific and Cultural Organization committee. The Executive Board of UNESCO is calling the commencement of the 39th session for the general conference with the gathering of member states and associate members, observers for non-member states, intergovernmental organizations, and non-governmental organizations (NGOs) in order to establish equal representation and quality discussions on the pressing topics of censorship and sexual education.",
                      "UNESCO is both striving to protect the freedom of expression, an essential characteristic of democracy, development, and human dignity, and leading the mobilization of quality sexual education in order to lead the change for female empowerment, for upholding human rights, and for improving health equity. Delegates in this committee will be prompted to address and discuss these controversial topics in hopes of sparking a deeper and meaningful insight that can extend to even outside this committee. The incorporation of guest appearances by non-governmental organizations (NGOs) will serve as opportunities for delegates that will also add to this unique MUN experience, stimulating the flow of debate and constantly changing the focus of the topics."],
                    chair: {name: "Dianne Chung", email: "unesco@ucbmun.org"},
                    chair_letter: [""]
                  },
      "fao" => {name: "FAO 2020:",
                subtitle: "Balancing Aid, Energy, and Security",
                type: "Specialized Body",
                description: ["Welcome to the FAO: the Food and Agricultural Organization committee! The head of the FAO, José Graziano da Silva, has called delegates from member countries across the world to debate two pertinent and pressing topics: food and energy security and food aid to developing countries. Delegates can expect to hear viewpoints from across the world, as all five geopolitical groups will be represented. With 800 million people hungry in the status quo and the human population expected to reach 8.7 billion by 2030, it is imperative to discuss sustainable and realistic ways to feed and fuel the planet. Not only this, it is crucial to take a look at one of the main tools utilized by organizations to help developing countries, food aid, and see its positive or negative effects.",
                  "Unlike prior editions, this meeting of the FAO will be exhilarating and unique not only because of the in depth nature of the committee, but also because the committee will simulate 10 years of international food-related events (from 2020 to 2030)."],
                chair: {name: "Austin Smith", email: "fao@ucbmun.org"},
                chair_letter: ["My name is Austin Smith and it is my pleasure to be your chair for UCBMUN XXI. I am excited to head one of the most important agencies in the United Nations: the Food and Agricultural Organization (FAO). This year’s committee is one that finds itself on the crossroads of prosperity and poverty. It will push delegates to internalize the issues at hand and come up with innovative, unique, and pragmatic solutions. I come into this committee with high expectations, given the magnitude of these issues, and I encourage delegates to think critically, openly, and rationally about the problems at hand.",
                  "As for me, I am a second year majoring in Political Science with a concentration in Comparative Politics and a double minor in History and Public Policy. Born and raised in Southern California, I hail from the warm and sunny city of Huntington Beach. This is my sixth year in MUN and my second year serving as a dias member. Additionally, I am serving my first term as IRC representative of UCBMUN. Outside of MUN, I assist my high school in Speech and Debate activities and coach a boys & girls basketball team in the summer. In my spare time, I religiously follow basketball, baseball, and football (I am a passionate Lakers, Angels, and Chargers fan who yes, knows it is a terrible time to be a fan of these teams), read political and historical books, and watch political documentaries. I enjoy traveling, working out, meeting new people, debating, and learning new things.",
                  "I am excited to meet all of you in committee and I look forward to a fun and enjoyable conference. If you have any questions or concerns, feel free to contact me."],
              },
      "legal" => {name: "Trial of the Juntas:",
                  subtitle: "Defining Justice after the Direty War",
                  type: "Specialized Body",
                  description: ["This year’s legal committee will take on the Trial of the Juntas in Argentina’s Cámara Court, in which 68 former military junta members will be tried for crimes committed during the Dirty War. The Dirty War, also known as La Guerra Sucia, was a period of state terrorism in which the junta sought to eliminate all left-wing political dissidents via kidnappings, torture, and detention camps and resulted in over 30,000 civilian disappearances. The court will hear witness and exert testimonies, review evidence, consider historical precedence and regional context, and ultimately decide not just on the culpability of these junta members but also the extent and allocation of that culpability. The Cámara Court will be placed in the interesting position of having to define superior-subordinate criminal responsibility. What is the extent to which responsibility flows from superiors from subordinates, and what is the extent to which superior responsibility excuses the actions of subordinates? How will the court allocate guilt among a hierarchical military body in a way that deters future human rights violations while also promoting stability? These probing legal questions are just a few of many issues the court will wrangle with in one of Latin America’s most famous trials."],
                  chair: {name: "Wendie Yeung", email: "legal@ucbmun.org"},
                  cd: {name: "Anthony Miller", email: "legal@ucbmun.org"},
                  cd_letter: [""],
                  chair_letter: [""]
                },
      "nba" => {name: "NBA Owners Meeting 1989:",
                subtitle: "Building a Global Game",
                type: "Specialized Body",
                description: ["Amidst the booming success of the Golden State Warriors, UCBMUN XXI will come together to hold the 1989 NBA Owners Meeting. As the NBA is slowly growing into its role as the third most popular sport in the country, the NBA owners and stakeholders want more. With an expiring TV deal and numerous new teams, the NBA is poised for an explosion of popularity, but the owners must work to create a product that is appealing to people in the United States and abroad. The committee will be revolving around 3 major topics: expansion of the game, player conduct, and racial tensions. The goal of this committee is not to deal with gameplay rules, but rather to focus on the underlying business that drives the NBA forward.",
                  "This committee will consist of all 27 owners, television executives, and a variety of other NBA representatives who will work together to come up with a sustainable plan to expand the NBA for the upcoming decade and beyond. This committee will have all the elements of traditional specialized body along with some faster paced updates to accelerate the pace of committee. It is the goal of this committee to stay true to the age old adage, \"Ball is life.\""],
                chair: {name: "Vaibhav Srikaran", email: "nba@ucbmun.org"},
                chair_letter: [""]
              }
    }
  end

  def load_crises
    @crises = {
        "adhoc" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: [""],
                    chair: {name: "Alice Ma", email: "adhoc@ucbmun.org"},
                    cd: {name: "Roya Azarkeyvan", email: "adhoc@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
        "unsc" => {name: "The United Nations Security Council: ",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["Probably one of the most significant diplomatic accomplishments in recent years, the Iran Nuclear Deal is now coming to UCBMUN. The United Nations Security Council has been tasked with reaching a deal regarding the Iranian Nuclear Program, while also addressing related regional issues. Hence, all delegates must seek to achieve a resolution, while also understanding how the deal will impact their respective nations.",
                    "Delegates in this committee should understand the importance of science informing policy. The Iranian Nuclear Deal was a discussion between many different disciplines. As a result, any committee member should have a very basic understanding of related science, because it will directly play a part in negotiations. This committee will be very substantive to reflect the importance this deal has on the global political landscape."],
                    chair: {name: "Luke Sammarone", email: "unsc@ucbmun.org"},
                    cd: {name: "Will Kable", email: "unsc@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
        "teutonic" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["The Knighthood of the Teutonic Order gathers at UCBMUN as delegates from around the nation come together in this 13th century European committee. The Hochmeister has been killed, and you, as the most influential knights, priests, and sergeants of the Order form the capitulum to elect his successor. Using your best diplomatic and combative skills, you, the Knights of the Teutonic Order, will fight to establish your own theocratic state in the lands of the pagan Old Prussians, deal with the treacherous enemies of different faiths and ethnicities pushing in from all sides, and spread the one true Faith to all in Europe.",
                    "Delegates in this committee can expect a unique MUN experience of royal and grand proportions. This one-of-a-kind crisis committee based on historical events will be one part combat, one part nation building, one part foreign diplomacy and one part internal politicking the knights of the Teutonic Order work to bring Christianity to the pagans across Northern Europe. This committee’s fast-paced nature and unique 13th century historical aspect will ensure that delegates have a memorable experience."],
                    chair: {name: "Ananya Sreekanth", email: "teutonic@ucbmun.org"},
                    cd: {name: "Sachin Holdheim", email: "teutonic@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
        "mormons" => {name: "Building Zion:",
                    subtitle: "Mormon Pioneers and the Founding of Utah",
                    type: "Crisis",
                    description: ["It was a 19th Century version of the Exodus story: following persecution, violence, and the murder of their founder Joseph Smith, the believers of the newly organized Church of Jesus Christ of Latter-Day Saints saw no choice but to flee civilization. After a trek of thousands of miles, crossing the harsh mountains and deserts of the American West, the Mormon pioneers entered the Salt Lake Valley on July 24th, 1847. Looking over the barren, dry desert, Brigham Young declared, “This is the right place” – the place that would provide the Mormons with sanctuary at last. As leaders of the church, this remote Utah territory offers delegates the opportunity to build the ideal Mormon society from the ground up. But the task will not be easy: radical factions of the church, warring Native Americans, and a meddling federal government lurk at every turn. Will Utah prove to be the Promised Land – or will the forces of the desert and religious fervor prove to deadly? "],
                    cd: {name: "Austin Weinstein", email: "mormons@ucbmun.org"},
                    chair: {name: "Grayson Dimick", email: "mormons@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
          "mexico" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["It is 1910, Porfirio Diaz and his regime have been in power for 34 years and with that regime, his loyal and powerful cientificos. These men are the future of a glorious Mexico and ensure progress and prosperity for a nation that has too long been under the heel of another country. However, not everyone agrees and revolution is in the air. Northerners, distressed over labor discrepancies, are beginning to mass around Francisco Villa. Southern indigenous peasants have begun to turn to Emiliano Zapata to save them from the brutal life of the haciendas. It is up to the cientificos to ensure that Mexico survives and continues to progress, no matter the cost. Alliances must be struck with anyone, including the United States, and even Mexico’s former conquerors. Betrayal, greed, power! Any and all must be utilized if the cientificos are to remain supreme!"],
                    chair: {name: "Noah Gerber", email: "mexico@ucbmun.org"},
                    cd: {name: "Aric Chang", email: "mexico@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
        "lenin" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["The death of Lenin was perhaps one of the most intriguing transfers of power in history. As the first leader of the USSR, Lenin utilized his charisma and intellect to radically transform a vast nation that was on the brink of turmoil. Yet, after his untimely death, his line of succession was unclear. When Lenin’s health was declining in early 1923, he dictated 'Lenin's Testament', which contains his opinions on others in powerful position. He denounced Stalin, asking for his removal as General Secretary of the Communist Party, deeming him ill-suited for the position. He praised Trotsky,  whom he called \"the most capable man in the present Central Committee.\" However, as we know, Stalin succeeded Lenin. Why? This tale is one of power, backstabbing, death, and Machiavellian politicking. In our committee, we begin with Lenin’s demise. Who will succeed Lenin and how will the future of Russia unfold? That’s up to the Central Committee of the Communist Party to decide.",
                      "Delegates in this revolutionary committee will come face-to-face with leftist opposition, post-WWI international pressures, the drafting of the 1924 Soviet Constitution, internal Party power tradeoffs, and the inner workings of history’s first large-scale communist experiment.",
                      "In the game of politics, there are winners and losers (just ask Donald Trump), and with regards to the near absolute power associated with leadership of the USSR, politics unsettlingly resembles a zero-sum game. In order to gain control, delegates must win powerful allies, but not ones that are too ambitious, and they must crush all other formidable delegates. It sounds brutal and selfish, but here in Soviet Russia, everything is done for the good of the proletariat, right? To that we exclaim, \"Workers of the world, unite!\""],
                    chair: {name: "Zubin Koticha", email: "lenin@ucbmun.org"},
                    cd: {name: "Megan Conner", email: "lenin@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
            "maumau" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["The Mau Mau Uprising constitutes a historic conflict between predominantly Kikuyu rebel groups that challenged the authority of British rule in Kenya. Beginning in 1952, it is today considered one of the bloodiest and most aggressive conflicts in modern history. Sparked by inequality, unemployment, and African nationalism, the efforts of Dedan Kimathi and his rebels served as a model for independence movements across the continent. However, in the face of battle, will the rebels cope with increasing food insecurity among their men,  how will the British forces fare in the unfamiliar and mountainous territory that is Kenya, and will the rebels’ innovative fighting techniques prove successful to set forth: \"The Beginning of the End of British Kenya.\"",
                      "Delegates, this bespoke committee will offer you the ability to play a crucial part in the creation of our modern-day Africa. Indeed, with the help of the crisis committee your respective portfolio powers you will immerse yourself in the world of the Kikuyu and their struggle to liberate their homeland. This committee is expected to be fast paced and action packed- we have many crisis updates in store! Will the British lose their grip on their Kenyan colony or will they outsmart the rebels and remain in power? Bahati nzuri!"],
                    chair: {name: "Rahim Daya", email: "maumau@ucbmun.org"},
                    cd: {name: "Nuh Bahemia", email: "maumau@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
        "hongkong" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["The year is 1967. For over a hundred years, Hong Kong has been a prosperous colony of the British Empire, the Pearl of the Orient. Yet times are changing. In the aftermath of the Second World War, decolonization has become the prevailing norm. With each passing day it becomes more and more difficult to justify the retention of Hong Kong as a Crown Colony. Across the border in China, Mao Zedong’s Cultural Revolution has plunged the nation into turmoil. As the effects of leftist unrest spills into Hong Kong, the British Governor, Sir David Trench, has called to order a meeting of the Hong Kong Executive Committee to address the upheavals which now threaten the very survival of colony. It is now up to you, delegates, to decide the future of Hong Kong, and ensure that the sun will never set on the British Empire!"],
                    chair: {name: "Ishaan Madan", email: "hongkong@ucbmun.org"},
                    cd: {name: "William Chu", email: "hongkong@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
          "bangladesh" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["\"Those who don’t study history are doomed to repeat it. Those who do study history are doomed to stand by helplessly while others repeat it.\" If there exists a single truth in all of human history, it is the truth that history will repeat itself over and over again. It comes to no surprise that in 1971, only 24 years after the threat of marginalization in a larger India caused its Muslim minority to create an independent nation of Pakistan, the Bengali minority in Pakistan, belonging to the nation’s Eastern wing are longing for a nation of their own. As members of the 1971 East Pakistan Bengali Liberation Committee, you will be starting proceedings on March 26, 1971, the day after “Operation Searchlight,” a genocidal military operation undertaken by the Pakistani Military in Dhaka, East Pakistan, had killed thousands of Bengali civilians. The state of affairs in Pakistan’s Eastern Wing, the home of ethnic Bengalis, is the culmination of more than 20 years of political and social history. From the denial of Bangla as the state language, to the severe underfunding of government programs in East Pakistan, and the lack of state support in the wake of the calamitous 1970 Bhola Cyclone, the economic, cultural, and political marginalization of the Bengali majority East Pakistan by the more powerful West Pakistan had left of unity of Pakistan as a whole in a precarious position.",
                      "Following 13 years of military dictatorship in Pakistan, Sheikh Mujibur Rahman, a Bengali from East Pakistan lead his Awami League party to capturing 167 out of the 169 parliament seats awarded to East Pakistan in the Pakistani general election. As a result of his landslide win, Mujib was constitutionally expected to become Prime Minister of Pakistan and form a new government. However, elites in West Pakistan would not allow a Bengali to lead the country and instead favored that a Prime Minister be present in both “Wings.” After a deadlock in discussion with Yahya Khan, the head of the military, and Zulfikar Ali Bhutto, head of West Pakistan’s majority party, Mujib called for Bengali independence on March 7, 1971. In the aftermath of his famous speech, East Pakistan descended into chaos, as a mass movement to form a new country took hold. Following Mujib’s arrest by the military, and “Operation Searchlight,” the delegates now find themselves in a country on the verge of collapse. Before his arrest, Mujib declared East Pakistan as an independent and new country called “Bangladesh.” The committee will be functioning in an emergency government format, with non-governmental figures also present to represent various peoples and interests. As influential social, political, and military figures in East and West Pakistan, it is imperative that the delegates in the committee take decisive actions to shape the fate of East and West Pakistan and bring a resolution to the current critical situation."],
                    chair: {name: "Shakeer Ahmad", email: "bangladesh@ucbmun.org"},
                    cd: {name: "Gustavo De Leon", email: "bangladesh@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
          "asiafin" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["It is May 14, 1997, and East Asia’s once prosperous region faces its most formidable challenge in decades. After years of unhindered economic growth, cracks are being seen as Thailand spends billions of dollars of its foreign reserves to protect its currency against speculative attacks. It is expected that the other “Asian Tiger” states are to follow down this rocky path. Even the leading economies of Japan and South Korea, alongside the international community, are alarmed of their own economic futures. Perhaps above all else, the people of East Asia are becoming more anxious and fearful of their futures by the day. Are state revolutions on the horizon? It remains up to the delegates of this committee to guide the path of the world’s most rapidly developing region in its most tumultuous time."],
                    chair: {name: "Victoria Lu", email: "asiafin@ucbmun.org"},
                    cd: {name: "Adam Braver", email: "asiafin@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
          "thailand" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: ["The Kingdom of Thailand in 2013-14 went through a period of political turmoil never before seen in its history. The two years saw a proposed amnesty bill for a Prime Minister ousted in the 2006 Coup, the resignation of 153 opposition party Members of Parliament, and the dissolving of the House of Representatives. While all of this political turmoil was happening, protesters instigated a “shutdown” of Bangkok with demonstrators occupying government offices, the government declared a State of Emergency, and finally the Royal Thai Army declared Martial Law throughout Thailand and ultimately staged a coup d’état on the 22nd of May, 2014. The Pheu Thai party have had their last four elected governments removed from power before completing their terms and it will be up to the members of this committee to ensure that it will not be a fifth. Meanwhile, the Royal Thai Army have had to instigate a coup d’état in 2006 against the brother of the current Prime Minister and it will be in its interest to come to an end result where it does not need to seize power again for the security of Thailand.",
                      "The committee will open in the winter of 2013-14, when the protests were at their peak in Thailand. The committee will have to come up with an adequate response to the demands of the protesters while also satisfying the various legal battles they have against impeachment. The military will also have to decide whether protests have gotten to a point where it feels it needs to step in and take power, and can be either a divisive or unifying force in committee. The Bangkok Shutdown will be a spectacular and complex ride, joining in questions of state legitimacy, government corruption, and economic turmoil all tied up in the ribbon that could be Thailand’s next and twelfth coup d’état. "],
                    chair: {name: "Disha Subramanian", email: "thailand@ucbmun.org"},
                    cd: {name: "Raymond King", email: "thailand@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },


    }
  end

  def load_jcc

    @jcc = {
        "government" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: [""],
                    chair: {name: "Alice Ma", email: "adhoc@ucbmun.org"},
                    cd: {name: "Roya Azarkeyvan", email: "adhoc@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },
        "rebels" => {name: "The Ad Hoc Committee",
                    subtitle: "of the Secretary-General",
                    type: "Crisis",
                    description: [""],
                    chair: {name: "Alice Ma", email: "adhoc@ucbmun.org"},
                    cd: {name: "Roya Azarkeyvan", email: "adhoc@ucbmun.org"},
                    cd_letter: [""],
                    chair_letter: [""]
                  },

               }

  end

  def load_all_sbs_styles
    @sb_all_styles = {
      "disec" => {
        tag: "disec",
        name: "DISEC:",
        subtitle: "The First Committee of the United Nations General Assembly",
        container: "sb-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;",
      },
      "unesco" => {
        tag: "unesco",
        name: "UNESCO:",
        subtitle: "Media Pluralism & Sexual Literacy in the 21st Century",
        container: "sb-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;",
      },
      "fao" => {
        tag: "fao",
        name: "FAO 2020:",
        subtitle: "Balancing Aid, Energy, and Security",
        container: "sb-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;",
      },
      "legal" => {
        tag: "legal",
        name: "Trial of the Juntas:",
        subtitle: "Defining Justice after the Dirty War",
        container: "sb-container-2",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "nba" => {
        tag: "nba",
        name: "NBA Owners Meeting 1989:",
        subtitle: "Building a Global Game",
        container: "sb-container-2",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
    }
  end

  def load_all_cc_styles
    @cc_all_styles = {
      "thailand" => {
        tag: "thailand",
        name: "Thailand 2014:",
        subtitle: "The Bangkok Shutdown",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "mormons" => {
        tag: "mormons",
        name: "Building Zion:",
        subtitle: "Mormon Pioneers and the Founding of Utah",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "bangladesh" => {
        tag: "bangladesh",
        name: "Bangladesh",
        subtitle: "Independence",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "asiafin" => {
        tag: "asiafin",
        name: "Paper Tigers:",
        subtitle: "The Asian Financial Crisis of 1997",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "hongkong" => {
        tag: "hongkong",
        name: "Containing the Pearl of the Orient:",
        subtitle: "Hong Kong 1967",
        container: "cc-container-2",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "maumau" => {
        tag: "maumau",
        name: "The Mau Mau Uprising:",
        subtitle: "The Beginning of the End of British Kenya",
        container: "cc-container-2",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "mexico" => {
        tag: "mexico",
        name: "Los cientificos!",
        subtitle: "The Mexican Rebellion",
        container: "cc-container-2",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "teutonic" => {
        tag: "teutonic",
        name: "The Knighthood",
        subtitle: "of the Teutonic Order",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "lenin" => {
        tag: "lenin",
        name: "The Death of Lenin:",
        subtitle: "Sustaining the Revolution",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "unsc" => {
        tag: "unsc",
        name: "The Security Council:",
        subtitle: "2015",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "adhoc" => {
        tag: "adhoc",
        name: "The Ad Hoc Committee",
        subtitle: "of the Secretary-General",
        container: "cc-container-1",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      }
    }
  end

  def load_all_jcc_styles
    @jcc_all_styles = {
      "government" => {
        tag: "government",
        name: "The Egyptian Revolution:",
        subtitle: "Government",
        container: "jcc-container",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
      "rebels" => {
        tag: "rebels",
        name: "The Egyptian Revolution",
        subtitle: "Rebels",
        container: "jcc-container",
        style: "background-position: 50% 50%; -webkit-background-size: cover;"
      },
    }
  end


end
