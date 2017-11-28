class Admin::PreferencesController < ActionController::Base
    def index
        @preference = Preference.first
    end

    def update
        @preference = Preference.first
        @preference.update(preference_params)
        redirect_to admin_preferences_path, alert: "Preferences updated"
    end

private

    def preference_params
        params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
    end


end