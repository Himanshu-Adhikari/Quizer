import React, { useState } from "react";

const Quiz = ({ questions }) => {
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [score, setScore] = useState(0);
  const [showScore, setShowScore] = useState(false);

  const handleAnswerOptionClick = (selectedOption) => {
    if (selectedOption === questions[currentQuestionIndex].answer) {
      setScore(score + 1);
    }
    const nextQuestion = currentQuestionIndex + 1;
    if (nextQuestion < questions.length) {
      setCurrentQuestionIndex(nextQuestion);
    } else {
      setShowScore(true);
    }
  };

  const handleSubmit = () => {
    setShowScore(true);
  };
  const handleExit = () => {
    if (handleExitQuiz) {
      handleExitQuiz(); // Call the function only if it exists
    }
  };
  

  // Calculate percentage for progress bar
  const percentage = Math.round((score / questions.length) * 100);

  return (
    <div className="quiz">
      {showScore ? (
        <div className="score-section">
          <h2>You scored {score} out of {questions.length}</h2>
          <div className="progress-circle">
            <svg>
              <circle cx="50%" cy="50%" r="40%" stroke="#ddd" strokeWidth="5" />
              <circle cx="50%" cy="50%" r="40%" style={{ strokeDashoffset: `calc(251.2 - (${percentage} * 251.2) / 100)` }} strokeWidth="5" />
            </svg>
            <div className="score-percentage">{percentage}%</div>
          </div>
        </div>
      ) : (
        <>
          {questions && questions.length > 0 ? (
            <div className="question-section">
              <h1>Questions no. {currentQuestionIndex + 1}/{questions.length}</h1>
              <div className="question-text">
                {questions[currentQuestionIndex].question}
              </div>
              <div className="answer-section">
                {questions[currentQuestionIndex].options.map((option, index) => (
                  <button
                    key={index}
                    onClick={() => handleAnswerOptionClick(option)}
                  >
                    {option}
                  </button>
                ))}
              </div>
            </div>
          ) : (
            <div className="no-questions-message">No questions available</div>
          )}
        </>
      )}
      {showScore?(<></>):( <> <div >
        <div>
        <button onClick={() => setCurrentQuestionIndex(currentQuestionIndex?(currentQuestionIndex - 1):currentQuestionIndex)}>Back</button>
        <button onClick={handleSubmit}>Submit Test</button>
        </div>
        <div>
        <button onClick={handleExit}>Exit</button>
        </div>
      </div>
    </>)}
    </div>
  );
};

export default Quiz;
