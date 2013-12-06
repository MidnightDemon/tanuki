class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :tanuki

  has_many :tanukis
  has_many :posts
  has_many :calendar_entries
  has_many :tasks

  def entries
    self.calendar_entries.all.order("slot ASC")
  end    

  def entries_for_date(year, month, date)
    time = Time.new(year, month, date)

    #"date > ? AND < ?", time.at_beginning_of_day, time.at_end_of_day
    self.calendar_entries.find(:all, :conditions => ["date between ? and ?",
         time, time.end_of_day])
  end   

  def entry_count_for_date(year, month, date)
    self.entries_for_date(year, month, date).length
  end 

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
