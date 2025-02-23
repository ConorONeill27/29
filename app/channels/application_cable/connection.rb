module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      set_current_user || reject_unauthorized_connection
    end

    private

    def set_current_user
      session_record = Session.find_by(id: cookies.signed[:session_id])

      if session_record&.user
        self.current_user = session_record.user
      else
        redirect_to new_user_session_path and return
      end
    end
  end
end
