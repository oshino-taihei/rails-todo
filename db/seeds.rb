users = User.create([
    {
        name: 'Admin',
        email: 'admin',
        admin: true,
        password: 'admin',
        password_confirmation: 'admin',
    },
    {
        name: 'User',
        email: 'user',
        admin: false,
        password: 'user',
        password_confirmation: 'user',
    },
])
