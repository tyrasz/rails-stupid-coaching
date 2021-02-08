class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ""

    if params["question"] == "I am going to work"
      @answer = "Great"
    elsif params["question"][params["question"].length - 1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
