
# cmd > rails g integration_test user_pages >>> generate file

require 'spec_helper'

describe "UserPages" do 
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end
  

end
