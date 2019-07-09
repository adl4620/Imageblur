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
end 


img=Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0], 
  [0, 0, 0, 1], 
  [0, 0, 0, 0]
])

img.output_image