module MojHelper
  def config_item(key)
    Rails.configuration.send(key)
  end

  def logo_image
    image_tag('moj_logo_horizontal_36x246.png',
      class: 'content',
      width: 36, height: 246, alt: 'Ministry of Justice')
  end
end