class Application

  def call(env)
    resp = Rack::Response.new

    # if before noon, greet user with "Good Morning!"
    # if after noon or exactly noon, great the user with "Good Afternoon!"
    # Get the time in 24 hour time. 

    t = Time.now
    resp.write t.hour
    resp.write " "

    if t.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end 
    

    resp.finish
  end

end