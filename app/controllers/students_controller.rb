class StudentsController < ApplicationController
    
    def index
        @student = Student.all
        render json: {
            values: @student,
            message: "Sukses"
        }
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            render json: {
                values: @student,
                message: "Data Input Success"
            }
        else
          render json: {
              values: {},
              message: "Gagal Input data"
          }
          render 'new'
        end
    end

    def new
        @student = Student.new
    end
    
    def show
        @student = Student.find_by_id(params[:id])
        render json: {
            values: @student,
            message: "Menampilkan"
        }
    end

    def update
        @student = Student.find_by_id(params[:id])
        if @student.update_attributes(student_params)
          render json: {
              values: @student,
              message: "Data diupdate"
          }
        else
         render json: {
             values:{},
             message: "Something went wrong"
         }
          render 'edit'
        end
    end
    
    
    def destroy
        @student = Student.find(params[:id])
        if @student.present?
            @student.destroy
            render json: {
                values: {},
                message: "Dihapus"
            }
           
        else
            render json: {
                values: @student,
                message: "Something went wrong?"
            }
            
        end
    end
    
    
    private
    def student_params
        params.require(:student).permit(:name, :kelas, :nohp, :jurusan, :universitas)
    end
end
