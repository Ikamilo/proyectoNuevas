class User < ApplicationRecord
    validates :name, format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }
    validates :password, length: { in: 6..20 }

    def self.login(name, password)
        hashed_password = hash_password(password || "")
        find(:first,
                    :conditions => ["name = ? and hashed_password = ?",
                                            name, hashed_password])
    end
    def try_to_login
        User.login(self.name, self.password)
    end
end
