class Docker::Registry
  class Search

    def initialize(connection)
      @connection = connection
    end

    def tags(image)
      array_of_images = Docker::Util.parse_json(@connection.get("/repositories/#{image}/tags"))
      array_of_tags = []
      array_of_images.each do |image_data|
        array_of_tags << image_data["name"]
      end
      array_of_tags
    end
  end
end