student_names = [
  'Buck Spencer',
  'Jacob Mingus',
  'Justin Sitarz',
  'Roel Cantu',
  'Kate Balducci',
  'Drew Kerr',
  'Rob Balderas'
]
student_bios = [
  "Buck Spencer is web developer who recently relocated from Los Angeles to attend The Iron Yard and start a new career in web development.
  His hobbies include hiking, cooking, and spending time with his family.
  Buck Spencer's personal mantra is, 'stay hungry'.",
  "Jacob Mingus is a web developer filled with gumption, working to learn everything about everything. When he isn't melting his mind with the amount of info he is absorbing, he enjoys reading and playing video games. Jacob Mingus is looking forward to conquering the internet with his work.",
  "Justin Sitarz has spent his adult life as a sound engineer, an ESL teacher, an arborist, and most recently a student of web development at the Iron Yard. He enjoys finding elegant solutions to complicated problems. Justin has lived in Austin for 6 years with his wife and dogs, and loves hiking with all of them in some of Austin’s more wild and beautiful spaces.",
  "Roel Cantu is a programmer who has currently been concentrating on Ruby on Rails development.  In his free time, Roel spends most of his time with his wife and kids, listens to rock bands, learns different programming languages, plays the guitar, and enjoys life.",
  "Kate Balducci spent her former life as an elementary and middle school teacher. Her passion for learning new things and her determination to help others in a new way led her to transition into the realm of software development.Kate moved to Austin from Boston, MA and loves taking advantage of the weather by hiking and spending time on Town Lake. She also enjoys yoga, watching movies and learning all things wellness related. In fact, she is also a certified integrative nutrition health coach.",
  "“As a man thinks, so shall he be.” This is a quote New Orleans native Drew Kerr lives by. Drew wants his life to be a living testament of what one can accomplish despite difficult circumstances. His passions include: learning, fashion, food, travel, music, film and sports. Drew found the world of tech and big data fascinating and it peaked his interest so he began a journey of learning how to code. After teaching himself how to program for close to a year, he felt that he needed immersive training to better prepare himself for a career in tech. The Iron Yard has provided that need as well as increased his interest to learn more. Ultimately, Drew wants to use his skill set and talents to pursue his dreams of entrepreneurship and philanthropy.",
  "As  an unconventional developer Robert Balderas  lives outside the box.  A  proponent of “forgiveness over permission”  he pushes the limits of software development, breaking-dancing, and comedy.  With past careers in manufacturing, chemistry, finance, and SaaS he brings an arsenal of perspectives which coupled with education in back-end engineering makes  him an invaluable asset to any start-up. When not hacking away at heroku bugs  Robert regularly participates in hackathons.  He loves  building apps poised to disrupt markets and perfecting his pitch.

  I am America and so can YOU!
  "
]

student_names.zip(student_bios).each do |(student, bio)|
  name = student.downcase.split(' ')
  student_name = "#{name.first}_#{name.last.chars.first}"
  file_name = "#{student_name}.md"
  File.write(file_name,
"---
student: #{student}
cohort: spring-2015
id: #{student.split(' ').first.downcase}
course: ruby
bio: #{bio}
---

")
end
