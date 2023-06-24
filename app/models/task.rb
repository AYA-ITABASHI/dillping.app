class Task < ApplicationRecord
 enum process: {rough:0,  draft:1, line_drawing:2, coloring:3, complition:4}
 belongs_to :member
 
end
