class HomeController < ApplicationController
  def index
    @page_title = "Página Oficial"
    @page_description = "Página oficial da banda Capivaras do Vale, banda de rock e pop rock originada na região serrana do estado do Rio de Janeiro, que tem como principal influência o rock nacional e internacional dos anos 80 e 90."
    @page_keywords = "banda, rock, capivaras, vale, música"
  end
end
