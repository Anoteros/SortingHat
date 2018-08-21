require './app/sorting_hat'


students = [
    {
        name: "harry potter",
        traits: [ "clever", "brave", "defiant" ]
    },
    {
        name: "hermione granger",
        traits: [ "brave", "stubborn", "scholarly" ]
    },
    {
        name: "ron weasley",
        traits: [ "brave", "stuborn", "defiant" ]
    },
    {
        name: "draco malfoy",
        traits: [ "ambitious", "deceptive", "stubborn" ]
    },
    {
        name: "luna lovegood",
        traits: [ "loyal", "curious", "scholarly" ]
    },
    {
        name: "hannah abott",
        traits: [ "just", "scholarly", "kind" ]
    },
    {
        name: "cho chang",
        traits: [ "dedicated", "scholarly", "ambitious" ]
    },
    {
        name: "pansy parkinson",
        traits: [ "clever", "ambitious", "deceptive" ]
    },

    {
        name: "cedric diggory",
        traits: ["just", "brave", "dedicated"]
    },
    {
        name: "ernie macmillian",
        traits: ["determined", "pompous", "reasonable"]
    },
    {
        name: "theodore nott",
        traits: ["clever", "quiet", "proud"]
    }
]

houses = {
    slytherin: [
        "clever",
        "ambitious",
        "deceptive"
    ],
    ravenclaw: [
        "scholarly",
        "dedicated",
        "curious"
    ],
    hufflepuff: [
        "just",
        "loyal",
        "kind"
    ],
    griffindor: [
        "brave",
        "stubborn",
        "defiant"
    ]
}


a = SortingHat.new
puts a.sort(a.new_student, houses)
puts a.sort(students, houses)
a.house("ron weasley")

