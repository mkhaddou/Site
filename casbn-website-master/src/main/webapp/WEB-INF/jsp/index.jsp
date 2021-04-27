<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!--
  THE WEBSITE WAS DESIGNED AND CREATED FOR CASBN BY BIZHTECH (www.bizhtech.com)
  CONTACT: bizhtech1@gmail.com

  BIZHTECH IS NOT RESPONSIBLE AND WILL NOT BE HELD RESPONSIBLE IN ANY COURT OF LAW FOR ANY USE OF COPYRIGHTED CONTENT ON THIS WEBSITE OR BY CASBN THAT MAY RESULT IN BREACH OF ANY INTELLECTUAL PROPERTY RIGHTS
  CASBN IS RESPONSIBLE FOR ENSURING THAT THEY HAVE THE RIGHT TO PUBLISH THE CONTENT, MEDIA, VISIUALS OR ANYTHING ON THIS WEBSITE
  COPYRIGHT CASBN
  -->

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>CASBN</title>
  <link rel="icon" href="images/favicon.png">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- Font Awesome CSS -->
  <script src="https://kit.fontawesome.com/b58b7ae888.js" crossorigin="anonymous"></script>

  <!--FONT-->
  <link href="https://fonts.googleapis.com/css2?family=Sarabun&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">

  <!--AOS stylesheet-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/index.css" rel="stylesheet">
  <link href="css/glide.core.min.css" rel="stylesheet">
  <link href="css/glide.theme.min.css" rel="stylesheet">
  <link href="css/modalStyles.css" rel="stylesheet">

</head>

<body>
  <div id="preloader" class="navbar-brand">
    <div class="row justify-content-center">
      <img src="images/logo/logoBlue.png">
    </div>

  </div>
  <!--START OF NAVIGATION -->
  <nav class="navbar fixed-top navbar-expand-lg fixed-top" id="topnav">
    <div class="container-fluid mx-5">
      <a class="navbar-brand" href="/"><img src="images/logo/logoTxtBlue.png"></a>
      <button onclick="openNav()" class="navbar-toggler navbar-toggler-right" type="button">
        <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
      </button>
      <div class="collapse navbar-collapse text-center" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
     
          <li class="nav-item bl">
            <a class="nav-link active" href="#intro" onclick="closeNav()">Home</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/ourproduct" onclick="closeNav()">Our Product</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Features
            </a>
            <div class="dropdown-menu dropdown-menu-right bl" aria-labelledby="navbarDropdownPortfolio" id="navbarDropdown-content">
              <a onclick="closeNav()" class="dropdown-item bl" data-toggle="modal" href="#newsModal">News Feed</a>
              <a onclick="closeNav()" class="dropdown-item bl" data-toggle="modal" href="#teamModal">Team Channels</a>
              <a onclick="closeNav()" class="dropdown-item bl" data-toggle="modal" href="#webinarModal">Webinars</a>
              <a onclick="closeNav()" class="dropdown-item bl" data-toggle="modal" href="#collabModal">Collaboration Tools</a>
              <a onclick="closeNav()" class="dropdown-item bl" data-toggle="modal" href="#fsModal">File Sharing</a>
              <a onclick="closeNav()" class="dropdown-item bl" data-toggle="modal" href="#dcModal">Document Collaboration</a>
            </div>
          </li>
          
          <li class="nav-item bl">
            <a class="nav-link" href="/blog" onclick="closeNav()">Blog</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/pricing" onclick="closeNav()">Pricing</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/Contact" onclick="closeNav()">Contact Us</a>
          </li>
       <li class="nav-item">
            <a href="https://app.casbn.com/#/auth/sign-in" target="_blank" type="button" class="btn btn-dark" name="button">Sign in</a>
          </li>
          <li class="nav-item">
            <a href="https://app.casbn.com/#/auth/register" target="_blank"  type="button" class="btn btn-info" name="button">Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- END OF NAVIGATION -->


  <!--START OF LANDING CONTENT -->
  <section id="landingContent">
    <div class="container">
      <div class="row">
        <div class="col-md-8 order-2 order-lg-1 order-md-1">
          <img class="img-fluid" id="heroImg" src="images/others/landing_hero.jpg" alt=""> <!--750 X 400 Banner of Application -->
        </div>
        <div class="col-md-4 order-1 order-lg-2 order-md-2">
          <div class="row justify-content-center">
            <a href="#home">
              <div class="centering">
                  <img id="heroLogo" src="images/logo/logoBlue.png" alt="" class="img-fluid" data-aos="zoom-in">
              </div>
            </a>
          </div>
          <div class="row justify-content-center">
            <h5 class="text-center txtShadow" data-aos="zoom-in">The Official App</h5>
          </div>
          <div class="row justify-content-center">
            <h4 class="text-center txtShadow" data-aos="zoom-in">Redefine your organization's collaboration tools</h4>
          </div>
          <div class="row justify-content-center">
           <a href="https://app.casbn.com/#/auth/register"  target="_blank"  class="btn btn-primary shadow" id="getStartedBtn" data-aos="zoom-in">GET STARTED</a>
          </div>
        </div>
      </div>

      <div class="glide" id="glide1">
         <div class="glide__track" data-glide-el="track">
           <ul class="glide__slides">
             <li class="glide__slide shadow">
               <div class="text-center">
                 <img class="img-fluid" src="images/icons/icon-1.png" alt="Card image cap">
                 <h1>Creative Ideas</h1>
                 <p>CASBN offers online collaboration solutions to increase productivity in workplace modernization. It offers an abundance of solutions on a single platform to help you build strong connections and propel business results without a glitch.</p>
               </div>
             </li>
             <li class="glide__slide shadow">
                <div class="text-center">
                  <img class="img-fluid" src="images/icons/icon-2.png" alt="Card image cap">
                  <h1>Low Cost</h1>
                  <p>A single tool serving all your collaboration needs. You no longer have to switch between apps, as all features like messaging, audio and video calling, group file sharing, screen sharing have been integrated on a single platform.</p>
                </div>
             </li>
             <li class="glide__slide shadow">
               <div class="text-center">
                 <img class="img-fluid" src="images/icons/icon-3.png" alt="Card image cap">
                 <h1>Teamwork</h1>
                 <p>Keep track of all the tasks and review the same by commenting, sharing your views, and by responding to the queries of your team members from any place on a single platform. Teamwork is essential to continual coordination.</p>
               </div>
             </li>
             <li class="glide__slide shadow">
               <div class="text-center">
                 <img class="img-fluid" src="images/icons/icon-4.png" alt="Card image cap">
                 <h1>Online Support</h1>
                 <p>Get in touch with us anytime you need help. Training videos will also be updated every day.You can also enable event analytics to analyze the performance of your webinar which will also help you in generating reports with important metrics.</p>
               </div>
             </li>
           </ul>
         </div>
      </div>
  </section>
  <!--END OF LANDING CONTENT -->

  <!--START OF BEST SOLUTIONS -->
  <section id="bestSol">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6" data-aos="fade-down">
          <h2>Provide the Best Solutions to Improve your Business</h2>
          <h4>Create some exclusive way to solve our customer problems</h4>
          <a href="https://app.casbn.com/#/home/company-register" class="btn btn-primary animateFadeIn shadow" id="getStartedBtn" target="_blank">Let's start</a>
        </div>
        <div class="col-lg-6 col-md-6" data-aos="fade-up">
          <p>CASBN offers impeccable cost-effective solutions to help organizations stay connected. It enables true collaboration for teams or individuals within your organization and establishes secure communication among each individual or teams at your workplace. With the current pandemic scenario, every organization has adapted themselves to telecommuting or working from home, which adds a lot of challenges to communication. To deal with every situation, CASBN proves to be an efficient communication bridge that helps individuals or teams to collaborate effortlessly, whether at office, at home or anywhere. </p>
        </div>
      </div>
    </div>
  </section>
  <!--END OF BEST SOLUTIONS -->

  <!--START OF FEATURES-->
  <section id="features">
    <div class="heading">
      <h2 class="text-center"><u>Features</u></h2>
      <hr>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-4 justify-content-right" id="ftDesc">
          <div class="row" id="leftFeatures" data-aos="fade-up">
            <h1 id="teamFt">Team Channels<a data-toggle="modal" href="#teamModal"><span><i class="fas fa-users"></i></span></a></h1>
            <p>With more people power, come more ways of beating the impossible. Break out the silo and hangout in personalized meeting rooms at CASBN. Collaborate with the expert brains in your team to achieve your tasks and learn new stuff.</p>
            <button type="button" class="btn btn-primary" name="button" data-toggle="modal" data-target="#teamModal">Read more</button>
          </div>
          <div class="row" id="leftFeatures" data-aos="fade-up">
            <h1 id="newsFt">Newsfeed<a data-toggle="modal" href="#newsModal"><span><i class="fas fa-desktop"></i></span></a></h1>
            <p>A space to stay socially connected with upcoming events within your organization. Keep an eye out here to join us in our exciting journey in achieving the best for you.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#newsModal" name="button">Read more</button>
          </div>
          <div class="row" id="leftFeatures" data-aos="fade-up">
            <h1 id="webinarFt">Webinars<a data-toggle="modal" href="#webinarModal"><span><i class="far fa-window-restore"></i></span></a></h1>
            <p>Experience the expertise of delivering or receiving teachings on the most interesting topics while sitting in your comfort space.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#webinarModal" name="button">Read more</button>
          </div>
        </div>
        <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="150">
          <img class="img-fluid center-img" src="images/projectImages/mobileMockup.png" alt=""> <!--width: 390 height: 627-->
        </div>
        <div class="col-lg-4" id="ftDesc">
          <div class="row" id="rightFeatures" data-aos="fade-up">
            <h1 id="collabFt"><a data-toggle="modal" href="#collabModal"><span><i class="fas fa-toolbox"></i></span></a>Collaboration Tools</h1>
            <p>CASBN Collaboration tools are essential to achieve proper communication in any organization Collaborate and communicate with our range of tools.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#collabModal" name="button">Read more</button>
          </div>
          <div class="row" id="rightFeatures" data-aos="fade-up">
            <h1 id="fsFt"><a data-toggle="modal" href="#fsModal"><span><i class="fas fa-file-export"></i></span></a>File Sharing</h1>
            <p>CASBN file sharing enables you to share file data while ensuring data security. Whether you need to share files to an individual or a group, we have you covered!</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fsModal" name="button">Read more</button>
          </div>
          <div class="row" id="rightFeatures" data-aos="fade-up">
            <h1 id="dcFt"><a data-toggle="modal" href="#dcModal"><span><i class="far fa-file"></i></span></a>Document Collaboration</h1>
            <p>With CASBN Document Collaboration, multiple people can work on a single document and perform a collective job. It gets better as you can now add real-time feedback and valuable bits while working out of different locations.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#dcModal" name="button">Read more</button>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--END OF FEATURES-->

  <!-- Start of Modals -->
  <!-- Modal START-->
  <div class="modal fade bd-example-modal-lg" id="teamModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Team Channels</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <img class="img-fluid" src="images/projectImages/features_teamChannels.jpg" alt="">
              </div>
              <div class="col-md-12">
                <h3 class="my-3">Team Channels</h3>
                <p>Channels are the medium where ideas are filtered, and designs are executed. Casbn team channels has been designed with attractive features that drive communication and increase productivity. You have the flexibility to categorize your audience and have various and multiple channels when using Casbn. For example, you could create a public channel if you needed to communicate to all members of the organization globally or if you wish to share an information with everyone. Or, you could create a private channel for specific teams within your organization to share information that is only specific to certain group of people. A channel each for finance, marketing, manufacturing, and so on. Communication is an integral part of any business or organization. To uphold this integrity emails alone are not sufficient. Casbn is an advanced communication platform that brings together the messenger, audio and video calling, screen sharing, whiteboarding, and many such features under a single platform, making the communication more efficient and user-friendly.</p>
                <h3 class="my-3">Team Channel Task</h3>
                <p>With Team Channels Task feature you could break down the high-end tasks into subtasks and prioritize them according to the timelines and due dates with no necessity to sit together in a room and collaborate face-to-face. Once the tasks have been allocated to the team, each team member can: </p>

                <h3>Team Channel Project </h3>
                <p>The Team Channel Project feature allows you to divide the requirements of a specific project into different categories. This helps in segregating the tasks to each team, following which you can assign privileged access to specific teams to access the documents and every information about the project they are associated with. The project details screen enables you to edit the name of the project, choose the audience for the project, create team pages, and to choose a layout or a list for the project screen. A wide range of custom templates are available to choose from. These templates can be edited based on your requirements. Other features allow you to give a project description under a column, duplicating the project or exporting your project to another team, layout structuring, template conversion, and archiving and deleting the project. Moving project data from one team to another is a tedious task. It would require you to create a new project altogether and manually add all the existing information onto the new platform. Casbn makes it easy for you in exporting the current project to a new team. Each project shall have one owner, but the members are not limited. Editing can be done by the owner as well as by the team members. The owner can manage the notifications coming in by each of the members. The notification settings will receive alerts every time a status has been changed or updated, and when a message is received. The status updated by the project owner would reflect in the notification list of every team member conversely. </p>
                <h3>Team Channel Visual Boards</h3>
                <p>Visual boards grasp your attention, and keep you hooked to the tasks and the overall workflow of the project. Save all your data in one place and easily drag and drop tasks to picturize the work progress. We minimize the investment of your time by cutting down your requirement to search for documents online, as all the documents will be saved securely and can be accessed easily at any point of time. Track the number of hours spent on each project and the time invested by each team member and convert this data into meaningful insights. </p>
                <h3>Team Channel Messenger</h3>
                <p>Every business requires a sophisticated tool to communicate with your teammates, brainstorm ideas, to identify resolutions, and to administer projects. Chat messengers are not just tools - they are a contemporary office. Strong Communication is allied to a strong culture, and all organizations are different and so is their culture, this is probably the reason chat messengers are emerging rapidly in the market.</p>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal END-->

  <!-- Modal START-->
  <div class="modal fade bd-example-modal-lg" id="newsModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Digital Solutions</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <img class="img-fluid" src="images/projectImages/features_newsfeed.jpg" alt="">
              </div>
              <div class="col-md-12">
                <h3 class="my-3">News Feed</h3>
                <p>In daily life, isn’t that the first thing that we do in the morning? Checking out news feed on our social media accounts. Why not stay up to date on the professional front? Casbn News Feed is a tailored guide to know what is going on in an organization. Helping you stay in loop and have access to the correct information about every important update concerned within the organization and allowing you to stay in sync to reduce the chances of missing an important event or update.</p>
                <h3 class="my-3">Does Facebook let you switch from a personal account to your work account on a single platform – No!?</h3>
                <p>Casbn News Feed is a blend of advanced technologies that brings you updates about projects that you are associated with through a scrolling stream of informative posts that you can respond to. Like, comment, and react to the posts on the news feed, a quick check on the latest posts, invites, updates, or notices to save your time and reduce the chances of you or your workforce missing an important event at your organization. Our news feed assures that your posts capture the attention of the relevant people at the right time. The targeted audience of your post can like, comment, and react, this helps you to get prompt feedback or acknowledgement for what you share. The higher authorities in the organization too can take a tour of the news feed to access the activities going on in the organization. This allows them to stay connected with even the smallest events happening within their organization. </p>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal END-->

  <!-- Modal START-->
  <div class="modal fade bd-example-modal-lg" id="webinarModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Webinars</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <img class="img-fluid" src="images/projectImages/features_webinars.jpg" alt="">
              </div>
              <div class="col-md-12">
                <h3 class="my-3">Webinars</h3>
                <p>In this era of marketing, organizations have made webinars their new home. The use of webinars is growing day by day. Why? Because webinars are the perfect choice for organizations to provide value to their users. It helps them in the lead generation process and increases their online engagement. Presenting a nice and informative webinar on an important topic is all it takes to convince your leads for business. Due to the current pandemic situation, cancellation of events, conferences, and tradeshows is compelling organizations to change their strategies and marketing tactics overnight. Given the current scenario, organizations are making webinars a strong strategy to stay in the market. According to a research, almost 61% of marketing personnel use webinars as an approach to their content marketing strategy. Almost 61% of webinars conducted in a year are hosted by B2B companies. On an average every organization conducts 23 webinars a year. Roughly 73% of B2B marketing personnel prefer webinars as they say it turns in almost 20%-40% of attendees of their webinars as positive leads. </p>
                <h3>Casbn is the global hub for live webcasting and video streaming for organizations. </h3>
                <ul>
                  <li>Full-Functional Webcasting</li>
                  <p>A simplified webcast solution integrated with featured engagement tools and a high-end audio-video set-up.</p>
                  <li>High Definition Video Streaming</li>
                  <p>Versatile high definition video streaming with no bandwidth interruption. Host webinars and telecast quality video to any number of people with supreme scalability. </p>
                  <li>Broadcasting on the Go</li>
                  <p>Provide upcoming announcement for your organization, or host a big meeting to impress your teammates and clients with an all-hands interactive webinar. Casbn helps you with smart and easy event management, it helps you get insights of attendee data and performance. You can also create video pools, share screens, and more to boost audience engagement. Once a webinar has been set-up automatic e-mails and follow-up e-mails will be sent to the attendees. Casbn Webinars are for professionals who have a story to tell.</p>
                  <li>Marketing</li>
                  <p>Webinars that grow your business. Augment the effectiveness of webinar marketing, external/internal communication, and training. Schedule, connect, and convert prospective leads. With webinar marketing, you can now boost your brand, generate novel leads, train your team, and influence buyers. </p>
                  <li>Branding and Personalization</li>
                  <p>Personalize your webinar registration forms and highlight your emails with logo and colors. </p>
                  <li>Programmed Communication</li>
                  <p>Casbn swiftly supervises notifications, reminders, and email invitations. </p>
                  <li>Webinar Statistics</li>
                  <p>Casbn presents analytics on webinar performance to help you understand how well the webinar was performed. </p>
                  <li>Consolidated Webinar Pivot</li>
                  <p>Now access our webinar library to store and share your stuff.</p>
                  <li>Global Reach</li>
                  <p> We help you take your webinars to the right audience.</p>
                  <li>Amalgamation</li>
                  <p>Synchronize your data, participant information, and other data on Casbn to your personal computers or laptop. Give your online events a transformation by engaging yourself into real-time experiences which helps you build an interactive environment for your participants. Hosting webinars should not be troublesome. Expose yourself to our webinar services which eliminate your confusions and let you concentrate on your presentations.</p>
                  <li>Bring In the crowd</li>
                  <p>Boost your webinars with our personalized webinar invites, listing page, and automatic email reminders.</p>
                  <li>Lively Webinars</li>
                  <p>Our simplified webinar platform makes your presentations worthwhile. Casbn also offers highly engaging features in the webinar tool so that your users will stay hooked to your session. The meeting dashboard gives you every detail about your participant engagement and a brief timeline of the event. During the presentation, keep the participants glued to their screens by using our polls and survey feature which help you engage them with live questions and answers. Webinars and events can be recorded and reused any number of times to garner viewers. You can also save the participant data in the server and access it at any point of time without any hassle. Automated webinars are now a trend as they let you keep things ready days before the presentation. You can create personalized email invites, reminders, and more. Make the best use of the survey feature so that you can get a feedback from the participants on your presentation and help you improve in every step to make your future presentations get better reactions from the participants. Recorded webinars can be scheduled ahead of time on participant demand, this will help you out if you have the fear to face live audience. Download reports of participant attendance, check their interaction level, see their response, and more. The participant attendance report gives you the information on the list of participants who attended the webinar. You can also enable event analytics to analyze the performance of your webinar which will also help you in generating reports with important metrics.</p>
                </ul>
                <h3>You can confidently lay your trust on our webinar focused tools and features:</h3>
                <ol>
                  <li>24/7 Support – Get in touch with us anytime you need help. Training videos will also be updated every day.</li>
                  <li>Reports and Analytics – Check the performance of your webinars with detailed information.</li>
                  <li>Participant preview – Get access to the participant viewing screen to help know how your presentation appears to them.</li>
                  <li>Manage your audience – Choose the size of your audience, authorize the audience who register for the webinar, mute/unmute the participants during the interaction phase of your presentation.</li>
                  <li>Channel page - Go ahead and broadcast your webinar on your central page with a customs link.</li>
                  <li>Personalized Questionnaire – Create forms in the registration page to get useful data from the participants.</li>
                  <li>Whiteboard – Exemplify your thoughts on the screen using the drawing tools with whiteboard.</li>
                  <li>Automated Emails – Enable automated emails and reminders to send across to your team or to your participants with the click of a button.</li>
                  <li>Webinar Board – Prioritize and edit webinar dates and information in simple steps.</li>
                  <li>File Sharing – Share files with participants to download and view during the webinar.</li>
                  <li>Screen Sharing – Share your screen at the blink of an eye.</li>
                  <li>Participant joining made simple – All it takes for your participants to join the meeting is a browser and the link.</li>
                  <li>Survey – Create quick surveys to collect extra information from the participants and to keep them engaged during the webinar with our polls and survey feature.</li>
                  <li>Q&A Feature – Casbn gives you the benefit of responding to the questions asked by the participants privately or publicly.</li>
                  <li>Event Recording – Record your video with HD quality, clear audio, and clean content captures by enabling the automated recorder option.</li>
                  <li>Event Recording – Record your video with HD quality, clear audio, and clean content captures by enabling the automated recorder option.</li>
                  <li>Templates – Choose from a wide range of templates to simplify your work and to make your pages and screens to look appealing.</li>
                  <li>Video Sharing – Share videos, video links, and more visuals with the audience to keep them engaged in the webinar.</li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal END-->

  <!-- Modal START-->
  <div class="modal fade bd-example-modal-lg" id="collabModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Collaboration Tools</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <img class="img-fluid" src="images/projectImages/features_collabTools.jpg" alt="">
              </div>
              <div class="col-md-12">
                <h3 class="my-3">Collaboration Tools</h3>
                <p>A highly secure collaboration platform Streamline the collaboration of your team without any compromise on security. Casbn has been designed for organizations that need advanced security to safeguard their documents and communications established across their teams, fellow employees, and clients. We offer extensive scalability to organizations and managerial tools that help in controlling teams and help analyze work progress.</p>
                <ul>
                  <li>High end encryption to all the features</li>
                  <li>A single tool for audio and video calls, messaging, screen sharing, group file sharing, and whiteboard.</li>
                  <li>Fully executive controls</li>
                  <li>Audio and Video calls on a click</li>
                  <li>Large file sharing in no time</li>
                </ul>
                <h4>First Class security</h4>
                <p>The source code of Casbn is fully transparent, and all messages are encrypted independently with a key so that the communication stays secure regardless of the network used by you, be it a public Wi-Fi or a secure network. Unlike other collaboration tools, Casbn does not use keys to decrypt your communications. We are a real-time example of well-developed security messaging. This solution is user-friendly and can be accessed on all major platforms.</p>
                <h4>Cut Down on costs and Increase Productivity</h4>
                <p>A single tool serving all your collaboration needs. You no longer have to switch between apps, as all features like messaging, audio and video calling, group file sharing, screen sharing have been integrated on a single platform. Your team will significantly enjoy the interface, its innovative features, and the user experience overall. No more of wasting time on searching updates in your email or handling invites to conference calls. You can now indulge in group chats, set up audio/video or conference calls all at the click of a button.</p>
                <h4>Project Planning</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, animi? Vel quas in minima qui totam, aliquid dolores quaerat voluptatum?</p>
                <h4>Project Strategy</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, animi? Vel quas in minima qui totam, aliquid dolores quaerat voluptatum?</p>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal END-->

  <!-- Modal START-->
  <div class="modal fade bd-example-modal-lg" id="fsModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">File Sharing</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <img class="img-fluid" src="images/projectImages/features_fileSharing.jpg" alt="">
              </div>
              <div class="col-md-12">
                <h3 class="my-3">File Sharing</h3>
                <p>This solution of Casbn is clearly the best choice for document management and file synchronization. The File Sharing feature of Casbn allows you to share documents and folders with your team mates through direct messages and also through team channels. Upload and share files with the entire team! Give your team the access to unlimited files, so they can refer, edit, preview, and download at the click of a button. The file formats could range from spreadsheets, PDF, presentations, graphic/video projects, vector graphics and more.</p>
                <h4>Upload and share files with the entire team!</h4>
                <p>You can now upload single files as well as multiple files and share them on multiple team channels to a set of people in no time at a brisk pace. Every time a document has been edited; the latest version of the document will reflect on your board. However, the old document would still be saved so it can be recovered at any given time. You can control the access rights of teammates to the uploaded files, set permission as to who can review it, who can edit it, who can download it and more. You can keep a complete track of the documents stored on the server, and you will be notified every time a teammate has edited any part of the document. These files can be posted in the newsfeed if you want other teams to give feedback on your project/document. You no longer have to worry about requesting large files through mail, with Casbn you can request up to 300 files at a time easily with just a drag and drop feature. File size is no longer a limitation, as this feature supports large files. The File Sharing solution has a distinct comments section where each person who has the right to access the file can comment on the file. You can also create tasks, request files from other team mates, and allocate document approvals Files can be uploaded for self-use and will remain completely private as in a personal drive. If desired, it can be shared with other users or teammates in numerous ways. You can also upload files in team channels or a workgroup which shall make the file visible to all the team members of that specific team channel. Work together on documents, edit them, give comments, give/receive feedback, collaborate real-time. You can also restrict the team members from editing the documents. This solution has a robust search feature which lists the files, their versions, messages and other data. The important file/folder can be starred so that they will be easily accessible when searched.</p>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal END-->

  <!-- Modal START-->
  <div class="modal fade bd-example-modal-lg" id="dcModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Document Collaboration</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <img class="img-fluid" src="images/projectImages/features_docCollab.jpg" alt="">
              </div>
              <div class="col-md-12">
                <h3 class="my-3">Document Collaboration</h3>
                <p>According to research, on an average a working professional spends 7% of his working time on searching and assembling data. And almost 39% of professionals find it tedious to share the documents with teammates. Approximately, 49% of professionals find it difficult in tracing documents; 43% of them find it complex to share files and documents; and 33% of professionals get stuck in sorting out multiple versions of a document.</p>
                <h4>Although latest technologies have made things so simple, why is document collaboration so difficult?</h4>
                <p>Let us take an example of a content marketing report. To prepare this report a user must have to go through huge volume of data to search across several tools and sheets, list the number of downloads and more to bring out the data that the organization has produced for that particular month. Data needs to be pulled out from multiple files and platforms. This process gets more intricate when it requires collaboration with other teammates to prepare this report. For a team to work efficiently in this process, data or documents should be organized in a specific folder or at least on a single platform. Are you still thinking of traditional ways to sort this issue? Casbn makes it easy for you! We live in a world where machines/software are making it easy. Why not make your work easy instead of wasting your valuable time? Why not choose a document collaboration tool to work smart? Document collaboration tools let teammates edit, view, and collaborate together on one document without having the need to share edited document attachments in an email. Some of the reports reveal that using a document collaboration tool made a relevant work, 33% faster. And on an average it is found that a team member sends 15 emails per day to share documents, attachments and more, because of which approximately 59% of team leads missed out on this important information as they failed to get their hands on this data that was stuck amid a large pile. Document collaboration tools are vital for teams who are working together, mapping workflows, and eradicating incompetence. Casbn is the best platform one would want to choose because of the real-time solutions it offers to one and all. It is a real-time collaboration tool that can help an organization in simplifying the work of its workforce. When a team works hand in hand on the same deliverable, a document collaboration tool will reduce the fuss and make work simple. You can also undo a functionality which has been edited, in addition to this, Casbn lets you to access previous versions of a document if need be. All of us have a memory of sending a mail on a wrong window, or that we would have missed out to write something in the mail. There is no chance of making these errors, as Casbn’s document collaboration tool gives you the option of controlling the audience who can access your files. In situations where a new employee is being trained, there are certain instructions and files a user must refer to which can be tracked by the organization. Casbn also gives you an important feature that helps you organize your files in a vault which can be easily accessed by you when a requirement demands different documents from a team. Practically speaking, Casbn is more than a collaboration tool. It is a comprehensive database that allows you to obtain, save, and share data swiftly with your teammates or with anyone who needs to get access to the data. The user interface is undoubtedly clean and beautiful, its high-end formatting options gives a new touch to your documents and content. Our dashboards allow you to track the progress of your projects. With Casbn your files are end-to-end encrypted and are cent percent secure. Project analytics are so clearly generated that it can show you as to which part of the file did the customers stay engaged. Your clients can now easily view a document that has been shared by you without having the necessity to sign up for this platform. </p>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal END-->
  <!--END OF MODALS-->


  <!--START OF Great Solution-->
  <section id="greatSol">
    <div class="container">
      <h1 class="text-center pd-5">People Choose us because we provide great solutions</h1>
      <hr>
      <div class="row">
        <div class="col-lg-4" data-aos="fade-down">
          <h2>Designed to achieve the best for you!</h2>
          <p>CASBN offers online collaboration solutions to increase productivity in workplace modernization. It offers an abundance of solutions on a single platform to help you build strong connections and propel business results without a glitch. Are you looking to meet your team for an urgent update? Looking to reach out to an individual and share some quick information without having to meet? Wanting a flawless and fast solution for business communication? All of this is possible, and just with one click.</p>
        </div>
        <div class="col-lg-4" data-aos="fade-down">
          <h2>Stay connected with everyone, anywhere in the world!</h2>
          <p>Communicating face-to-face is no doubt the best experience. But, with added challenges and the feasibility of telecommuting you can conduct and manage your meetings and tasks through online meetings. All that you need is an efficient collaboration tool. CASBN assures great connectivity and performance to keep your work and tasks running effortlessly.</p>
        </div>
        <div class="col-lg-4" data-aos="fade-down">
          <h2>Have Business Problems?</h2>
          <h4>Just dial us with no hesitation, we have an expert team</h4>
          <a href="tel:4152280025">415-228-0225</a>
        </div>
      </div>
    </div>
  </section>
  <!--END OF Great Solution-->

  <!--START OF VIDEO SECTION-->
  <section id="vidSec">
    <div class="container">
      <div class="heading mt-4">
        <h2 class="text-center"><u>Our Video</u></h2>
        <hr>
      </div>
      <div class="embed-responsive embed-responsive-16by9">
          <video width="320" height="240" loop autoplay muted controls controlsList="nodownload">
            <source src="videos/finalComp.mp4" type="video/mp4">
            <source src="videos/finalComp.ogg" type="video/ogg">
            Your browser does not support the video tag.
          </video>
      </div>
    </div>
  </section>
  <!--END OF VIDEO SECTION-->

  <!--Scroll to top button-->
  <button onclick="topFunction()" id="scrollTop" title="Go to top"><i class="fa fa-arrow-up"></i></button>
  <!--Scroll to top button-->

  <footer class="bg-dark">
    <div class="container pt-5">
      <div class="row">
        <div class="col-lg-1 col-md-1" id="imgCol">
          <div class="row justify-content-center">
            <a href="#home">
              <div class="footer-centering">
                <img id="heroLogo" src="images/logo/logoBlue.png" alt="" class="img-fluid" data-aos="zoom-in">
              </div>
            </a>
          </div>
        </div>
        <div class="col-lg-7 col-md-7" id="contactCol">
          <h5 class="text-left">Address: <span>3471 Ashbourne Cir<br>San Ramon, CA 94583<br>USA</span></h5>
          <h5 class="text-left">Email: <span>info@casbn.com</span></h5>
          <h5 class="text-left">Number: <span>4152280225</span></h5>
        </div>
        <div class="col-lg-4 col-md-4" id="smCol">
          <h5 class="text-left">Social Media</h5>
          <div class="row">
            <div class="col-lg-12" id="icCol">
                <a href="https://www.facebook.com/Casbnhq-101070351716985/" target="_blank" class="fa fa-facebook"></a>
                <a href="https://twitter.com/casbnHQ" target="_blank" class="fa fa-twitter"></a>
                <a href="https://www.instagram.com/casbnhq/" target="_blank" class="fa fa-instagram"></a>
                <a href="https://www.youtube.com/channel/UCgp4nS5xYRhsi9SeTOGuvzA?view_as=subscriber" target="_blank" class="fa fa-youtube"></a>

            </div>
          </div>
          <h5 class="text-left pt-3"><a href="/privacypolicy">Privacy Policy</a></h5>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <h6 class="text-center">Copyright &copy; CASBN 2020</h6>
        </div>
      </div>
    </div>
  </footer>
  <!-- Bootstrap core JavaScript -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

  <!-- AOS JavaScript -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script type="text/javascript">
      AOS.init();
  </script>
  <!--GLIDER JavaScript-->
  <script src="scripts/glide.min.js"></script>
  <script src="scripts/gliderCustom.js" charset="utf-8"></script>


  <!--Custom scripts for the template-->
  <script src="scripts/opacityReduction.js" charset="utf-8"></script>
  <script src="scripts/navBarClose.js" charset="utf-8"></script>
  <script src="scripts/navbarShadow.js" charset="utf-8"></script>
  <script src="scripts/navbarStyling.js" charset="utf-8"></script>
  <script src="scripts/scrollTop.js" charset="utf-8"></script>
  <script src="scripts/preloader.js" charset="utf-8"></script>
  <script src="js/clearLocalStorage.js" charset="utf-8"></script>
</body>

</html>
