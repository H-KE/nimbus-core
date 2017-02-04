json.title @comment.title
json.comment @comment.comment
json.rating @comment.rating
json.name @comment.user.first_name
json.created_at time_ago_in_words(@comment.created_at) + ' ago'
