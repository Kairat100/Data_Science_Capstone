library(shiny)

# Define a UI for the application
shinyUI(fluidPage(
  titlePanel("Predictive Text Application"),
  p("Developed by KAIRAT Aitpayev"),
  p("Enter a message into the text box below and the application will attempt to predict the next word."),
  textInput("inputText", label= h3("Input text")),
  h3("Suggested words"),
  textOutput("text1"),
  HTML('
    <h3>Explanation</h3>
    <p>The input text is broken up into 3-grams and then the last 3-gram in the input text is checked against a data.table of 4-grams. The last word for the 4-grams is returned.</p>
    <p>The program tries to return 5 suggestions. If there are not five words returned then it will break the input text into bigrams and return the results from a table of trigrams</p>
    <p>As a last resort, the app will return the five most frequently seen words in the english language</p>
    
    <h3>n-Gram</h3>
    <p>This set of algorithms uses a collection of previously
    observed n-Grams (1, 2 or 3) in order to predict the next word.</p>
    <ul>
      <li>unigram - Using the most prevalent unigram that starts with the last word of the presented text.</li>
      <li>bigram - Using the most prevalent bigram that starts with the last word of the presented text.</li>
      <li>trigram - Using the most prevalent trigram that starts with the last 2 words of the presented text.</li>
    </ul>
  '),
  
  plotOutput("bigrams"),
  plotOutput("trigrams"),
  plotOutput("fourgrams"),
  
  HTML('
    <h3>Bibliography</h3>
     <ol>
        <li><a href="http://cran.r-project.org/web/packages/tm/tm.pdf">http://cran.r-project.org/web/packages/tm/tm.pdf</a></li>
        <li><a href="http://www.slideshare.net/jaganadhg/elements-of-text-mi">http://www.slideshare.net/jaganadhg/elements-of-text-mi</a></li>
        <li><a href="http://beyondvalence.blogspot.com/search/label/text%20mining">http://beyondvalence.blogspot.com/search/label/text%20mining</a></li>
        <li><a href="http://stackoverflow.com/questions/8161167/what-algorithm-i-need-to-find-n-grams">http://stackoverflow.com/questions/8161167/what-algorithm-i-need-to-find-n-grams</a></li>
        <li><a href="http://shiny.rstudio.com/articles/reactivity-overview.html">http://shiny.rstudio.com/articles/reactivity-overview.html</a></li>
        <li><a href="http://stackoverflow.com/questions/21921422/row-sum-for-large-term-document-matrix-simple-triplet-matrix-tm-package">http://stackoverflow.com/questions/21921422/row-sum-for-large-term-document-matrix-simple-triplet-matrix-tm-package</a></li>
        <li><a href="http://stackoverflow.com/questions/17703553/bigrams-instead-of-single-words-in-termdocument-matrix-using-r-and-rweka">http://stackoverflow.com/questions/17703553/bigrams-instead-of-single-words-in-termdocument-matrix-using-r-and-rweka</a></li>
        <li><a href="http://stackoverflow.com/questions/6025051/extracting-indices-for-data-frame-rows-that-have-max-value-for-named-field">http://stackoverflow.com/questions/6025051/extracting-indices-for-data-frame-rows-that-have-max-value-for-named-field</a></li>
        <li><a href="http://stackoverflow.com/questions/24191728/documenttermmatrix-error-on-corpus-argument">http://stackoverflow.com/questions/24191728/documenttermmatrix-error-on-corpus-argument</a></li>
        <li><a href="http://stackoverflow.com/questions/7804816/how-to-create-a-dictionary-hash-table-by-iterating-through-a-column">http://stackoverflow.com/questions/7804816/how-to-create-a-dictionary-hash-table-by-iterating-through-a-column</a></li>
    </ol>

    <h3>Source code</h3>
    Code can be found at <a href="https://github.com">https://github.com</a>.
')
))