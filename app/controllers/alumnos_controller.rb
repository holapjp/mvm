class AlumnosController < ApplicationController
  before_action :set_alumno, only: [:show, :edit, :update, :destroy]

  # GET /alumnos
  # GET /alumnos.json
  def index
    @alumnos = Alumno.search(params[:term]).page(params[:page])
  end

  # GET /alumnos/1
  # GET /alumnos/1.json
  def show
  end

  # GET /alumnos/new
  def new
    @alumno = Alumno.new
    @alumno.curso_id = Curso.first.id
    @acudiente = @alumno.acudientes.new
  end

  # GET /alumnos/1/edit
  def edit
  end

  # POST /alumnos
  # POST /alumnos.json
  def create
    @alumno = Alumno.new(alumno_params)
    @alumno.acudientes.new(params[:identificacion])

    respond_to do |format|
      if @alumno.save
        format.html { redirect_to @alumno, notice: 'Alumno matriculado exitosamente.' }
        format.json { render :show, status: :created, location: @alumno }
      else
        format.html { render :new }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumnos/1
  # PATCH/PUT /alumnos/1.json
  def update
    respond_to do |format|
      if @alumno.update(alumno_params)
        format.html { redirect_to @alumno, notice: 'Alumno actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @alumno }
      else
        format.html { render :edit }
        format.json { render json: @alumno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.json
  def destroy
    @alumno.destroy
    respond_to do |format|
      format.html { redirect_to alumnos_url, notice: 'Alumno eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumno
      @alumno = Alumno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumno_params
      params.require(:alumno).permit(:tipo_identificacion, :identificacion, :nombre, :apellido, :genero, :email, :fecha_n, :tipo_sangre, :direccion, :barrio, :telefono, :celular, :curso_id,
        acudientes_attributes: [:id,:tipo_identificacion, :identificacion, :nombre, :apellido, :fecha_n, :tipo_sangre,
                                :barrio, :direccion, :email, :telefono, :celular, :genero , :parentesco, :_destroy])
    end
end
