class Image

  def initialize (inputarray)
    @array = inputarray 
  end

  def output_image
    @array.each do |row|
      row = row.join
      puts row
    end   
  end


  def blur (distance)

    n=distance

    @temp=Array.new(@array.length){Array.new(@array[0].length){0}}
    @array.each_with_index do |row ,i|
      row.each_with_index do |col, j|
        if @array[i][j]==1
          @temp[i][j]=1

          for k in 0..n do
            if i-1-n >=0
              @temp[i-1-n][j]=1
            end
          end


          if i+1 <= @array.length-1
            @temp[i+1][j]=1
          end

          if j-1 >=0
            @temp[i][j-1]=1
          end

          if j+1 <=@array[0].length-1
            @temp[i][j+1]=1
          end

        end
      end
    end
    @array = @temp
    return @array
  end


end



img = Image.new ([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1]
])

img.blur(2)
img.output_image
