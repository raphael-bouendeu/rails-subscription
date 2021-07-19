module PostsHelper
def premium_label value
case value
when true
  badge_color="badge bg-success"
   text='Free'

when false
  badge_color="badge bg-danger"
   text='Premium'
end
content_tag(:span,text,class: badge_color)
end
end
