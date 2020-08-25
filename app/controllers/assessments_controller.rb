class AssessmentsController < ApplicationController

    def index
        @assessments = Assessment.all
    end

    def new
        @assessment = Assessment.new
    end

    def create
        @assessment = Assessment.new(assessment_params)
        @assessment.user = current_user
        if @assessment.valid?
            answers = [@assessment.q1_correct, @assessment.q2_correct, @assessment.q3_correct, @assessment.q4_correct,@assessment.q5_correct, @assessment.q6_correct, @assessment.q7_correct, @assessment.q8_correct, @assessment.q9_correct, @assessment.q10_correct, @assessment.q11_correct, @assessment.q12_correct, @assessment.q13_correct]
            score = answers.count('Correct') + (answers.count('Almost') / 2)
            @assessment.score = score
            @assessment.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def assessment_params
        params.require(:assessment).permit(:candidate_full_name, :ats_link, :score, :q1_correct, :q2_correct, :q3_correct, :q4_correct, :q5_correct, :q6_correct, :q7_correct, :q8_correct, :q9_correct, :q10_correct, :q11_correct, :q12_correct, :q13_correct, :q1_note, :q2_note, :q3_note, :q4_note, :q5_note, :q6_note, :q7_note, :q8_note, :q9_note, :q10_note, :q11_note, :q12_note, :q13_note)
    end
end
