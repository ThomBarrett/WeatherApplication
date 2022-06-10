class TemperatureSettingsController < ActionController::Base
  def show
    @temperature_setting = TemperatureSetting.first
  end

  def new
    @temperature_setting = TemperatureSetting.new
  end

  def edit
    @temperature_setting = TemperatureSetting.first
  end

  def create
    @temperature_setting = TemperatureSetting.new(temperature_setting_params)

    if @temperature_setting.save
      redirect_to @temperature_setting
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @temperature_setting = TemperatureSetting.first
    if @temperature_setting.update(temperature_setting_params)
      redirect_to @temperature_setting
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def temperature_setting_params
    params.require(:temperature_setting).permit(:cold_temperature, :warm_temperature, :hot_temperature)
  end
end
