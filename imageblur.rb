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


img2 = [
  [1, 2, 3, 4],
  [8, 2, 3, 4]
]
puts img2[1][0]