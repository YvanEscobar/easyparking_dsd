# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Parking::HABTM_ParkingFeatures.create!([
  {parking_id: 3, parking_feature_id: 5},
  {parking_id: 3, parking_feature_id: 4},
  {parking_id: 3, parking_feature_id: 3},
  {parking_id: 3, parking_feature_id: 2},
  {parking_id: 4, parking_feature_id: 4},
  {parking_id: 4, parking_feature_id: 3},
  {parking_id: 4, parking_feature_id: 7},
  {parking_id: 5, parking_feature_id: 1},
  {parking_id: 5, parking_feature_id: 2},
  {parking_id: 5, parking_feature_id: 4},
  {parking_id: 5, parking_feature_id: 5},
  {parking_id: 6, parking_feature_id: 1},
  {parking_id: 6, parking_feature_id: 4},
  {parking_id: 6, parking_feature_id: 5},
  {parking_id: 6, parking_feature_id: 6}
])
ParkingFeature::HABTM_Parkings.create!([
  {parking_id: 3, parking_feature_id: 5},
  {parking_id: 3, parking_feature_id: 4},
  {parking_id: 3, parking_feature_id: 3},
  {parking_id: 3, parking_feature_id: 2},
  {parking_id: 4, parking_feature_id: 4},
  {parking_id: 4, parking_feature_id: 3},
  {parking_id: 4, parking_feature_id: 7},
  {parking_id: 5, parking_feature_id: 1},
  {parking_id: 5, parking_feature_id: 2},
  {parking_id: 5, parking_feature_id: 4},
  {parking_id: 5, parking_feature_id: 5},
  {parking_id: 6, parking_feature_id: 1},
  {parking_id: 6, parking_feature_id: 4},
  {parking_id: 6, parking_feature_id: 5},
  {parking_id: 6, parking_feature_id: 6}
])
User.create!([
  {email: "gustavoalegre1@hotmail.com", encrypted_password: "$2a$11$5yRMEmOvkRJdq18Y0e5aiel1VTt354CNPt.Al5pLvk2D91KljlntG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2017-02-18 21:39:22", last_sign_in_at: "2017-01-30 21:00:26", current_sign_in_ip: "200.0.118.173", last_sign_in_ip: "190.41.126.241", name: "Gustavo Alegre", address: "Las Flores", district_id: 13, phone: "988463468"}
])
Booking.create!([
  {user_id: 1, parking_id: 4, spaces: 2, start_date: "2016-08-10 09:00:00", end_date: "2016-08-10 13:00:00", payment_method_id: 1},
  {user_id: 1, parking_id: 4, spaces: 1, start_date: "2016-08-11 09:00:00", end_date: "2016-08-11 11:00:00", payment_method_id: 2},
  {user_id: 1, parking_id: 4, spaces: 2, start_date: "2016-08-09 21:00:00", end_date: "2016-08-10 00:00:00", payment_method_id: 1},
  {user_id: 1, parking_id: 6, spaces: 1, start_date: "2016-08-17 14:00:00", end_date: "2016-08-17 16:00:00", payment_method_id: 2},
  {user_id: 1, parking_id: 4, spaces: 2, start_date: "2016-08-10 14:00:00", end_date: "2016-08-10 17:00:00", payment_method_id: 1},
  {user_id: 1, parking_id: 4, spaces: 1, start_date: "2016-12-28 11:00:00", end_date: "2016-12-28 13:00:00", payment_method_id: 1},
  {user_id: 1, parking_id: 3, spaces: 1, start_date: "2017-01-31 11:00:00", end_date: "2017-01-31 13:00:00", payment_method_id: 1},
  {user_id: 1, parking_id: 4, spaces: 2, start_date: "2017-02-18 18:00:00", end_date: "2017-02-18 20:00:00", payment_method_id: 2}
])
City.create!([
  {name: "Lima"}
])
District.create!([
  {name: "San Isidro", city_id: 1},
  {name: "San Borja", city_id: 1},
  {name: "Miraflores", city_id: 1},
  {name: "San Miguel", city_id: 1},
  {name: "Surco", city_id: 1},
  {name: "Barranco", city_id: 1},
  {name: "Cercado", city_id: 1},
  {name: "Ate", city_id: 1},
  {name: "La Victoria", city_id: 1},
  {name: "Chorrillos", city_id: 1},
  {name: "Breña", city_id: 1},
  {name: "Los Olivos", city_id: 1},
  {name: "San Juan de Lurigancho", city_id: 1},
  {name: "Surquillo", city_id: 1}
])
Parking.create!([
  {user_id: 1, name: "Cochera en San Borja", description: "Harold", parking_type_id: 1, spaces: 5, address: "Guardia Civil", district_id: 2, price_per_hour: 8, start_date: "2016-07-27", end_date: "2016-08-31", published: true, photo_file_name: "parking_sb.jpg", photo_content_type: "image/jpeg", photo_file_size: 97235, photo_updated_at: "2016-07-28 02:37:17"},
  {user_id: 1, name: "Parqueo en Surquillo", description: "No se me ocurre nada", parking_type_id: 2, spaces: 50, address: "La calle", district_id: 14, price_per_hour: 5, start_date: "2016-08-01", end_date: "2016-10-31", published: true, photo_file_name: "midpic1.jpg", photo_content_type: "image/jpeg", photo_file_size: 72928, photo_updated_at: "2016-08-04 01:07:35"},
  {user_id: nil, name: "Prueba", description: "Ejemplo", parking_type_id: 1, spaces: 5, address: "Lima", district_id: 4, price_per_hour: 3, start_date: "2016-08-01", end_date: "2016-08-31", published: true, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil},
  {user_id: 1, name: "Cochera económica en Barranco", description: "Atiende todo el día", parking_type_id: 1, spaces: 3, address: "Barranco", district_id: 6, price_per_hour: 4, start_date: "2016-08-01", end_date: "2016-08-31", published: true, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil}
])
ParkingFeature.create!([
  {name: "Techo"},
  {name: "Piso de cemento"},
  {name: "Iluminación"},
  {name: "Cámaras de seguridad"},
  {name: "Vigilancia"},
  {name: "Lavado de autos"},
  {name: "Perro"}
])
ParkingSchedule.create!([
  {parking_id: 4, day_of_week: 1, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 21:00:00"},
  {parking_id: 4, day_of_week: 2, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 21:00:00"},
  {parking_id: 4, day_of_week: 3, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 21:00:00"},
  {parking_id: 4, day_of_week: 4, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 21:00:00"},
  {parking_id: 4, day_of_week: 5, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 21:00:00"},
  {parking_id: 4, day_of_week: 6, start_time: "2000-01-01 09:00:00", end_time: "2000-01-01 18:00:00"},
  {parking_id: 4, day_of_week: 0, start_time: "2000-01-01 09:00:00", end_time: "2000-01-01 13:00:00"},
  {parking_id: 5, day_of_week: 1, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 5, day_of_week: 2, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 5, day_of_week: 3, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 5, day_of_week: 4, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 5, day_of_week: 5, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 5, day_of_week: 6, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 18:00:00"},
  {parking_id: 5, day_of_week: 0, start_time: "2000-01-01 09:00:00", end_time: "2000-01-01 13:00:00"},
  {parking_id: 6, day_of_week: 1, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 6, day_of_week: 2, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 6, day_of_week: 3, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 6, day_of_week: 4, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 6, day_of_week: 5, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 22:00:00"},
  {parking_id: 6, day_of_week: 6, start_time: "2000-01-01 08:00:00", end_time: "2000-01-01 18:00:00"},
  {parking_id: 6, day_of_week: 0, start_time: "2000-01-01 09:00:00", end_time: "2000-01-01 13:00:00"}
])
ParkingType.create!([
  {name: "Interior"},
  {name: "Exterior"}
])
PaymentMethod.create!([
  {name: "Efectivo"},
  {name: "Tarjeta de crédito/débito"}
])
Review.create!([
  {user_id: 1, parking_id: 4, content: "Prueba"}
])
