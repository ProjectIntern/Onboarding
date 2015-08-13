class User < ActiveRecord::Base
  has_secure_password
  has_many :conversations
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }, uniqueness: true
  validates :terms, acceptance: true  
  validates_presence_of :first_name, :last_name
  validate :invalidCode
  has_many :messages
  has_attached_file :image, :styles => { :small => "50x50#", :avatar => "180x240#", :large => "750x750>" }, :processors => [:cropper], :default_url => "other/default_:style.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage/
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  do_not_validate_attachment_file_type :image
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :reprocess_image, :if => :cropping?
  
  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end
  
  def image_geometry(style = :original)
    @geometry ||= {}
    @geometry[style] ||= Paperclip::Geometry.from_file(image.path(style))
  end
  
  private
  


  def invalidCode
    errors.add(:code, "is invalid") if self.code != "gapinc"
  end

end
