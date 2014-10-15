Blogger
=======

Blogger is a hosted blogging application where people can register and start their own blogs.

1. Users can create an account on the Blogger and they require to activate their account.
2. Once registered, they can create their own Blogs. They can create multiple blogs.
3. They can also view published blogposts of their own or of any other user.
4. They can comment on any published blogposts written by them or by other users.
5. They can moderate comments that are posted by other users on their BlogPosts.
6. They can see everything that they created on their Dashboard and manage them as well.


Features:

  A Blog has a Title, Summary, State (Published or Draft), Keywords. 

  By default, the Blog will be in Draft state and all the fields are mandatory to create a Blog

  Any registered user can create more than one Blog and each Blog should have a unique and friendly or human readable URL.

  Any user should be able to access/read any Published Blogs.

  A Blog can have many Blog posts identified uniquely by a friendly or human readable URL. 

  A BlogPost has a Title, Description, Author, State (Published or Draft), Published At, Keywords

  Users can only access/read Published BlogPosts from Published Blog.

  Users should be able to Comment on any Published BlogPost. 

  When posting a comment as a guest user, the user should fill in his/her name and email address in addition to the comment.

  When a registered user wants to post a comment, the system should not ask for his/her name and email address, instead they should be filled in automatically by pulling that info from the user object.

  comments will appear on the BlogPost page only after they are approved by the owner of the BlogPost. 

  A User Dashboard is required for any logged-in user where he/she can see all the Blogs and the BlogPosts that are written inside the Blog.

  An Admin Dashboard is required for Admin to Manage all Blogs, all BlogPosts, all Comments and all Users in the System

  An User can become an Admin user if he/she is made Admin by another Admin.


Ruby / Rails Version:
---------------------

This project uses Ruby 1.9.3 and Rails 3.2.15

Install Ruby : rvm install 1.9.3

Install Rails: gem install rails -v=3.2.15


