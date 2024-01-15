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
                # if question["prepAnswers"] has an element with field 'employer' being 'gerenal' or schoolName, print the element's field 'answer'
                for answer in question["prepAnswers"]:
                    if (
                        answer["employer"] == "general"
                        or answer["employer"] == schoolName
                    ):
                        print(answer["answer"])


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Pass school name")
    parser.add_argument("--json", required=False, help="json file path")
    parser.add_argument("--name", required=False, help="school name")
    args = parser.parse_args()
    printQuestions(args.json, args.name)
