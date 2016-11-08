# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


House.destroy_all
Character.destroy_all



stark = House.create(
  {name: "House Stark", img_url: "https://mir-s3-cdn-cf.behance.net/project_modules/disp/bdcfd615516041.56292a54106c4.png", region: "Northwest"}
)

targaryen = House.create(
  {name: "House Tagaryen", img_url: "http://image.spreadshirtmedia.com/image-server/v1/designs/12644940,width=280,height=280?mediaType=png", region: "Northeast"}
)

lannister = House.create(
  {name: "House Lannister", img_url: "http://www.brandsoftheworld.com/sites/default/files/styles/logo-thumbnail/public/012014/house_lannister.png?itok=6lVFuitE", region: "Southeast"}
)

ned = Character.create(
  {title: "Eddard Stark", img_url: "https://pbs.twimg.com/profile_images/533002540078477312/98X7lsxK.jpeg", current_house: stark.id}
)

khal = Character.create(
  {title: "Khal Drogo", img_url: "http://img10.deviantart.net/204b/i/2013/153/c/9/khal_drogo_by_yellowtwist-d629mj5.png", current_house: targaryen.id}
)

tywin = Character.create(
  {title: "Tywin Lannister", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/4/49/Tywin_Lannister_in_The_Laws_of_Gods_and_Men.jpg/revision/latest/scale-to-width-down/270?cb=20160624214821", current_house: lannister.id}
)

daenerys = Character.create(
  {title: "Daenerys Lannister", img_url: "http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s5/daenarys-1024.jpg", current_house: lannister.id}
)
