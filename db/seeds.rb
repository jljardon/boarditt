# # Users
# --
# -- File generated with SQLiteStudio v3.1.1 on Sun Apr 1 16:58:24 2018
# --
# -- Text encoding used: UTF-8
# --
# PRAGMA foreign_keys = off;
# BEGIN TRANSACTION;
#
# # -- Table: users
# DROP TABLE IF EXISTS users;
#
# CREATE TABLE users (
#     id              INTEGER PRIMARY KEY AUTOINCREMENT
#                             NOT NULL,
#     username        VARCHAR,
#     password_digest VARCHAR,
#     email           VARCHAR
# );

INSERT INTO users (
                      id,
                      username,
                      password_digest,
                      email
                  )
                  VALUES (
                      1,
                      'Thats_me',
                      '$2a$10$mqm2L6gMKJ803j5BSj6NG.6rmqBL7VsnZxKY6hl49O1w8dbz6jafS',
                      'email@email.com'
                  );

INSERT INTO users (
                      id,
                      username,
                      password_digest,
                      email
                  )
                  VALUES (
                      2,
                      'crazycatlady',
                      '$2a$10$6EzjwPgYZdHqU7Hru2YYdezIjXwhMf0gvCGi7kAM2zwHLHT8SrE/6',
                      'I_luv_cats@cats.com'
                  );

INSERT INTO users (
                      id,
                      username,
                      password_digest,
                      email
                  )
                  VALUES (
                      3,
                      'silverstallion',
                      '$2a$10$oIW7WxoXr7VpAoQ.qxv6Ievm7fIEabrAJKtmmc6JeUl4Mrua7s/rO',
                      'silver@aol.com'
                  );

INSERT INTO users (
                      id,
                      username,
                      password_digest,
                      email
                  )
                  VALUES (
                      4,
                      'skittles123',
                      '$2a$10$QtKMg6IiZMQGlph/OLpTDu4CwdK/jzoxu/XbOXdD.TNLu96N8.uii',
                      'skittles@aol.com'
                  );

INSERT INTO users (
                      id,
                      username,
                      password_digest,
                      email
                  )
                  VALUES (
                      5,
                      'just_so_hardcore',
                      '$2a$10$qxRqFfb9MtkpfxhADKt8wuPKHUadX2nNa6h/1jizpZ92PClJ.iRMu',
                      'sohard@core.com'
                  );

INSERT INTO users (
                      id,
                      username,
                      password_digest,
                      email
                  )
                  VALUES (
                      6,
                      'hipsterguy',
                      '$2a$10$kffMl/fiIq8Fz2Brzczqqe5zxwfI8Yn0JH15tSYEn8G20K52mldU2',
                      'fine@email.com'
                  );

#
# COMMIT TRANSACTION;
# PRAGMA foreign_keys = on;
#
#
# # # Posts
# # --
# # -- File generated with SQLiteStudio v3.1.1 on Sun Apr 1 16:56:28 2018
# # --
# # -- Text encoding used: UTF-8
# # --
# PRAGMA foreign_keys = off;
# BEGIN TRANSACTION;
#
# # -- Table: posts
# DROP TABLE IF EXISTS posts;
#
# CREATE TABLE posts (
#     id      INTEGER PRIMARY KEY AUTOINCREMENT
#                     NOT NULL,
#     content TEXT,
#     user_id INTEGER,
#     title   VARCHAR
# );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      1,
                      '<img src="https://i.imgur.com/x0ml8.png" alt="meme" style="width:350px;height:600px;">',
                      1,
                      'Some programming meme'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      2,
                      '<img src="https://i.imgur.com/rsD0RUq.jpg" style="width:350px;height:250px;">



',
                      2,
                      'I luv my cat! ❤'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      3,
                      '<img src="https://i.imgur.com/aZyuQ2R.jpg" style="width:350px;height:250px;">',
                      3,
                      'That''s a weird horse right there partner'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      4,
                      '<img style="-webkit-user-select: none;" src="https://i.imgur.com/cuH8qzg.gif">',
                      3,
                      'The good ol'' times...'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      5,
                      '<img style="-webkit-user-select: none;" src="https://i.imgur.com/zX7FEUP.jpg">',
                      4,
                      'Upvotes for everyone!'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      6,
                      '<img style="-webkit-user-select: none;" src="https://i.imgur.com/5KvMmNg.gif">',
                      4,
                      'Woah! trippy, dude.'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      7,
                      '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                      5,
                      'So hardcore'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      8,
                      'Hell of forage banh mi duis blog disrupt paleo stumptown tote bag meh pickled artisan. Cardigan neutra velit YOLO culpa. Palo santo bicycle rights coloring book yr, shabby chic dolor lorem bushwick lo-fi ad kinfolk everyday carry meditation locavore id. Squid dolore gentrify, food truck wolf adaptogen artisan yuccie cillum in air plant truffaut. 90''s cupidatat mixtape commodo, schlitz keffiyeh etsy fixie selvage edison bulb XOXO messenger bag echo park la croix vinyl.',
                      6,
                      'Hipster ipsum'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      9,
                      'Aliquip dreamcatcher prism, gluten-free ullamco yr crucifix master cleanse blue bottle officia vape authentic farm-to-table. Hell of nostrud viral plaid gochujang duis pitchfork retro kombucha artisan austin microdosing cronut dolor. Ea man bun listicle single-origin coffee intelligentsia, irony laborum ennui. Whatever retro portland hashtag umami forage.',
                      6,
                      'How quaint.'
                  );

INSERT INTO posts (
                      id,
                      content,
                      user_id,
                      title
                  )
                  VALUES (
                      10,
                      'master cleanse hashtag vape next level enim helvetica occupy glossier DIY 8-bit ut. Messenger bag skateboard kinfolk humblebrag green juice hella. Tote bag nisi irony, shabby chic reprehenderit labore master cleanse incididunt taxidermy minim lorem pitchfork. Cornhole iPhone vexillologist, offal celiac pariatur irure man bun mumblecore locavore fingerstache whatever wolf XOXO. ',
                      6,
                      'Kitsch sriracha man bun'
                  );
#
#
# COMMIT TRANSACTION;
# PRAGMA foreign_keys = on;
#
#
# # # Votes
# # --
# # -- File generated with SQLiteStudio v3.1.1 on Sun Apr 1 16:58:53 2018
# # --
# # -- Text encoding used: UTF-8
# # --
# PRAGMA foreign_keys = off;
# BEGIN TRANSACTION;
#
# # -- Table: votes
# DROP TABLE IF EXISTS votes;
#
# CREATE TABLE votes (
#     [like]  BOOLEAN,
#     user_id INTEGER,
#     post_id INTEGER
# );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      1,
                      1
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      2,
                      1
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      2,
                      2
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      3,
                      1
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      3,
                      2
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      3,
                      3
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      4,
                      5
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      4,
                      1
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      4,
                      2
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      4,
                      3
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      4,
                      4
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      4,
                      6
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      5,
                      7
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      5,
                      1
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      5,
                      2
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      5,
                      3
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      5,
                      4
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      5,
                      5
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      6,
                      8
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      6,
                      9
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      6,
                      10
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      6,
                      1
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      6,
                      2
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      6,
                      3
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      6,
                      4
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      6,
                      5
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      6,
                      6
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      6,
                      7
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      'f',
                      1,
                      9
                  );

INSERT INTO votes (
                      [like],
                      user_id,
                      post_id
                  )
                  VALUES (
                      't',
                      1,
                      10
                  );


# -- Index: index_votes_on_user_id_and_post_id
# DROP INDEX IF EXISTS index_votes_on_user_id_and_post_id;
#
# CREATE UNIQUE INDEX index_votes_on_user_id_and_post_id ON votes (
#     "user_id",
#     "post_id"
# );
#
#
# COMMIT TRANSACTION;
# PRAGMA foreign_keys = on;
#
#
# # # Comments
# # --
# # -- File generated with SQLiteStudio v3.1.1 on Sun Apr 1 16:55:17 2018
# # --
# # -- Text encoding used: UTF-8
# # --
# PRAGMA foreign_keys = off;
# BEGIN TRANSACTION;
#
# # -- Table: comments
# DROP TABLE IF EXISTS comments;
#
# CREATE TABLE comments (
#     id      INTEGER PRIMARY KEY AUTOINCREMENT
#                     NOT NULL,
#     content TEXT,
#     user_id INTEGER,
#     post_id INTEGER
# );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         1,
                         'I like your cat!',
                         3,
                         2
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         2,
                         'Y''all can''t tell me times haven''t changed...',
                         3,
                         4
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         3,
                         'I hardly understand any of that programmin'' mumbo jumbo!',
                         3,
                         1
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         4,
                         'You know it!',
                         4,
                         1
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         5,
                         'meh...',
                         4,
                         2
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         6,
                         'meh...',
                         4,
                         3
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         7,
                         'meh...',
                         4,
                         4
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         8,
                         '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                         5,
                         7
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         9,
                         '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                         5,
                         1
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         10,
                         '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                         5,
                         2
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         11,
                         '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                         5,
                         3
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         12,
                         '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                         5,
                         4
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         13,
                         '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                         5,
                         5
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         14,
                         '<img src="http://i0.kym-cdn.com/entries/icons/original/000/006/971/Sohardcore.jpg" style="width:150px;height:100px;">',
                         5,
                         6
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         15,
                         'Cloud bread shaman single-origin coffee fanny pack, meh subway tile vaporware typewriter portland waistcoat swag. Organic esse duis live-edge iceland tousled humblebrag. ',
                         6,
                         8
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         16,
                         'Gochujang affogato tilde ramps trust fund bushwick cronut tacos swag art party vice. Meh proident lo-fi, food truck sint sed tempor kale chips hot chicken.

Helvetica tumblr fugiat excepteur, readymade gluten-free dolore swag air plant craft beer nisi velit.',
                         6,
                         8
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         17,
                         ' Minim lyft raclette waistcoat, bushwick franzen cardigan veniam deserunt raw denim vape. Chillwave subway tile pabst, paleo banh mi knausgaard locavore deserunt trust fund listicle eiusmod cronut.',
                         6,
                         9
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         18,
                         'Beard wayfarers freegan activated charcoal jianbing irure ea pinterest cray eiusmod laboris. Prism mixtape yr, activated charcoal aliquip subway tile tacos letterpress literally aesthetic. Synth biodiesel dolore beard fingerstache cloud bread. Ethical labore culpa, craft beer tousled farm-to-table banh mi af humblebrag in bespoke cillum. Keffiyeh mumblecore selfies, readymade man braid yr mlkshk woke succulents church-key. ',
                         6,
                         9
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         19,
                         'Vinyl locavore proident freegan pickled flannel fugiat direct trade ea irony duis activated charcoal. Poke typewriter messenger bag cold-pressed humblebrag you probably haven''t heard of them banjo velit lumbersexual excepteur squid listicle organic poutine.',
                         6,
                         9
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         20,
                         'Biodiesel swag chillwave salvia, fixie culpa et ut locavore. Nostrud fam thundercats glossier velit PBR&B, poke man bun bespoke ut fanny pack. Church-key keffiyeh lorem bicycle rights chia, mixtape jean shorts mustache fanny pack small batch meditation.',
                         6,
                         10
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         21,
                         'Cornhole semiotics bespoke intelligentsia deep v ullamco PBR&B man braid letterpress polaroid normcore. PBR&B you probably haven''t heard of them tattooed prism id celiac drinking vinegar austin tofu taxidermy meggings green juice literally wayfarers plaid. ',
                         6,
                         10
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         22,
                         'IPhone williamsburg live-edge tempor art party selfies cillum irure wolf direct trade. Sunt viral small batch mlkshk poke velit. Green juice blue bottle pabst dolor elit mumblecore banjo pok pok vaporware scenester veniam before they sold out eiusmod. ',
                         6,
                         1
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         23,
                         'Brooklyn church-key qui hoodie pork belly affogato street art fingerstache vaporware gastropub quis 3 wolf moon reprehenderit cliche next level. Hell of enamel pin fam brunch quinoa proident.',
                         6,
                         2
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         24,
                         'Commodo lumbersexual pug, tumeric activated charcoal migas before they sold out meh. Kitsch kinfolk fam brunch. +1 forage PBR&B pug woke minim. Schlitz tousled swag fixie bicycle rights veniam chartreuse. Cloud bread portland shaman ethical XOXO anim normcore poke qui hot chicken eiusmod ut. Master cleanse farm-to-table green juice banjo, squid cred id.',
                         6,
                         2
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         25,
                         'Commodo lumbersexual pug, tumeric activated charcoal migas before they sold out meh. Kitsch kinfolk fam brunch. +1 forage PBR&B pug woke minim. Schlitz tousled swag fixie bicycle rights veniam chartreuse. Cloud bread portland shaman ethical XOXO anim normcore poke qui hot chicken eiusmod ut. Master cleanse farm-to-table green juice banjo, squid cred id.',
                         6,
                         3
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         26,
                         'Lorem ipsum dolor amet consectetur occupy chillwave cloud bread actually farm-to-table franzen ut tattooed duis four loko fugiat aute disrupt excepteur. Qui gluten-free subway tile offal, yr aliquip tousled umami pok pok locavore. Dreamcatcher laborum shabby chic activated charcoal, gluten-free iceland paleo man braid. ',
                         6,
                         4
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         27,
                         'Hexagon portland vexillologist, forage activated charcoal XOXO mixtape banh mi pour-over.',
                         6,
                         5
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         28,
                         'Dolor yuccie four loko, minim brunch narwhal four dollar toast kale chips in. Retro edison bulb mumblecore, gluten-free vegan ad aliqua fugiat. Kale chips mixtape gluten-free mlkshk. ',
                         6,
                         5
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         29,
                         'Ipsum shabby chic shaman, pour-over microdosing 8-bit hammock brunch jean shorts wayfarers live-edge small batch salvia taiyaki migas. Cronut ea hashtag live-edge echo park distillery. Est mustache cloud bread taxidermy tattooed polaroid sed hoodie synth coloring book. Normcore ipsum blue bottle, kinfolk intelligentsia umami yr laboris scenester cred you probably haven''t heard of them flexitarian.',
                         6,
                         6
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         30,
                         'Polaroid jianbing ut eu hoodie, wayfarers edison bulb helvetica in aliquip aliqua. Jean shorts hexagon cupidatat, squid 3 wolf moon asymmetrical man bun banh mi microdosing vexillologist deep v succulents ea. Distillery polaroid aesthetic gastropub fixie. Veniam bitters nisi authentic tilde cillum humblebrag vinyl proident vaporware selvage coloring book pop-up.',
                         6,
                         7
                     );

INSERT INTO comments (
                         id,
                         content,
                         user_id,
                         post_id
                     )
                     VALUES (
                         31,
                         'Sure w/e',
                         1,
                         10
                     );

# 
# COMMIT TRANSACTION;
# PRAGMA foreign_keys = on;
