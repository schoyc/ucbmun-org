require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name: "dasfkdj",
                                university: "dafdsa",
                                username: "dlakfsn",
                                phone: "12332143",
                                address: "32142 lknlfa",
                                city: "dafdsadsfa",
                                state: "dasfldkdnasf",
                                zip: "dlasfndasfk",
                                country: "dafklda",
                                delegates_count: 40,
                                email: "scchen@berkeley.edu",
                                password: "foo",
                                password_confirmation: "bar"}
    end
    assert_template 'users/new'
  end
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name: "Steven Chen",
                                university: "Minion Tech.",
                                username: "schoyc",
                                phone: "123-456-789",
                                address: "123 Gru St.",
                                city: "Santa Cruz",
                                state: "CA",
                                zip: "12345",
                                country: "USA",
                                delegates_count: 40,
                                email: "scchen@berkeley.edu",
                                password: "foodfoodfood",
                                password_confirmation: "foodfoodfood"}
    end
    assert_template 'users/show'
  end
end
