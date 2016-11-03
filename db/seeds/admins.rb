#

Role.create(name: 'users_index')
Role.create(name: 'users_new')
Role.create(name: 'users_create')
Role.create(name: 'users_edit')
Role.create(name: 'users_update')
Role.create(name: 'users_destroy')

Role.create(name: 'permissions_index')
Role.create(name: 'permissions_new')
Role.create(name: 'permissions_create')
Role.create(name: 'permissions_edit')
Role.create(name: 'permissions_update')

user = User.create!( first_name: 'Pedro',
                                last_name: 'Crisanto',
                                military_rank: MilitaryRank.Coronel,
                                registration: '999999',
                                birth_date: Time.now,
                                cpf: SecureRandom.hex(5),
                                mobile_phone: '999999999',
                                password: 'pedroh123',
                                password_confirmation: 'pedroh123',
                                email: 'pedrohcrisanto@gmail.com',
                                active: true,
                                unit: Unit.first)

user.roles << Role.all
