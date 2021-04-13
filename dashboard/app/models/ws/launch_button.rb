module Ws
  class LaunchButton
    #CLUSTER ID AND QUEUE NAME ARE ADDED IN QUICK LAUNCH CONTROLLER

    defaults = {
      bc_account: "",
      bc_num_slots: "1",
      bc_num_hours: "1",
      custom_memory_per_node: "4",
      custom_num_cores: "2",
      custom_num_gpus: "0",
      custom_time: "04:00:00",
      envscript: "",
      custom_email_address: "",
      bc_email_on_started: "0",
      custom_reservation: ""
    }

    rstudioData = defaults.merge({
      token: "sys/RStudio",
      r_version:	"R/4.0.5-fasrc01",
      rlibs: "",
      custom_vanillaconf: "1",

      view: { logo: "rstudio_logo.png",
              logoWidth: "200",
              p1: "Run RStudio Server",
              p2: "2 CPU cores and 4GB RAM",
            }
      })

    bc_desktopData = defaults.merge({
      token: "sys/odysseyrd",
      bc_vnc_resolution: "1024x768",
      custom_desktop: "1",
      matlab_version: "NULL",
      rstudio_version: "NULL",
      r_version: "R/3.3.3-fasrc01",
      rlibs: "",

      view: { logo: "desktop_logo.svg",
              logoWidth: "100",
              p1: "Run Unix Desktop",
              p2: "2 CPU cores and 4GB RAM",
            }
     })

    @@LAUNCH_BUTTONS = {
      rstudio: rstudioData,
      rdesktop: bc_desktopData,
    }

    def self.all
      @@LAUNCH_BUTTONS
    end
  end
end