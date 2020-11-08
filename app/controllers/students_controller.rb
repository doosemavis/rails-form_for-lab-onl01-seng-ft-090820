class Students < ApplicationController


    def new
        @student = Student.new
    end 

    def create
        @student = Student.create(params.require(:student))
    end 

    def show
        @student = Student.find_by(id: params[:id])
    end 

    def edit
        @student = Studentl.find_by(id: params[:id])
    end 

    def update
        @student = Student.find_by(id: params[:id])
        @student.update(paams.require(:student))
        redirect_to student_path(@student)
    end 

end 