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


  def blur
    @temp=Array.new(@array.length){Array.new(@array[0].length){0}}
    @array.each_with_index do |row ,i|
      row.each_with_index do |col, j|
        if @array[i][j]==1
          @temp[i][j]=1
          if i-1 >=0
            @temp[i-1][j]=1
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

img.blur
img.output_image
