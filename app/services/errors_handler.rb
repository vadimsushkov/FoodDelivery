class ErrorsHandler

  def code_400(errors = 'required parameters invalid')
    render_errors(errors, 400)
  end

  def code_401(errors = 'unauthorized access')
    render_errors(errors, 401)
  end

  def code_404(errors = 'not found')
    render_errors('not found', 404)
  end

  def code_422(errors = 'could not save data')
    render_errors(errors, 422)
  end

  def code_500(errors = 'internal server error')
    render_errors(errors, 500)
  end


  def render_errors(errors, status = 400)
    "status: #{status}"
    "error: #{errors}"
  end
end