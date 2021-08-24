module RegistrationsHelper

    def register_or_not(naukri)
          link_to "Register!", new_naukri_registration_path(naukri),
                 class: "register" 
      end
end
