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

end
