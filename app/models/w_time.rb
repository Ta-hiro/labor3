class WTime < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '8:00' },
    { id: 2, name: '8:30' },
    { id: 3, name: '9:00' },
    { id: 4, name: '9:30' },
    { id: 5, name: '10:00' }
=begin ,
    
    { id: 6, name: '' },
    { id: 7, name: '' },
    { id: 8, name: '' },
    { id: 9, name: '' },
    { id: 10, name: '' }
=end
  ]
  include ActiveHash::Associations
  has_many :labors
end
