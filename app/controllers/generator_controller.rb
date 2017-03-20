class GeneratorController < ApplicationController
  #before_action :set_phone, only: [:delete_data, :generate_data]
before_action :authenticate_user!
#before_action :set_user, :set_generator

def generate_data
  #authorize :generator, :generate_data?
  Faker::Config.locale = 'en-US'
  5.times do
    new_user = User.create!(admin: false,
                  email: Faker::Internet.free_email,
                  password: 'abc1234')
    new_genre = Genre.create!(name: 'rockandroll',
                  picture: '242nm'
                  )

    new_song = Song.create!(name: Faker::Name.name,
                  image: '2344',
                  price: 5555,
                  genre_id: new_genre.id,
                  genre: new_genre
                  )
                #new_song.genre << new_genre
  end
  redirect_to songs_path
end
def delete_data
  #authorize @generator
  Song.all.each do |song|
    song.destroy
  end
  User.all.each do |user|
    if user.admin != true
      user.destroy
    end
  end
  redirect_to songs_path
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(current_user)
  end

  # def set_phone
  #   @phone = Phone.find(params[:id])
  # end
  #
  # # Never trust parameters from the scary internet, only allow the white list through.
  # def phone_params
  #   params.require(:phone).permit(:name, :number, :city, :user_id)
  # end

  def set_generator
    @generator = @user
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:id)
  end
end
