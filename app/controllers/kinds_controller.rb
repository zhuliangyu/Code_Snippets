class KindsController < ApplicationController
  def index
    # kind_arr=Kind.all.select(:name).to_a
    # kind_arr=Kind.pluck(:name)

    # kinds.inject({}) do |memo, kind|
    #   memo[kind.name] = kind.codes.count
    #   memo
    # end


    kinds=Kind.all
    @kind_hash={}


    @kind_hash= kinds.map do |kind|
      {kind.name => kind.codes.count}
    end

    @kinds = Kind.all


  end

  def show
    kind_id=params[:id]
    @codes=Code.where(kind_id: kind_id)
    render "codes/index"


  end

end
