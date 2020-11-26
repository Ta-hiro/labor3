class WTime < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '8:00' },
    { id: 2, name: '8:30' },
    { id: 3, name: '9:00' },
    { id: 4, name: '9:30' },
    { id: 5, name: '10:00' },
    { id: 6, name: '10:30' },
    { id: 7, name: '11:00' },
    { id: 8, name: '11:30' },
    { id: 9, name: '12:00' },
    { id: 10, name: '12:30' },
    { id: 11, name: '13:00' },
    { id: 12, name: '13:30' },
    { id: 13, name: '14:00' },
    { id: 14, name: '14:30' },
    { id: 15, name: '15:00' },
    { id: 16, name: '15:30' },
    { id: 17, name: '16:00' },
    { id: 18, name: '16:30' },
    { id: 19, name: '17:00' },
    { id: 20, name: '17:30' },
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
