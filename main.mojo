trait Person:
    fn person(self):
        ...

@value
struct Name(Person):
    fn person(self):
        print("name")

@value
struct Age(Person):
    fn person(self):
        print("age")

fn person_details[T: Person](check_person: T):
    check_person.person()

fn main():
    var name = person_details(Name())
    var age = person_details(Age())
    print(name)
    print(age)
