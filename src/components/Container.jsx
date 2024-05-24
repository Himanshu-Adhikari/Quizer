import React, { useState } from 'react';
import Card from './Card';
import Quiz from './Quiz';

const Container = () => {
  const [selectedCategory, setSelectedCategory] = useState(null);
  const [selectedActivity, setSelectedActivity] = useState(null);
  const [startQuiz, setStartQuiz] = useState(false);
  const [questions, setQuestions] = useState([]);

  const categories = ["Permutations and Combinations", "Percentage", "Time and Work"];
  const activities = ["Activity 1", "Activity 2"];

  const handleCardClick = (category) => {
    setSelectedCategory(category);
    setSelectedActivity(null);
    setStartQuiz(false);
  };

  const handleActivityChange = (e) => {
    setSelectedActivity(e.target.value);
  };

  const fetchQuestions = async () => {
    try {
      const response = await fetch(`http://localhost/api/fetch_questions.php?category=${selectedCategory}&activity=${selectedActivity}`);
      if (!response.ok) {
        throw new Error('Failed to fetch questions');
      }
      const data = await response.json();

      // Transform questions to match the expected structure
      const transformedQuestions = data.map((question) => ({
        question: question.question,
        options: [
          question.option1,
          question.option2,
          question.option3,
          question.option4,
        ],
        answer: question.answer, // Adjust this based on how you store the correct answer
      }));

      setQuestions(transformedQuestions);
      setStartQuiz(true);
    } catch (error) {
      console.error('Error fetching questions:', error);
    }
  };

  const handleConfirmClick = () => {
    if (selectedCategory && selectedActivity) {
      fetchQuestions();
    } else {
      alert("Please select a category and an activity");
    }
  };

  const handleExitQuiz = () => {
    setStartQuiz(false);
    setSelectedCategory(null);
    setSelectedActivity(null);
    setQuestions([]);
  };

  return (
    <div className="quiz-container">
      {!startQuiz ? (
        <>
          {categories.map((category, index) => (
            <Card key={index} title={category} onClick={() => handleCardClick(category)} />
          ))}
          {selectedCategory && (
            <div className="options">
              {activities.map((activity, index) => (
                <div key={index}>
                  <input 
                    type="radio" 
                    id={activity} 
                    name="activity" 
                    value={activity}
                    checked={selectedActivity === activity}
                    onChange={handleActivityChange} 
                  />
                  <label htmlFor={activity}>{activity}</label>
                </div>
              ))}
            </div>
          )}
          {selectedCategory && selectedActivity && (
            <div>
              <button onClick={handleConfirmClick}>Confirm Choice</button>
            </div>
          )}
        </>
      ) : (
        <Quiz questions={questions} handleExitQuiz={handleExitQuiz} />
      )}
    </div>
  );
};

export default Container;
