class Car < ActiveRecord::Base
  belongs_to :leader
  attr_accessible :licencefrom, :licencenum, :licenceto, :member
end
