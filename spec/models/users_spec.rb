require "rails_helper"

describe User do
  context 'New User' do

    it 'must have a name and a passowrd(login) ' do
      user = User.create(login: '')
      expect(user.errors.count).to eq(2)
    end

    it 'email has to be uniq' do
      user = User.create(login: 'foo', email: 'foo@bar')
      other_user = User.create(login: 'foo', email: 'foo@bar')
      expect(other_user.errors.count).to eq(1)
    end
  end
end
