

import 'package:semooorbook/model/basictabsmodel.dart';

List<Tabsmodel> intrectavietabsData = [
  Tabsmodel(
    title: "Mindmap",
    description: "Create or link your existing minmap as a tab.",
    imageUrl:
        'data:image/jpeg;base64,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',
  ),
  Tabsmodel(
    title: "Questions",
    description:
        "Create multiple questions from the same type,export and view.",
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqCpiFIDxcqLtNFgpI0Odv9K_ylf2tgLHDdw&usqp=CAU',
  ),
  Tabsmodel(
    title: "Quiz",
    description:
        "Create multiple questions from the various types,export and view feedback.",
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA3XWpYTbUByQoPUEzLcHSAKlpFwuSVCf6Ag&usqp=CAU',
  ),
  Tabsmodel(
    title: "Flashcard",
    description: "Link your flashcards as a tab.",
    imageUrl:
        'data:image/jpeg;base64,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',
  ),
  Tabsmodel(
    title: "Excercise",
    description: "Create an exercise tab,export and view feedback.",
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGY7hB71qUveB2F0H139gDKi4lNQ6re4Wo6Q&usqp=CAU',
  ),
];