library(testthat)

.Random.seed <<- .ext.seed

test_that("view_data", {
    expect_equal(qdapDictionaries:::view_data(), structure(list(Item = c("BuckleySaltonSWL", "DICTIONARY", "Dolch", "Fry_1000", 
        "GradyAugmented", "Leveled_Dolch", "NAMES", "NAMES_LIST", "NAMES_SEX", "OnixTxtRetToolkitSWL1", "Top100Words", "Top200Words", 
        "Top25Words", "abbreviations", "action.verbs", "adverb", "amplification.words", "contractions", "deamplification.words", 
        "discourse.markers.alemany", "emoticon", "function.words", "interjections", "key.pol", "key.power", "key.strength", 
        "key.syl", "key.syn", "labMT", "negation.words", "negative.words", "positive.words", "power.words", "preposition", 
        "strong.words", "submit.words", "weak.words"), Title = c("Buckley & Salton Stopword List", "Nettalk Corpus Syllable Data Set", 
        "Dolch List of 220 Common Words", "Fry's 1000 Most Commonly Used English Words", "Augmented List of Grady Ward's English Words and Mark Kantrowitz's Names List", 
        "Leveled Dolch List of 220 Common Words", "First Names and Gender (U.S.)", "First Names and Predictive Gender (U.S.) List", 
        "First Names and Predictive Gender (U.S.)", "Onix Text Retrieval Toolkit Stopword List 1", "Fry's 100 Most Commonly Used English Words", 
        "Fry's 200 Most Commonly Used English Words", "Fry's 25 Most Commonly Used English Words", "Small Abbreviations Data Set", 
        "Action Word List", "Adverb Word List", "Amplifying Words", "Contraction Conversions", "De-amplifying Words", "Alemany's Discourse Markers", 
        "Emoticons Data Set", "Function Words", "Interjections", "Polarity Lookup Key", "Power Lookup Key", "Strength Lookup Key", 
        "Syllable Lookup Key", "Synonym Lookup Key", "Language Assessment by Mechanical Turk (labMT) Sentiment Words", "Negating Words", 
        "Negative Words", "Positive Words", "Words that Indicate Power", "Preposition Words", "Words that Indicate Strength", 
        "Words that Indicate Submission", "Words that Indicate Weakness")), row.names = c(NA, -37L), class = c("view_data", 
        "data.frame")))
})
