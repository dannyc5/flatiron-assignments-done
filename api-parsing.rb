require 'json'
require 'rest-client'

html_string = "
<html>
  <head>
  </head>
  <body>
    <ul>
      LI TAGS
    </ul>
  </body>
</html>"

li_tags = ""
li_tag = ""

reddit_hash = JSON.parse(RestClient.get('http://reddit.com/.json'))

template = '
  <li>  
    <a href="REDDIT URL">
        <h1>POST TITLE</h1>
        <img src="THUMBNAIL URL" />
        <h4>Upvotes:</p>
        <p>NUMBER OF UPVOTES</h4>
        <p>Downvotes:</p>
        <h4>NUMBER OF DOWNVOTES</h4>
     </a>
  </li>'

reddit_hash["data"]["children"].each do |post_data|
  post = post_data["data"]
  
  if !post["over 18"]
    li_tag = template
      li_tags <<
        li_tag.gsub("REDDIT URL", post["url"])
              .gsub("POST TITLE", post["title"])
              .gsub("THUMBNAIL URL", post["thumbnail"])
              .gsub("NUMBER OF UPVOTES", post["ups"].to_s)
              .gsub("NUMBER OF DOWNVOTES", post["downs"].to_s)
  end
end

full_html = html_string.gsub("LI TAGS", li_tags)

output = File.open("reddit.html", "w")
output << full_html
output.close