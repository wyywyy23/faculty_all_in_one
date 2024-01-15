import json


def printQuestions(
    jsonPath: str = "online_interview.json",
    schoolName: str = None,
):
    """
    Generate a list of questions from the database.
    """

    if jsonPath is None or jsonPath == "":
        jsonPath = "online_interview.json"

    # Load online_interview.json
    with open(jsonPath, "r") as f:
        data = json.load(f)

        if schoolName is None or schoolName == "":
            # Print all 'question' field under 'questions'
            for question in data["questions"]:
                print("\\subsection{" + question["question"] + "}")
                # if "askedBy" in question AND question["askedBy"] is a list with at least one element
                if "askedBy" in question and len(question["askedBy"]) > 0:
                    print("Asked by: ")
                    for school in question["askedBy"]:
                        print(school["name"] + ", " + school["date"] + "; ")
        else:  # school specific
            # Print all 'question' field under 'questions'
            for question in data["questions"]:
                print("\\subsection{" + question["question"] + "}")
                # if question["prepAnswers"] has an element with field 'employer' being schoolName, print the element's field 'answer', else print the element with field 'employer' being 'general'
                schoolFound = False
                for answer in question["prepAnswers"]:
                    if answer["employer"].lower() == schoolName.lower():
                        print("\\begin{itemize}")
                        for point in answer["answerPoints"]:
                            # if point is string, print it directly
                            if isinstance(point, str):
                                print("\\item " + point)
                            # if point is list, print each element in the list
                            elif isinstance(point, list):
                                print("\\begin{itemize}")
                                for subPoint in point:
                                    print("\\item " + subPoint)
                                print("\\end{itemize}")
                        print("\\end{itemize}")
                        schoolFound = True
                        break
                if not schoolFound:
                    for answer in question["prepAnswers"]:
                        if answer["employer"].lower() == "general":
                            print("\\begin{itemize}")
                            for point in answer["answerPoints"]:
                                # if point is string, print it directly
                                if isinstance(point, str):
                                    print("\\item " + point)
                                # if point is list, print each element in the list
                                elif isinstance(point, list):
                                    print("\\begin{itemize}")
                                    for subPoint in point:
                                        print("\\item " + subPoint)
                                    print("\\end{itemize}")
                            print("\\end{itemize}")
                            break


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Pass school name")
    parser.add_argument("--json", required=False, help="json file path")
    parser.add_argument("--name", required=False, help="school name")
    args = parser.parse_args()
    printQuestions(args.json, args.name)
