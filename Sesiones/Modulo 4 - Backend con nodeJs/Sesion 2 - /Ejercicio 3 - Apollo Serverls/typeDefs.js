const typeDefs = `
    enum Genre{
        MALE
        FEMALE
        NON_BINARY
    }

    type Student{
        id: ID!
        name: String!
        lastN: String!
        age: Int!
    }

    type Module{
        id: ID!
        name: String!
    }

    type Courses{
        id: ID!
        name: String!
        modules: [Module!]!
    }

    type Query{
        getCourses: [Courses!]!
    }

`;