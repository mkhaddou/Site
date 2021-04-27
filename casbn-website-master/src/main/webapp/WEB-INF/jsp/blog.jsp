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

  <!--carousel stylesheet-->
  <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">

  <!--AOS stylesheet-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/blogStyles.css" rel="stylesheet">

</head>

<body>
  <div id="preloader" class="navbar-brand">
    <div class="row justify-content-center">
      <img src="images/logo/logoBlue.png">
    </div>
  </div>

  <!--START OF NAVIGATION -->
  <nav class="navbar fixed-top navbar-expand-lg fixed-top" id="topnav" style = "  background-color: white !important;">
    <div class="container-fluid mx-5">
      <a class="navbar-brand" href="/"><img src="images/logo/logoTxtBlue.png"></a>
      <button onclick="openNav()" class="navbar-toggler navbar-toggler-right" type="button">
        <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
      </button>
      <div class="collapse navbar-collapse text-center" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item bl">
            <a class="nav-link " href="/" onclick="closeNav()">Home</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/ourproduct" onclick="closeNav()">Our Product</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/#features" onclick="closeNav()">Features</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link active" href="#" onclick="closeNav()">Blog</a>
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
    <div class="container-fluid">
      <div class="row">
        <div class="col d-flex justify-content-center FirstHeading" style = "padding:0 !important;">
          <img class="img-fluid" id="heroImg" src="images/projectImages/blog.jpg" alt="">
        <h1 id="pageHeading">OUR BLOG</h1>
        </div>
      </div>
    </div>
  </section>

  <div class="container-fluid">
    <div class="row ml-2">

      <h1 class="my-4">See What Our Customers Have To Say
      </h1>
    </div>

    <div class="row">
      <!-- Blog Entries Column -->
      <div class="col-md-6">
        <!-- Blog Post -->
        <div class="card mb-4 shadow myblog">
          <img class="card-img-top" src="images/sc4-bg.png" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">Casbn - A Game Changer!</h2>
            <a data-toggle="modal" href="#blogPost1" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>

        <!-- Blog Post -->
        <div class="card mb-4 shadow">
          <img class="card-img-top" src="images/sec2-bg.jpg" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">An independent News Feed for your Organization</h2>
            <a data-toggle="modal" href="#blogPost2" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>

        <!-- Blog Post -->
        <div class="card mb-4 shadow myblog">
          <img class="card-img-top" src="images/sc4-bg.png" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">Casbn’s Breakthrough Feature – Webinar for All!</h2>
            <a data-toggle="modal" href="#blogPost3" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <!-- Blog Post -->
        <div class="card mb-4 shadow">
          <img class="card-img-top" src="images/sec2-bg.jpg" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">A few high-end features of Casbn explained in brief!</h2>
            <a data-toggle="modal" href="#blogPost4" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>

        <!-- Blog Post -->
        <div class="card mb-4 shadow myblog">
          <img class="card-img-top" src="images/sc4-bg.png" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">Casbn revolution in the digital world!</h2>
            <a data-toggle="modal" href="#blogPost5" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>

        <!-- Blog Post -->
        <div class="card mb-4 shadow myblog">
          <img class="card-img-top" src="images/sc4-bg.png" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">One-stop solution for all remote work from home</h2>
            <a data-toggle="modal" href="#blogPost6" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <!-- Pagination -->

    </div>
    <!-- /.row -->
    <ul class="pagination justify-content-center mb-4">
      <li class="page-item">
        <a class="page-link" href="#">&larr; Older</a>
      </li>
      <li class="page-item disabled">
        <a class="page-link" href="#">Newer &rarr;</a>
      </li>
    </ul>
  </div>

  <!--END OF LANDING CONTENT -->

  <!--START OF BLOG POST MODALS-->
  <div class="modal fade bd-example-modal-lg" id="blogPost1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Casbn - A Game Changer!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">

            <div class="row">
              <div class="col">
                <h1 class="mt-4">Casbn - A Game Changer!</h1>
                <hr>
                <p>The world of business is evolving at a fast pace, with the discovery of new technologies and
solutions the demand for sophisticated services has raised enormously. As we all know,
collaboration tools are very essential for proper communication in any organization as it is all
about working with virtual teams now. With these unprecedented times, organizations have
been compelled to go telecommuting and have adapted work from home, this has added to a
lot of challenges to the communication sector.</p>
                <p>The technological market has been striving hard to develop effective collaboration tools
every passing year, however, organizations still have been migrating between different
applications to work on projects. Using more than one collaboration tool was regarded as an
operational way of carrying out tasks smoothly, too late did we realize that a lot of time was
being consumed in this process. There are a lot more challenges that using different
collaborations tools bring.</p>
                <p>To address these challenges, Casbn strikes in to serve the collaboration and communication
requirements of an organization. It provides an umbrella of services on a single platform to
help you build a strong connection with your team and yield positive business outcomes
without a glitch.</p>
                <p>Casbn is one of the most cost-efficient tools available on the market today. Its top-notch
solutions for real-time communication cut down the risk of confusion and blunders as it
encourages creativity among the users because of its unique characteristics and varied
options. Teamwork plays a vital role in executing tasks, as there are a lot of things that go
into a project. To name some, instant messaging, audio/video calling, screen sharing, file
sharing, document collaboration, news feed, and more. Casbn has assimilated the above-
mentioned characteristics on a single platform to establish secure communication between the
teams and management. You no longer must worry about security threats as the shared files,
documents and videos are end-to-end encrypted making Casbn safe and reliable for use.</p>
                <p>Casbn bridges the gap between distance and successful projects, as it helps individuals get the
feel of working from a real-time office and enables them to perform their set of tasks
efficiently and more swiftly.</p>
                <p>Henceforth, these excellent benefits on a single tool make Casbn stand out in the crowd and
undoubtedly make it a “Game Changer”.</p>
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

  <div class="modal fade bd-example-modal-lg" id="blogPost2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">An independent News Feed for your Organization</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">

            <div class="row">
              <div class="col">
                <h1 class="mt-4">An independent News Feed for your Organization</h1>
                <hr>
                <p>News Feed plays an important role in the internal communication of an organization. In
simple terms, it is a personalized guide to understand what is going on in an organization.
Unlike Facebook, it keeps you updated on matters regarding work and the organization
without letting you lose your attention on other stuff.</p>
                <p>The newsfeed is a thoughtful content that is updated from time-to-time once a team member
accesses the Casbn platform. It streams posts by fellow teammates, project lead, the higher
management, and other organization personnel on important information that needs the
attention of the whole team. They will have the option to like, comment, and share the posts
with their respective teams. Casbn offers you the liberty to control who views the posts, and
who shares it. You can also consider it as a content/memo feed. The admins will have
comprehensive control of imperative news with the team channels feature.</p>
                <p>Casbn makes sure your internal content feed is dynamic, easily manageable, and fully
operative. It helps employees in staying engaged and well-versed about the organizational
updates daily. It empowers the organization/team members to control the audience for the
content, set priorities, and make sure that the information is viewed by the right audience
within the given time. It also helps in garnering instant feedback from the audience, which in
turn helps in making necessary changes whatsoever needed to the image/video or file. This
feature also helps in sharing news articles or information from outside of the organization to
stay updated on the latest trends and functionalities that they can use in their projects.</p>
                <p>With Casbn, you will see less of public posts/content, and more of meaningful content that
will keep your employees engaged and will help them in keeping in touch with each other
and other teams updated about the latest developments in their projects.</p>
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

  <div class="modal fade bd-example-modal-lg" id="blogPost3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Casbn’s Breakthrough Feature – Webinar for All!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">

            <div class="row">
              <div class="col">
                <h1 class="mt-4">Casbn’s Breakthrough Feature – Webinar for All!</h1>
                <hr>
                <p>Working from home is not anything new. At some point in time, everyone has worked from
home. We mean, from decades together we have this option, it isn’t a new solution. However,
the aspects and options of working from home have drastically changed over the ages.
Initially, working from home was a normal mode of working, by just working on tasks and
sending across to the team lead. With changing times, working from home demands a lot of
features as the mode of working is not the same as before.</p>
                <p>Due to the current COVID scenario, working from home has evolved on a higher note.
Working from home generally demands two important things from an employee, first
productivity, followed by successful completion of tasks.</p>
                <p>An additional feature that employees need to get used to is Webinars. According to research,
over 50% of organizations use webinars as a content marketing strategy. Webinars have
shown unprecedented growth from the past few years. Organizations are utilizing this feature
to the best of their needs. It is a known fact that people choose live-sessions over traditional
image/video attachments.</p>
                <p>Live sessions make a great way to pass on the information to the minds of the listener as there
is practicality in it, unlike presentation attachments and videos that fail to keep a viewer
hooked on to the text for longer than 10 minutes. The ultimate motive of an organization is
not just conveying information to the client, you should also address the questions asked by
clients or fellow teammates to help them grasp the knowledge you are trying to pass on to
them.</p>
                <p>Casbn enables you to conduct webinars for large/minimum audience with enhanced features
such as recording, hosting presentations, screen sharing, instant messaging, taking
questionnaire session in between webinars, giving you the liberty to grant access to your
chosen audience for asking questions, and more. Our webinar feature, lets your audience
directly engage with you without a bandwidth of interruption.</p>
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

  <div class="modal fade bd-example-modal-lg" id="blogPost4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">A few high-end features of Casbn explained in brief!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">

            <div class="row">
              <div class="col">
                <h1 class="mt-4">A few high-end features of Casbn explained in brief!</h1>
                <hr>
                <p>Is your business spread across the globe? Are your employees working from different parts of
the world due to this pandemic? Are your employees working from home?</p>
                <p>If yes, Casbn is the best platform for you to manage all the projects, events, and other functions
of your organization on a single platform. Casbn helps you in organizing your business
communication, in receiving updates from your team, in file sharing, audio/video sharing,
whiteboarding, screen sharing, conducting webinars, in document collaboration, and in many
more ways. Research states that 28% of the total time spent per day for each employee at work
goes in managing emails. Receiving 4 different versions of a single mail, filtering them,
searching for the one with all changes and more, harms the productivity of the personnel.</p>
                <p>Every minute spent by you is valuable. Composing emails for normal file sharing and more
makes your task hectic. At times, you fail to identify which mail was sent by whom and was
further edited by whom, you dip in identifying task priorities, and sharing files could be a
dilemma. Likewise, an organization with its team has to go through a lot of issues in carrying out
their day-to-day functions. They need a tool that can help them execute their tasks with ease, and
for that Casbn is the only solution. Let us see how it makes your work easy and effective.</p>
                <ul>
                  <li> <p>Mode for communication: Casbn is a hassle-free and secure platform with an end to end
encryption that enables you to communicate with your co-workers or a group and helps
you in transferring and receiving data without any security concern. It enables you to be
more productive and saves your time, as it cuts down the time spent by you in shuffling
between apps to complete your tasks. It is a single-window that helps you in carrying out
real-time communication actions, as it helps in completing tasks without any risk of
confusion with multiple emails or waiting for replies from anyone.</p> </li>
                  <li> <p>Webinar: Casbn empowers your business and your teams to conduct online
presentations from any part of the world. It allows the entire team or individuals of your
organization to share the same platform and engage in online discussions, training,
sharing files, documents, or screens during the webinar. Casbn helps the intellectual
minds of your organization to collaborate on one platform and perform brainstorming
activities to help achieve organizational goals.</p> </li>
                  <li> <p>Whiteboarding: Casbn provides the benefit of annotations on the whiteboard, as it helps
in easily adding or erasing data and helps interaction to happen without any interruption.
Whiteboard creates more engaging presentations, now you can get the work done at a
brisk pace and improve your virtual meeting culture in an enhanced way from your
comfort zone.</p> </li>
                  <li> <p>Document collaboration: Now share any number of files with the team and get instant
feedback without wasting your time. With a blend of high speed and top-notch security,
your files are safe and are stored securely with end-to-end encryption. You can use, edit,

share files/documents anytime with any member of your team, and control who edits it
with more options. With Casbn, multiple individuals or teams can work on a single
document without any worry of errors. Each time a team member edits or comments on a
document, every person in the team is notified about the changes, this helps in
understanding and interpreting the changes made to the document.</p> </li>
                </ul>
                <p>Only a few features have been explained here, Casbn has a lot more to offer you! Get in touch
with us and explore our diverse features to help you carry out your organizational functions more
effectively and efficiently.</p>
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

  <div class="modal fade bd-example-modal-lg" id="blogPost5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Casbn revolution in the digital world!</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">

            <div class="row">
              <div class="col">
                <h1 class="mt-4">Casbn revolution in the digital world!</h1>
                <hr>
                <p>Casbn is a resilient platform in itself. It has outperformed all its competitors and integrated high-
level features on a single platform. Casbn would be the best choice for all company needs, from
Marketing, HR, IT, DevOps, Engineering, Finance, Engineering, Sales and all. It is easy to use,
reliable, budget-friendly with all features such as organizational updates, discussions, webinars,
file sharing, audio/video calling, screen sharing, whiteboarding, and document collaboration and
much more integrated on a single platform to ease your work.</p>
                <p>By saying a single platform, we mean that this platform caters to all your business needs. Your
struggle of switching between apps for messages, email, audio/video calling, file/screen sharing
is minimized to one platform through Casbn. It helps in reducing your browsing/searching time
and also saves you on the economic front.</p>
                <p>During this pandemic, Casbn helps you in being more productive at your work. As
communication, simplicity, reliability, cost effective are key essentials to any company that
enables great team collaboration. Our exceptional features of collaboration help you
communicate with your team, aid you in following up on all the organization/team tasks and help
you in responding and reviewing documents and tasks by giving you the option to edit and
comment, it empowers you to clear the queries of your co-workers/employees from any part of
the globe on a single platform. It also enables file sharing and document collaboration to
individuals or a group and helps in establishing a strong connection with your team.</p>
                <p>With a bigger team comes more obstacles of miscommunication. Now you can avoid these
obstacles and join our personalized meeting rooms and communicate with the brilliant minds of
your team through our webinar on all the aspiring topics of your organization from the comfort
of your home or from anywhere in the world and explore new stuff with us every day.</p>
                <p>Casbn is a one-stop solution for all collaboration needs that provides you a safe space for social
networking for all upcoming events of your organization. It lets you experience the digital
journey by serving all your organizational and personal work requirements.</p>
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

  <div class="modal fade bd-example-modal-lg" id="blogPost6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">One-stop solution for all remote work from home</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="container">

            <div class="row">
              <div class="col">
                <h1 class="mt-4">One-stop solution for all remote work from home</h1>
                <hr>
                <p>Working from home is the new normal. Given the current circumstances, with the effect of the
pandemic on the entire globe, all corporate entities have empowered their employees to work
from home as health safety of their employees is a major concern. For employees, their home is
their new workplace, and with a new workplace comes challenges. To minimize those challenges
all you have to do is rely on Casbn. It empowers you to build a better internal communication
with your team to project manage and organize your entire organizational tasks with ease.</p>
                <p>Casbn is the only platform that provides digital solutions to all work from home today and
provides you with the best solutions to manage and execute your tasks by keeping you connected
with the entire team at any given time throughout the day with an affordable price. It offers a
safe and secure platform for you to collaborate with individuals or groups within your
organization.</p>
                <p>Casbn offers a wide variety of tools within one platform to help your team execute all tasks of
your organization and keeps them connected with each other through meetings/webinars, audio
and video calls, instant messaging, white boarding, file sharing, presence status, team channels,
news feed, meeting rooms, document collaboration and much more.</p>
                <p>For organizations, the fear of confidentiality in sharing files and documents is a big concern. To
eliminate this fear, Casbn enables you to securely share, transfer/receive files, data, and
documents from individuals or groups with high-end data encryption.</p>
                <p>Casbn document collaboration is a powerful feature that enables multiple people to work on a
single document simultaneously while providing the ability for real-time messaging on the
shared document with the team from across the globe.</p>
                <p>Casbn enables you to stay connected with everyone globally. It also provides great connectivity
and high performance to help perform all work from home assigned tasks effectively and
effortlessly without any connectivity issues.</p>
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

  <!--END OF BLOG POST MODALS-->

  <!-- Footer -->
  <footer  class="bg-dark">
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
  <!--carousel JavaScript-->
  <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>

  <!--Custom scripts for the template-->
  <script src="scripts/opacityReduction.js" charset="utf-8"></script>
  <script src="scripts/navBarClose.js" charset="utf-8"></script>
  <script src="scripts/navbarShadow.js" charset="utf-8"></script>
  <!-- <script src="scripts/navbarStyling.js" charset="utf-8"></script> -->
  <script src="scripts/formValidator.js" charset="utf-8"></script>
  <script src="scripts/preloader.js" charset="utf-8"></script>
  <script src="js/clearLocalStorage.js" charset="utf-8"></script>
</body>

</html>
