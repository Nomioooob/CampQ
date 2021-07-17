class User < ApplicationRecord
  CITIES = [Tokyo, Osaka, Kyoto, Fukuoka, Sapporo, Hiroshima, Okayama, Nagano]
  validates :location, inclusion: { in: CITIES }
end
